#ifndef __D_LIB_H__	/* { */
#define __D_LIB_H__

/*
 * *D_Lib* Copyright 1996-1999  Anatoly Kardash, anatoly-k@geocities.com
 *
 * Permission to use, copy, modify, and distribute, this software
 * and its documentation for any purpose is hereby granted without
 * fee, provided that the above copyright notice appear in all copies
 * and that both that copyright notice and this permission notice
 * appear in supporting documentation, and that the name of the
 * copyright holders be used in advertising or publicity pertaining
 * to distribution of the software with specific, written prior
 * permission, and that no fee is charged for further distribution
 * of this software, or any modifications thereof. The copyright
 * holder make no representations about the suitability of this
 * software for any purpose. It is provided "as is" without express
 * or implied warranty.
 *
 * THE COPYRIGHT HOLDER DISCLAIM ALL WARRANTIES WITH REGARD TO THIS
 * SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS, IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR
 * ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA, PROFITS, QPA OR GPA,
 * WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
 * ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
 * OF THIS SOFTWARE.
 */

#if defined(_MSC_VER) && defined(USE_DLIB)
#if defined(_DEBUG)
#pragma comment (lib, "TRiASDMD.lib")
#else
#pragma comment (lib, "TRiASDMP.lib")
#endif // defined(_DEBUG)
#endif // defined(_MSC_VER) && defined(USE_DLIB)

#include <d_lib/d_macros.h>
#include <d_lib/d_support_c.h>

#endif	/* } __D_LIB_H__ */