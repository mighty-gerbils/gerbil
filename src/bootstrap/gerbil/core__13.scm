(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g31799_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31800_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31801_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31802_|
    (gx#make-syntax-quote
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31803_|
    (gx#make-syntax-quote 'setq-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31804_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31805_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31806_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31807_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31808_|
    (gx#make-syntax-quote
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31809_|
    (gx#make-syntax-quote 'setf-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31810_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g31799_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g31800_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g31801_|
                   (cons |gerbil/core$<more-sugar>[2]#_g31802_|
                         (cons |gerbil/core$<more-sugar>[2]#_g31803_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g31804_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g31805_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g31806_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g31807_|
                   (cons |gerbil/core$<more-sugar>[2]#_g31808_|
                         (cons |gerbil/core$<more-sugar>[2]#_g31809_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g31810_|)
        'setf-macro
        '#f
        '()
        '())))))
