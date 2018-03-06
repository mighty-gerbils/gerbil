(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g35130_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35131_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g35132_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35133_|
    (gx#make-syntax-quote
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g35134_|
    (gx#make-syntax-quote 'setq-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35135_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35136_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35137_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g35138_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35139_|
    (gx#make-syntax-quote
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g35140_|
    (gx#make-syntax-quote 'setf-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g35141_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g35130_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g35131_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g35132_|
                   (cons |gerbil/core$<more-sugar>[2]#_g35133_|
                         (cons |gerbil/core$<more-sugar>[2]#_g35134_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g35135_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g35136_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g35137_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g35138_|
                   (cons |gerbil/core$<more-sugar>[2]#_g35139_|
                         (cons |gerbil/core$<more-sugar>[2]#_g35140_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g35141_|)
        'setf-macro
        '#f
        '()
        '())))))
