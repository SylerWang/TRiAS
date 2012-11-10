extern void main(int ,char **);
extern int yyparse(void);
extern char *upper(char *);
extern char *itos(int );
extern void open_files(void);
extern struct file_info *find_file(char *,int *);
extern struct record_info *find_rec(char *,int *);
extern struct field_info *find_fld(char *,int *);
extern struct file_info *add_file(char *,int ,struct id_info *);
extern struct record_info *add_record(char *);
extern void close_record(void);
extern struct field_info *add_field(char *,int ,int ,int ,char *);
extern void close_struct(int ,char *,int );
extern int finish_up(void);
extern void find_key(int ,int );
extern void write_tables(void);
extern int testadr(int ,struct field_info *);
extern void print_tables(void);
extern struct file_info *file_search(int ,int *);
extern int yylex(void);
extern int input(void);
extern void unput(int );
extern void yyerror(char *);
extern void dderror(char *,int );
extern void dds_abort(char *);
