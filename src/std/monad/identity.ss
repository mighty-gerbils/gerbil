(import ../instance #;"../instance"
        ./interface #;"interface"
        :std/interface :std/srfi/1)
(export #t)

 (defstruct monad ())
 (def Identity (make-monad))
 
 (instance (m Monad) monad
   ((return a) a)
   ((>>= ma f) (f ma))
   ((>> ma mb) (m.>>= ma (lambda _ mb))))
