(import ../instance #;"../instance"
        ./interface #;"interface"
        :std/interface :std/srfi/1)
(export #t)

 (defstruct Identity ())
 
 (instance (m Monad) Identity
   ((return a) a)
   ((>>= ma f) (f ma))
   ((>> ma mb) (m.>>= ma (lambda _ mb))))
