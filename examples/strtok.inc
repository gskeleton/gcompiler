/* extract words from a string (words are separated by white space) */
#include <string>

strtok(const string[], &index)
    {
    *var length = strlen(string)

    /* skip leading white space */
    while (index < length && string[index] <= ' ')
        index++

    /* store the word letter for letter */
    *var offset = index                /* save start position of token */
    *var result[20]                    /* string to store the word in */
    while (index < length
           && string[index] > ' '
           && index - offset < sizeof result - 1)
        {
        result[index - offset] = string[index]
        index++
        }
    result[index - offset] = EOS      /* zero-terminate the string */

    return result
    }
