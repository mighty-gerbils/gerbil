;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols
package: gerbil

(import "gambit/threads"
        "gambit/continuations"
        "gambit/bits"
        "gambit/fixnum"
        "gambit/flonum"
        "gambit/random"
        "gambit/hvectors"
        "gambit/ports"
        "gambit/bytes"
        "gambit/readtables"
        "gambit/hash"
        "gambit/exceptions"
        "gambit/os"
        "gambit/system"
        "gambit/foreign"
        "gambit/misc"
        "gambit/exact")

(export (import: "gambit/threads"
                 "gambit/continuations"
                 "gambit/bits"
                 "gambit/fixnum"
                 "gambit/flonum"
                 "gambit/random"
                 "gambit/hvectors"
                 "gambit/ports"
                 "gambit/bytes"
                 "gambit/readtables"
                 "gambit/hash"
                 "gambit/exceptions"
                 "gambit/os"
                 "gambit/system"
                 "gambit/foreign"
                 "gambit/misc"
                 "gambit/exact"))
