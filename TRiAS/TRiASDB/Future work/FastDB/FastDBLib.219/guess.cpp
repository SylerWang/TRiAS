//-< GUESS.CPP >-----------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     10-Dec-98    K.A. Knizhnik  * / [] \ *
//                          Last update: 19-Dec-98    K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Sample of database application: game "Guess an animal"
//-------------------------------------------------------------------*--------*

#include "fastdb.h"

const int maxStrLen = 256;


class Guess { 
  public:
    dbReference<Guess> yes;
    dbReference<Guess> no;
    char const* question;

    TYPE_DESCRIPTOR((FIELD(yes), FIELD(question), FIELD(no)));
};

REGISTER(Guess);

void input(char const* prompt, char* buf, size_t buf_size)
{
    char* p;
    do { 
	printf(prompt);
	*buf = '\0';
	fgets(buf, buf_size, stdin);
	p = buf + strlen(buf);
    } while (p <= buf+1); 
    
    if (*(p-1) == '\n') {
	*--p = '\0';
    }
}

bool askQuestion(char const* question) { 
    char answer[maxStrLen];
    input(question, answer, sizeof answer);
    return *answer == 'y' || *answer == 'Y';
}


dbReference<Guess> whoIsIt(dbReference<Guess> const& parent) { 
    char animal[maxStrLen];
    char difference[maxStrLen];
    input("What is it ? ", animal, sizeof animal);
    input("What is a difference from other ? ", difference, sizeof difference);
    Guess node;
    node.question = animal;
    dbReference<Guess> child = insert(node);
    node.question = difference;
    node.yes = child;
    node.no = parent;
    return insert(node);
}


dbReference<Guess> dialog(dbCursor<Guess>& cur) {
    char question[maxStrLen+16];
    dbCursor<Guess> c(dbCursorForUpdate);
    sprintf(question, "May be %s (y/n) ? ", cur->question);
    if (askQuestion(question)) {
	if (cur->yes == null) { 
	    printf("It was very simple question for me...\n");
	} else { 
	    c.at(cur->yes);
	    dbReference<Guess> clarify = dialog(c);
	    if (clarify != null) { 
		cur->yes = clarify;
		cur.update();
	    }
	}
    } else { 
	if (cur->no == null) { 
	    if (cur->yes == null) { 
		return whoIsIt(cur.currentId());
	    } else {
		cur->no = whoIsIt(null);
		cur.update();
	    } 
	} else { 
	    c.at(cur->no);
	    dbReference<Guess> clarify = dialog(c);
	    if (clarify != null) { 
		cur->no = clarify;
		cur.update();
	    }
	}
    }
    return null; 
}

    


int main()
{
    dbDatabase db; 
    if (db.open("guess")) { 
	dbCursor<Guess> cur(dbCursorForUpdate);
	while (askQuestion("Think of an animal. Ready (y/n) ? ")) { 
	    if (cur.select() != 0) { 
		cur.next(); // first question is in record number 2
		dialog(cur);
	    } else { 
		whoIsIt(null);
	    }
	    db.commit();
	} 
	db.close();
	printf("End of the game\n");
	return EXIT_SUCCESS;
    } else { 
	fprintf(stderr, "Failed to open database\n");
	return EXIT_FAILURE;
    }
}
	    
