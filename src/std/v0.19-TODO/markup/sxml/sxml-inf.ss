;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Simple 1NF SXML node manipulation interface

(export #t)

;; node element type
(def (sxml-e n)
  (cond
   ((pair? n) (car n))
   ((string? n) '*TEXT*)
   (else #f)))

;; node => list/#f
(def (sxml-attributes n)
  (match n
    ([_ ['@ . attrs] . _] attrs)
    (else #f)))

;; node attribute => value/#f
(def (sxml-attribute-e n key)
  (cond
   ((sxml-attributes n)
    => (cut sxml-attribute-getq key <>))
   (else #f)))

;; attribute list => value
(def (sxml-attribute-getq key attrs)
  (cond
   ((and (pair? attrs) (assq key attrs))
    => cadr)
   (else #f)))

;; node => list of node
(def (sxml-children n)
  (match n
    ([_ . body]
     (match body
       ([['@ . _] . children] children)
       (else body)))
    (else [])))

;; selectors
;; collect all children that satisfy a predicate, with an optional transform
;; once a node satisfies a predicate, its children are not traversed.
(def (sxml-select n predf (mapf values))
  (def (select nodes r K)
    (match nodes
      ([n . rest]
       (if (predf n)
         (select rest (cons (mapf n) r) K)
         (select (sxml-children n) r
                 (cut select rest <> K))))
      (else (K r))))

  (select (sxml-children n) [] reverse))

;; select with context; predicate is binary fun (node [node ...]) => boolean
(def (sxml-select/context n predf (mapf (lambda (x y) x)))
  (def (select nodes ctx r K)
    (match nodes
      ([n . rest]
       (if (predf n ctx)
         (select rest ctx (cons (mapf n ctx) r) K)
         (select (sxml-children n) (cons n ctx) r
                 (cut select rest ctx <> K))))
      (else (K r))))

  (select (sxml-children n) [n] [] reverse))

;; select from immediate children
(def (sxml-select* n predf (mapf values))
  (let lp ((rest (sxml-children n)) (r []))
    (match rest
      ([n . rest]
       (if (predf n)
         (lp rest (cons (mapf n) r))
         (lp rest r)))
      (else (reverse r)))))

;; find first child that satisfies a predicate, using DFS search
;; pred: node => boolean
(def (sxml-find n predf (mapf values))
  (def (find nodes E)
    (match nodes
      ([n . rest]
       (if (predf n)
         (mapf n)
         (find (sxml-children n)
               (lambda () (find rest E)))))
      (else (E))))

  (find (sxml-children n) false))

;; find with context
(def (sxml-find/context n predf (mapf (lambda (x y) x)))
  (def (find nodes ctx E)
    (match nodes
      ([n . rest]
       (if (predf n ctx)
         (mapf n ctx)
         (find (sxml-children n) (cons n ctx)
               (lambda () (find rest ctx E)))))
      (else (E))))

  (find (sxml-children n) [n] false))

;; find in immediate children
(def (sxml-find* n pred (mapf values))
  (cond
   ((find pred (sxml-children n)) => mapf)
   (else #f)))

;;; common selectors
;; element type
(def (sxml-e? el)
  (lambda (n) (eq? (sxml-e n) el)))

;; dom id
(def (sxml-id? id)
  (lambda (n)
    (alet (nid (sxml-attribute-e n 'id))
      (equal? nid id))))

;; dom class
(def (sxml-class? klass)
  (lambda (n)
    (alet (classes (sxml-attribute-e n 'class))
      (and (string? classes)
           (or (string=? classes klass)
               (find (cut string=? klass <>)
                     (string-split classes #\space)))))))
