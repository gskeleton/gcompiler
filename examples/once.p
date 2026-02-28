/* #pragma once was introduced in this pull request: https://github.com/pawn-lang/compiler/pull/463
 * and added in gcompiler v3.10.7.
 *
 * Its purpose is to act as an include guard using only a pragma.
 * Internally, it works similarly to:
 *
 *   #if defined _my_included
 *       #endinput
 *   #endif
 *   #define _my_included
 *
 * In other words, it prevents a file from being included more than once.
 *
 * Additionally, include guards can also be enabled via the command-line
 * using -G with active mode (-G+). 
 * Note: the -G include guard option cannot be activated via #pragma option
 * it requires #pragma once to function.
 */
#pragma once

main()
    {
        ;
    }