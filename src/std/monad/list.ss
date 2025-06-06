(import ../instance #;"../instance"
        ./interface #;"interface"
        :std/interface :std/srfi/1)
(export #t)

(instance Monad :list
 ((return a) [a]) ((>>= ma f) (append-map f ma)))

(instance Fail :list ((fail . _) []))

(instance Plus :list ((plus a b) (append a b)))
(instance Zero :list ((zero) []))
(instance Or :list ((or l1 l2) (if (null? l1) l2 l1)))
