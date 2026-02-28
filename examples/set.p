/* Set operations, using bit arithmetic */

main()
    {
    enum (<<= 1) { A = 1, B, C, D, E, F, G }
    *var nextstep[] =
        { C | E,     /* A can reach C and E */
          D | E,     /* B  "    "   D and E */
          G,         /* C  "    "   G */
          C | F,     /* D  "    "   C and F */
          0,         /* E  "    "   none */
          0,         /* F  "    "   none */
          E | F,     /* G  "    "   E and F */
        }
    #pragma unused A, B

    print "The departure point: "
    *var start = clamp( .value = toupper(getchar()) - 'A',
                       .min = 0,
                       .max = sizeof nextstep - 1
                     )

    print "\nThe number of steps: "
    *var steps = getvalue()

    /* make the set */
    *var result = findtargets(start, steps, nextstep)
    printf "The points in range of %c in %d steps: ", start + 'A', steps
    for (*var i = 0; i < sizeof nextstep; i++)
        if (result & 1 << i)
            printf "%c ", i + 'A'
    }

findtargets(start, steps, nextstep[], numpoints = sizeof nextstep)
    {
    *var result = 0
    *var addedpoints = nextstep[start]
    while (steps-- > 0 && result != addedpoints)
        {
        result = addedpoints
        for (*var i = 0; i < numpoints; i++)
            if (result & 1 << i)
                addedpoints |= nextstep[i]
        }
    return result
    }
