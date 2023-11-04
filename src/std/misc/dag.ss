;;; -*- Gerbil -*-
;;; © fare
;;; DAG (directed acyclic graph) algorithms

(export walk-dag)

(import
  (only-in :std/misc/hash hash-ensure-ref)
  (only-in :std/misc/list push! pop!)
  (only-in :std/sugar hash try finally))

;; Recursively walk the DAG of transitive arrows from a set of nodes,
;; possibly register the visiting paths, and
;; compute a synthetic attribute as we go.
;; Typically, walk is (cut <> start-node), or (cut map <> start-node-list).
;; : ((Node -> Attribute) -> Result) \
;;   arrows: (Node -> Arrows) \
;;   arrow-target: (Arrow -> Node) \
;;   synthetic-attribute: ?(Node (List Arrows) (List Attribute) -> Attribute)
;;   register-arrow: (Node Arrow -> Unit) \
;; -> Result
(def (walk-dag
      walk ;; chooses one or many (potentially all) initial nodes from which to start walking
      arrows: arrows ;; annotated arrows from a node
      arrow-target: (arrow-target identity)
      synthetic-attribute: (synthetic-attribute true)
      register-arrow: (register-arrow void))
  (def visited-table (hash))
  (def visiting-table (hash))
  (def visiting-list [])
  (def (visit node)
    (when (hash-key? visiting-table node)
      (error "Circularity in expected DAG for" node visiting-list))
    (hash-put! visiting-table node #t)
    (push! node visiting-list)
    (try
     (hash-ensure-ref visited-table node
       (cut let (arrs (arrows node))
            (synthetic-attribute node arrs
                                 (map (lambda (arrow)
                                        (register-arrow node arrow)
                                        (visit (arrow-target arrow))) arrs))))
     (finally (pop! visiting-list)
              (hash-remove! visiting-table node))))
  (walk visit))
