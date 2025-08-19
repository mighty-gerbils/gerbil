(import ../instance
        ./interface
        ./identity
        :std/interface :std/srfi/1)
(export #t)

(defstruct (transformer monad) (inner))
