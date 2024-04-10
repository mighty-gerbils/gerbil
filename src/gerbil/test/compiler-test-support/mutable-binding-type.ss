(def var [])

(def (get-var) => :list
  var)

(def (set-var! (o : :list))
  (set! var o))

(def (set-vars! . args)
  (set! var args))
