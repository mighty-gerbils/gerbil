(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771092628)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args173258%_
        (apply make-instance gx#identifier-wrap::t _%$args173258%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args173255%_
        (apply make-instance gx#syntax-wrap::t _%$args173255%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args173252%_
        (apply make-instance gx#syntax-quote::t _%$args173252%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx173250%_) (symbol? (gx#stx-e _%stx173250%_))))
    (define gx#identifier-quote?
      (lambda (_%stx173248%_)
        (if (##structure-direct-instance-of? _%stx173248%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx173248%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx173243%_)
        (if (##structure-direct-instance-of? _%stx173243%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx173243%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx173243%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx173238%_)
        (if (##structure-direct-instance-of? _%stx173238%_ 'gx#syntax-quote::t)
            _%stx173238%_
            (if (##structure-direct-instance-of?
                 _%stx173238%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx173238%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx173212%_)
        (if (##structure-direct-instance-of? _%stx173212%_ 'gx#syntax-wrap::t)
            (let _%lp173215%_ ((_%e173217%_
                                (##unchecked-structure-ref
                                 _%stx173212%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks173218%_
                                (cons (##unchecked-structure-ref
                                       _%stx173212%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e173217%_)
                  (let ((_%$e173221%_
                         (##type-id (##structure-type _%e173217%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e173221%_)
                        (_%lp173215%_
                         (##unchecked-structure-ref _%e173217%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e173217%_ '3 '#f '#f)
                          _%marks173218%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e173221%_)
                                (eq? 'gx#identifier-wrap::t _%$e173221%_))
                            (##unchecked-structure-ref _%e173217%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e173221%_)
                                (_%lp173215%_
                                 (##unchecked-structure-ref
                                  _%e173217%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks173218%_)
                                _%e173217%_))))
                  (if (null? _%marks173218%_)
                      _%e173217%_
                      (if (pair? _%e173217%_)
                          (cons (gx#stx-wrap
                                 (##car _%e173217%_)
                                 _%marks173218%_)
                                (gx#stx-wrap
                                 (##cdr _%e173217%_)
                                 _%marks173218%_))
                          (if (vector? _%e173217%_)
                              (vector-map
                               (lambda (_%g173229173231%_)
                                 (gx#stx-wrap
                                  _%g173229173231%_
                                  _%marks173218%_))
                               _%e173217%_)
                              (if (box? _%e173217%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e173217%_)
                                        _%marks173218%_))
                                  _%e173217%_))))))
            (if (##structure-instance-of? _%stx173212%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173212%_ '1 '#f '#f)
                _%stx173212%_))))
    (define gx#syntax->datum
      (lambda (_%stx173205%_)
        (if (##structure-instance-of? _%stx173205%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx173205%_ '1 '#f '#f))
            (if (pair? _%stx173205%_)
                (cons (gx#syntax->datum (##car _%stx173205%_))
                      (gx#syntax->datum (##cdr _%stx173205%_)))
                (if (vector? _%stx173205%_)
                    (vector-map gx#syntax->datum _%stx173205%_)
                    (if (box? _%stx173205%_)
                        (box (gx#syntax->datum (unbox _%stx173205%_)))
                        _%stx173205%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx173139%_ _%datum173140%_ _%src173141%_ _%quote?173142%_)
        (letrec ((_%wrap-datum173144%_
                  (lambda (_%e173177%_ _%marks173178%_)
                    (_%wrap-inner173146%_
                     _%e173177%_
                     (lambda (_%g173179173181%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g173179173181%_
                        _%src173141%_
                        _%marks173178%_)))))
                 (_%wrap-quote173145%_
                  (lambda (_%e173169%_ _%ctx173170%_ _%marks173171%_)
                    (_%wrap-inner173146%_
                     _%e173169%_
                     (lambda (_%g173172173174%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g173172173174%_
                        _%src173141%_
                        _%ctx173170%_
                        _%marks173171%_)))))
                 (_%wrap-inner173146%_
                  (lambda (_%e173157%_ _%wrap-e173158%_)
                    (let _%recur173160%_ ((_%e173162%_ _%e173157%_))
                      (if (symbol? _%e173162%_)
                          (_%wrap-e173158%_ _%e173162%_)
                          (if (pair? _%e173162%_)
                              (cons (_%recur173160%_ (##car _%e173162%_))
                                    (_%recur173160%_ (##cdr _%e173162%_)))
                              (if (vector? _%e173162%_)
                                  (vector-map _%recur173160%_ _%e173162%_)
                                  (if (box? _%e173162%_)
                                      (box (_%recur173160%_
                                            (unbox _%e173162%_)))
                                      _%e173162%_)))))))
                 (_%wrap-outer173147%_
                  (lambda (_%e173155%_)
                    (if (##structure-instance-of? _%e173155%_ 'gerbil#AST::t)
                        _%e173155%_
                        (##structure gx#AST::t _%e173155%_ _%src173141%_)))))
          (if (##structure-instance-of? _%datum173140%_ 'gerbil#AST::t)
              _%datum173140%_
              (if (not _%stx173139%_)
                  (##structure gx#AST::t _%datum173140%_ _%src173141%_)
                  (if (gx#identifier? _%stx173139%_)
                      (let ((_%stx173152%_ (gx#stx-unwrap__0 _%stx173139%_)))
                        (_%wrap-outer173147%_
                         (if (##structure-direct-instance-of?
                              _%stx173152%_
                              'gx#syntax-quote::t)
                             (if _%quote?173142%_
                                 (_%wrap-quote173145%_
                                  _%datum173140%_
                                  (##unchecked-structure-ref
                                   _%stx173152%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx173152%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum173144%_
                                  _%datum173140%_
                                  (##unchecked-structure-ref
                                   _%stx173152%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum173144%_
                              _%datum173140%_
                              (##unchecked-structure-ref
                               _%stx173152%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx173139%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx173187%_ _%datum173188%_)
        (let* ((_%src173190%_ '#f) (_%quote?173192%_ '#t))
          (gx#datum->syntax__%
           _%stx173187%_
           _%datum173188%_
           _%src173190%_
           _%quote?173192%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx173194%_ _%datum173195%_ _%src173196%_)
        (let ((_%quote?173198%_ '#t))
          (gx#datum->syntax__%
           _%stx173194%_
           _%datum173195%_
           _%src173196%_
           _%quote?173198%_))))
    (define gx#datum->syntax
      (lambda _g173338_
        (let ((_g173339_ (##length _g173338_)))
          (cond ((##fx= _g173339_ 2) (apply gx#datum->syntax__0 _g173338_))
                ((##fx= _g173339_ 3) (apply gx#datum->syntax__1 _g173338_))
                ((##fx= _g173339_ 4) (apply gx#datum->syntax__% _g173338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g173338_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx173105%_ _%marks173106%_)
        (let _%lp173108%_ ((_%e173110%_ _%stx173105%_)
                           (_%marks173111%_ _%marks173106%_)
                           (_%src173112%_ (gx#stx-source _%stx173105%_)))
          (if (##structure-direct-instance-of? _%e173110%_ 'gx#syntax-wrap::t)
              (_%lp173108%_
               (##unchecked-structure-ref _%e173110%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e173110%_ '3 '#f '#f)
                _%marks173111%_)
               (##unchecked-structure-ref _%e173110%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e173110%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks173111%_)
                      _%e173110%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e173110%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e173110%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173110%_ '3 '#f '#f)
                        _%marks173111%_)))
                  (if (##structure-direct-instance-of?
                       _%e173110%_
                       'gx#syntax-quote::t)
                      _%e173110%_
                      (if (##structure-instance-of? _%e173110%_ 'gerbil#AST::t)
                          (_%lp173108%_
                           (##unchecked-structure-ref _%e173110%_ '1 '#f '#f)
                           _%marks173111%_
                           (##unchecked-structure-ref _%e173110%_ '2 '#f '#f))
                          (if (symbol? _%e173110%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e173110%_
                               _%src173112%_
                               (reverse _%marks173111%_))
                              (if (null? _%marks173111%_)
                                  _%e173110%_
                                  (if (pair? _%e173110%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e173110%_)
                                             _%marks173111%_)
                                            (gx#stx-wrap
                                             (##cdr _%e173110%_)
                                             _%marks173111%_))
                                      (if (vector? _%e173110%_)
                                          (vector-map
                                           (lambda (_%g173121173123%_)
                                             (gx#stx-wrap
                                              _%g173121173123%_
                                              _%marks173111%_))
                                           _%e173110%_)
                                          (if (box? _%e173110%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e173110%_)
                                                    _%marks173111%_))
                                              _%e173110%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx173131%_)
        (let ((_%marks173133%_ '()))
          (gx#stx-unwrap__% _%stx173131%_ _%marks173133%_))))
    (define gx#stx-unwrap
      (lambda _g173340_
        (let ((_g173341_ (##length _g173340_)))
          (cond ((##fx= _g173341_ 1) (apply gx#stx-unwrap__0 _g173340_))
                ((##fx= _g173341_ 2) (apply gx#stx-unwrap__% _g173340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g173340_))))))
    (define gx#stx-wrap
      (lambda (_%stx173098%_ _%marks173099%_)
        (foldl__0
         (lambda (_%mark173101%_ _%stx173102%_)
           (gx#stx-apply-mark _%stx173102%_ _%mark173101%_))
         _%stx173098%_
         _%marks173099%_)))
    (define gx#stx-rewrap
      (lambda (_%stx173092%_ _%marks173093%_)
        (foldr__0
         (lambda (_%mark173095%_ _%stx173096%_)
           (gx#stx-apply-mark _%stx173096%_ _%mark173095%_))
         _%stx173092%_
         _%marks173093%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx173086%_ _%mark173087%_)
        (if (##structure-direct-instance-of? _%stx173086%_ 'gx#syntax-quote::t)
            _%stx173086%_
            (if (and (##structure-direct-instance-of?
                      _%stx173086%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark173087%_
                          (##unchecked-structure-ref
                           _%stx173086%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx173086%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx173086%_
                 (gx#stx-source _%stx173086%_)
                 _%mark173087%_)))))
    (define gx#apply-mark
      (lambda (_%mark173050%_ _%marks173051%_)
        (let* ((_%marks173052173060%_ _%marks173051%_)
               (_%else173054173068%_
                (lambda () (cons _%mark173050%_ _%marks173051%_)))
               (_%K173056173074%_
                (lambda (_%rest173071%_ _%hd173072%_)
                  (if (eq? _%mark173050%_ _%hd173072%_)
                      _%rest173071%_
                      (cons _%mark173050%_ _%marks173051%_)))))
          (if (pair? _%marks173052173060%_)
              (let ((_%hd173057173077%_ (##car _%marks173052173060%_))
                    (_%tl173058173079%_ (##cdr _%marks173052173060%_)))
                (let* ((_%hd173082%_ _%hd173057173077%_)
                       (_%rest173084%_ _%tl173058173079%_))
                  (_%K173056173074%_ _%rest173084%_ _%hd173082%_)))
              (_%else173054173068%_)))))
    (define gx#stx-e
      (lambda (_%stx173045%_)
        (if (##structure-direct-instance-of? _%stx173045%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx173045%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx173045%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173045%_ '1 '#f '#f)
                _%stx173045%_))))
    (define gx#stx-source
      (lambda (_%stx173043%_)
        (if (##structure-instance-of? _%stx173043%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx173043%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx173037%_ _%src173038%_)
        (if (or (##structure-instance-of? _%stx173037%_ 'gerbil#AST::t)
                (not _%src173038%_))
            _%stx173037%_
            (##structure gx#AST::t _%stx173037%_ _%src173038%_))))
    (define gx#stx-datum?
      (lambda (_%stx173035%_) (gx#self-quoting? (gx#stx-e _%stx173035%_))))
    (define gx#self-quoting?
      (lambda (_%x173018%_)
        (let ((_%$e173020%_ (immediate? _%x173018%_)))
          (if _%$e173020%_
              _%$e173020%_
              (let ((_%$e173023%_ (number? _%x173018%_)))
                (if _%$e173023%_
                    _%$e173023%_
                    (let ((_%$e173026%_ (keyword? _%x173018%_)))
                      (if _%$e173026%_
                          _%$e173026%_
                          (let ((_%$e173029%_ (string? _%x173018%_)))
                            (if _%$e173029%_
                                _%$e173029%_
                                (let ((_%$e173032%_ (vector? _%x173018%_)))
                                  (if _%$e173032%_
                                      _%$e173032%_
                                      (u8vector? _%x173018%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e173016%_) (boolean? (gx#stx-e _%e173016%_))))
    (define gx#stx-keyword?
      (lambda (_%e173014%_) (keyword? (gx#stx-e _%e173014%_))))
    (define gx#stx-char? (lambda (_%e173012%_) (char? (gx#stx-e _%e173012%_))))
    (define gx#stx-number?
      (lambda (_%e173010%_) (number? (gx#stx-e _%e173010%_))))
    (define gx#stx-fixnum?
      (lambda (_%e173008%_) (fixnum? (gx#stx-e _%e173008%_))))
    (define gx#stx-string?
      (lambda (_%e173006%_) (string? (gx#stx-e _%e173006%_))))
    (define gx#stx-null? (lambda (_%e173004%_) (null? (gx#stx-e _%e173004%_))))
    (define gx#stx-pair? (lambda (_%e173002%_) (pair? (gx#stx-e _%e173002%_))))
    (define gx#stx-list?
      (lambda (_%e172964%_)
        (let* ((_%g172965172974%_ (gx#stx-e _%e172964%_))
               (_%E172968172978%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172965172974%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K172970172994%_
                 (lambda (_%rest172992%_) (gx#stx-list? _%rest172992%_)))
                (_%K172969172984%_
                 (lambda (_%tail172982%_) (null? _%tail172982%_))))
            (if (pair? _%g172965172974%_)
                (let* ((_%tl172972172997%_ (##cdr _%g172965172974%_))
                       (_%rest173000%_ _%tl172972172997%_))
                  (gx#stx-list? _%rest173000%_))
                (let ((_%tail172987%_ _%g172965172974%_))
                  (null? _%tail172987%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e172957%_)
        (let* ((_%e172959%_ (gx#stx-e _%e172957%_))
               (_%$e172961%_ (pair? _%e172959%_)))
          (if _%$e172961%_ _%$e172961%_ (null? _%e172959%_)))))
    (define gx#stx-vector?
      (lambda (_%e172955%_) (vector? (gx#stx-e _%e172955%_))))
    (define gx#stx-box? (lambda (_%e172953%_) (box? (gx#stx-e _%e172953%_))))
    (define gx#stx-eq?
      (lambda (_%x172950%_ _%y172951%_)
        (eq? (gx#stx-e _%x172950%_) (gx#stx-e _%y172951%_))))
    (define gx#stx-eqv?
      (lambda (_%x172947%_ _%y172948%_)
        (eqv? (gx#stx-e _%x172947%_) (gx#stx-e _%y172948%_))))
    (define gx#stx-equal?
      (lambda (_%x172944%_ _%y172945%_)
        (equal? (gx#stx-e _%x172944%_) (gx#stx-e _%y172945%_))))
    (define gx#stx-false? (lambda (_%x172942%_) (not (gx#stx-e _%x172942%_))))
    (define gx#stx-identifier
      (lambda (_%template172939%_ . _%args172940%_)
        (gx#datum->syntax__1
         _%template172939%_
         (apply make-symbol (gx#syntax->datum _%args172940%_))
         (gx#stx-source _%template172939%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx172937%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx172937%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx172932%_)
        (if (##structure-direct-instance-of?
             _%stx172932%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx172932%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx172932%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx172932%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx172932%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx172928%_)
        (let ((_%stx172930%_ (gx#stx-unwrap__0 _%stx172928%_)))
          (if (gx#identifier-quote? _%stx172930%_)
              (##unchecked-structure-ref _%stx172930%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx172883%_)
        (let* ((_%g172884172894%_ (gx#stx-e _%stx172883%_))
               (_%else172887172902%_ (lambda () '#f)))
          (let ((_%K172890172916%_
                 (lambda (_%rest172913%_ _%hd172914%_)
                   (if (gx#identifier? _%hd172914%_)
                       (gx#identifier-list? _%rest172913%_)
                       '#f)))
                (_%K172889172907%_ (lambda () '#t)))
            (let ((_%try-match172886172910%_
                   (lambda ()
                     (if (null? _%g172884172894%_)
                         (_%K172889172907%_)
                         (_%else172887172902%_)))))
              (if (pair? _%g172884172894%_)
                  (let ((_%tl172892172921%_ (##cdr _%g172884172894%_))
                        (_%hd172891172919%_ (##car _%g172884172894%_)))
                    (let ((_%hd172924%_ _%hd172891172919%_)
                          (_%rest172926%_ _%tl172892172921%_))
                      (_%K172890172916%_ _%rest172926%_ _%hd172924%_)))
                  (_%try-match172886172910%_)))))))
    (define gx#genident__%
      (lambda (_%e172863%_ _%src172864%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src172864%_) _%src172864%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e172866%_ (gx#stx-e _%e172863%_)))
              (if (symbol? _%e172866%_) _%e172866%_ 'g)))))
         _%src172864%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e172872%_ 'g) (_%src172874%_ '#f))
          (gx#genident__% _%e172872%_ _%src172874%_))))
    (define gx#genident__1
      (lambda (_%e172876%_)
        (let ((_%src172878%_ '#f))
          (gx#genident__% _%e172876%_ _%src172878%_))))
    (define gx#genident
      (lambda _g173342_
        (let ((_g173343_ (##length _g173342_)))
          (cond ((##fx= _g173343_ 0) (apply gx#genident__0 _g173342_))
                ((##fx= _g173343_ 1) (apply gx#genident__1 _g173342_))
                ((##fx= _g173343_ 2) (apply gx#genident__% _g173342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g173342_))))))
    (define gx#gentemps
      (lambda (_%stx-lst172858%_)
        (gx#stx-map1
         (lambda (_%x172860%_) (gx#genident__% _%x172860%_ _%x172860%_))
         _%stx-lst172858%_)))
    (define gx#syntax->list
      (lambda (_%stx172856%_) (gx#stx-map1 values _%stx172856%_)))
    (define gx#stx-car
      (lambda (_%stx172853%_)
        (declare (safe))
        (car (gx#syntax-e _%stx172853%_))))
    (define gx#stx-cdr
      (lambda (_%stx172850%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx172850%_))))
    (define gx#stx-length
      (lambda (_%stx172815%_)
        (let _%lp172817%_ ((_%rest172819%_ _%stx172815%_) (_%n172820%_ '0))
          (let* ((_%g172821172829%_ (gx#stx-e _%rest172819%_))
                 (_%else172823172837%_ (lambda () _%n172820%_))
                 (_%K172825172842%_
                  (lambda (_%rest172840%_)
                    (_%lp172817%_ _%rest172840%_ (##fx+ _%n172820%_ '1)))))
            (if (pair? _%g172821172829%_)
                (let* ((_%tl172827172845%_ (##cdr _%g172821172829%_))
                       (_%rest172848%_ _%tl172827172845%_))
                  (_%K172825172842%_ _%rest172848%_))
                (_%else172823172837%_))))))
    (define gx#stx-for-each
      (lambda _g173344_
        (let ((_g173345_ (##length _g173344_)))
          (cond ((##fx= _g173345_ 2) (apply gx#stx-for-each1 _g173344_))
                ((##fx= _g173345_ 3) (apply gx#stx-for-each2 _g173344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g173344_))))))
    (define gx#stx-for-each1
      (lambda (_%f172758%_ _%stx172759%_)
        (if (procedure? _%f172758%_)
            '#!void
            (error '"expected procedure" _%f172758%_))
        (let _%lp172761%_ ((_%rest172763%_ _%stx172759%_))
          (let* ((_%g172764172774%_ (gx#syntax-e _%rest172763%_))
                 (_%else172767172782%_
                  (lambda () (_%f172758%_ _%rest172763%_))))
            (let ((_%K172770172796%_
                   (lambda (_%rest172793%_ _%hd172794%_)
                     (_%f172758%_ _%hd172794%_)
                     (_%lp172761%_ _%rest172793%_)))
                  (_%K172769172787%_ (lambda () '#!void)))
              (let ((_%try-match172766172790%_
                     (lambda ()
                       (if (null? _%g172764172774%_)
                           (_%K172769172787%_)
                           (_%else172767172782%_)))))
                (if (pair? _%g172764172774%_)
                    (let ((_%tl172772172801%_ (##cdr _%g172764172774%_))
                          (_%hd172771172799%_ (##car _%g172764172774%_)))
                      (let ((_%hd172804%_ _%hd172771172799%_)
                            (_%rest172806%_ _%tl172772172801%_))
                        (_%K172770172796%_ _%rest172806%_ _%hd172804%_)))
                    (_%try-match172766172790%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f172663%_ _%xstx172664%_ _%ystx172665%_)
        (if (procedure? _%f172663%_)
            '#!void
            (error '"expected procedure" _%f172663%_))
        (let _%lp172667%_ ((_%xrest172669%_ _%xstx172664%_)
                           (_%yrest172670%_ _%ystx172665%_))
          (let* ((_%g172671172681%_ (gx#syntax-e _%xrest172669%_))
                 (_%else172674172689%_ (lambda () '#!void)))
            (let ((_%K172677172746%_
                   (lambda (_%xrest172715%_ _%xhd172716%_)
                     (let* ((_%g172717172724%_ (gx#syntax-e _%yrest172670%_))
                            (_%E172719172728%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172717172724%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172720172734%_
                             (lambda (_%yrest172731%_ _%yhd172732%_)
                               (_%f172663%_ _%xhd172716%_ _%yhd172732%_)
                               (_%lp172667%_
                                _%xrest172715%_
                                _%yrest172731%_))))
                       (if (pair? _%g172717172724%_)
                           (let ((_%hd172721172737%_ (##car _%g172717172724%_))
                                 (_%tl172722172739%_
                                  (##cdr _%g172717172724%_)))
                             (let* ((_%yhd172742%_ _%hd172721172737%_)
                                    (_%yrest172744%_ _%tl172722172739%_))
                               (_%K172720172734%_
                                _%yrest172744%_
                                _%yhd172742%_)))
                           (_%E172719172728%_)))))
                  (_%K172676172709%_
                   (lambda ()
                     (let* ((_%yrest172693172698%_ _%yrest172670%_)
                            (_%E172695172702%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172693172698%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172696172706%_
                             (lambda ()
                               (_%f172663%_ _%xrest172669%_ _%yrest172670%_))))
                       (if (gx#stx-null? _%yrest172693172698%_)
                           (_%E172695172702%_)
                           (_%K172696172706%_))))))
              (let ((_%try-match172673172712%_
                     (lambda ()
                       (if (null? _%g172671172681%_)
                           (_%else172674172689%_)
                           (_%K172676172709%_)))))
                (if (pair? _%g172671172681%_)
                    (let ((_%tl172679172751%_ (##cdr _%g172671172681%_))
                          (_%hd172678172749%_ (##car _%g172671172681%_)))
                      (let ((_%xhd172754%_ _%hd172678172749%_)
                            (_%xrest172756%_ _%tl172679172751%_))
                        (_%K172677172746%_ _%xrest172756%_ _%xhd172754%_)))
                    (_%try-match172673172712%_))))))))
    (define gx#stx-map
      (lambda _g173346_
        (let ((_g173347_ (##length _g173346_)))
          (cond ((##fx= _g173347_ 2) (apply gx#stx-map1 _g173346_))
                ((##fx= _g173347_ 3) (apply gx#stx-map2 _g173346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g173346_))))))
    (define gx#stx-map1
      (lambda (_%f172606%_ _%stx172607%_)
        (if (procedure? _%f172606%_)
            '#!void
            (error '"expected procedure" _%f172606%_))
        (let _%recur172609%_ ((_%rest172611%_ _%stx172607%_))
          (let* ((_%g172612172622%_ (gx#syntax-e _%rest172611%_))
                 (_%else172615172630%_
                  (lambda () (_%f172606%_ _%rest172611%_))))
            (let ((_%K172618172644%_
                   (lambda (_%rest172641%_ _%hd172642%_)
                     (cons (_%f172606%_ _%hd172642%_)
                           (_%recur172609%_ _%rest172641%_))))
                  (_%K172617172635%_ (lambda () '())))
              (let ((_%try-match172614172638%_
                     (lambda ()
                       (if (null? _%g172612172622%_)
                           (_%K172617172635%_)
                           (_%else172615172630%_)))))
                (if (pair? _%g172612172622%_)
                    (let ((_%tl172620172649%_ (##cdr _%g172612172622%_))
                          (_%hd172619172647%_ (##car _%g172612172622%_)))
                      (let ((_%hd172652%_ _%hd172619172647%_)
                            (_%rest172654%_ _%tl172620172649%_))
                        (_%K172618172644%_ _%rest172654%_ _%hd172652%_)))
                    (_%try-match172614172638%_))))))))
    (define gx#stx-map2
      (lambda (_%f172511%_ _%xstx172512%_ _%ystx172513%_)
        (if (procedure? _%f172511%_)
            '#!void
            (error '"expected procedure" _%f172511%_))
        (let _%recur172515%_ ((_%xrest172517%_ _%xstx172512%_)
                              (_%yrest172518%_ _%ystx172513%_))
          (let* ((_%g172519172529%_ (gx#syntax-e _%xrest172517%_))
                 (_%else172522172537%_ (lambda () '())))
            (let ((_%K172525172594%_
                   (lambda (_%xrest172563%_ _%xhd172564%_)
                     (let* ((_%g172565172572%_ (gx#syntax-e _%yrest172518%_))
                            (_%E172567172576%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172565172572%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172568172582%_
                             (lambda (_%yrest172579%_ _%yhd172580%_)
                               (cons (_%f172511%_ _%xhd172564%_ _%yhd172580%_)
                                     (_%recur172515%_
                                      _%xrest172563%_
                                      _%yrest172579%_)))))
                       (if (pair? _%g172565172572%_)
                           (let ((_%hd172569172585%_ (##car _%g172565172572%_))
                                 (_%tl172570172587%_
                                  (##cdr _%g172565172572%_)))
                             (let* ((_%yhd172590%_ _%hd172569172585%_)
                                    (_%yrest172592%_ _%tl172570172587%_))
                               (_%K172568172582%_
                                _%yrest172592%_
                                _%yhd172590%_)))
                           (_%E172567172576%_)))))
                  (_%K172524172557%_
                   (lambda ()
                     (let* ((_%yrest172541172546%_ _%yrest172518%_)
                            (_%E172543172550%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172541172546%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172544172554%_
                             (lambda ()
                               (_%f172511%_ _%xrest172517%_ _%yrest172518%_))))
                       (if (gx#stx-null? _%yrest172541172546%_)
                           (_%E172543172550%_)
                           (_%K172544172554%_))))))
              (let ((_%try-match172521172560%_
                     (lambda ()
                       (if (null? _%g172519172529%_)
                           (_%else172522172537%_)
                           (_%K172524172557%_)))))
                (if (pair? _%g172519172529%_)
                    (let ((_%tl172527172599%_ (##cdr _%g172519172529%_))
                          (_%hd172526172597%_ (##car _%g172519172529%_)))
                      (let ((_%xhd172602%_ _%hd172526172597%_)
                            (_%xrest172604%_ _%tl172527172599%_))
                        (_%K172525172594%_ _%xrest172604%_ _%xhd172602%_)))
                    (_%try-match172521172560%_))))))))
    (define gx#stx-andmap
      (lambda (_%f172461%_ _%stx172462%_)
        (if (procedure? _%f172461%_)
            '#!void
            (error '"expected procedure" _%f172461%_))
        (let _%lp172464%_ ((_%rest172466%_ _%stx172462%_))
          (let* ((_%g172467172477%_ (gx#syntax-e _%rest172466%_))
                 (_%else172470172485%_
                  (lambda () (_%f172461%_ _%rest172466%_))))
            (let ((_%K172473172499%_
                   (lambda (_%rest172496%_ _%hd172497%_)
                     (if (_%f172461%_ _%hd172497%_)
                         (_%lp172464%_ _%rest172496%_)
                         '#f)))
                  (_%K172472172490%_ (lambda () '#t)))
              (let ((_%try-match172469172493%_
                     (lambda ()
                       (if (null? _%g172467172477%_)
                           (_%K172472172490%_)
                           (_%else172470172485%_)))))
                (if (pair? _%g172467172477%_)
                    (let ((_%tl172475172504%_ (##cdr _%g172467172477%_))
                          (_%hd172474172502%_ (##car _%g172467172477%_)))
                      (let ((_%hd172507%_ _%hd172474172502%_)
                            (_%rest172509%_ _%tl172475172504%_))
                        (_%K172473172499%_ _%rest172509%_ _%hd172507%_)))
                    (_%try-match172469172493%_))))))))
    (define gx#stx-ormap
      (lambda (_%f172408%_ _%stx172409%_)
        (if (procedure? _%f172408%_)
            '#!void
            (error '"expected procedure" _%f172408%_))
        (let _%lp172411%_ ((_%rest172413%_ _%stx172409%_))
          (let* ((_%g172414172424%_ (gx#syntax-e _%rest172413%_))
                 (_%else172417172432%_
                  (lambda () (_%f172408%_ _%rest172413%_))))
            (let ((_%K172420172449%_
                   (lambda (_%rest172443%_ _%hd172444%_)
                     (let ((_%$e172446%_ (_%f172408%_ _%hd172444%_)))
                       (if _%$e172446%_
                           _%$e172446%_
                           (_%lp172411%_ _%rest172443%_)))))
                  (_%K172419172437%_ (lambda () '#f)))
              (let ((_%try-match172416172440%_
                     (lambda ()
                       (if (null? _%g172414172424%_)
                           (_%K172419172437%_)
                           (_%else172417172432%_)))))
                (if (pair? _%g172414172424%_)
                    (let ((_%tl172422172454%_ (##cdr _%g172414172424%_))
                          (_%hd172421172452%_ (##car _%g172414172424%_)))
                      (let ((_%hd172457%_ _%hd172421172452%_)
                            (_%rest172459%_ _%tl172422172454%_))
                        (_%K172420172449%_ _%rest172459%_ _%hd172457%_)))
                    (_%try-match172416172440%_))))))))
    (define gx#stx-foldl
      (lambda (_%f172356%_ _%iv172357%_ _%stx172358%_)
        (if (procedure? _%f172356%_)
            '#!void
            (error '"expected procedure" _%f172356%_))
        (let _%lp172360%_ ((_%r172362%_ _%iv172357%_)
                           (_%rest172363%_ _%stx172358%_))
          (let* ((_%g172364172374%_ (gx#syntax-e _%rest172363%_))
                 (_%else172367172382%_
                  (lambda () (_%f172356%_ _%rest172363%_ _%r172362%_))))
            (let ((_%K172370172396%_
                   (lambda (_%rest172393%_ _%hd172394%_)
                     (_%lp172360%_
                      (_%f172356%_ _%hd172394%_ _%r172362%_)
                      _%rest172393%_)))
                  (_%K172369172387%_ (lambda () _%r172362%_)))
              (let ((_%try-match172366172390%_
                     (lambda ()
                       (if (null? _%g172364172374%_)
                           (_%K172369172387%_)
                           (_%else172367172382%_)))))
                (if (pair? _%g172364172374%_)
                    (let ((_%tl172372172401%_ (##cdr _%g172364172374%_))
                          (_%hd172371172399%_ (##car _%g172364172374%_)))
                      (let ((_%hd172404%_ _%hd172371172399%_)
                            (_%rest172406%_ _%tl172372172401%_))
                        (_%K172370172396%_ _%rest172406%_ _%hd172404%_)))
                    (_%try-match172366172390%_))))))))
    (define gx#stx-foldr
      (lambda (_%f172305%_ _%iv172306%_ _%stx172307%_)
        (if (procedure? _%f172305%_)
            '#!void
            (error '"expected procedure" _%f172305%_))
        (let _%recur172309%_ ((_%rest172311%_ _%stx172307%_))
          (let* ((_%g172312172322%_ (gx#syntax-e _%rest172311%_))
                 (_%else172315172330%_
                  (lambda () (_%f172305%_ _%rest172311%_ _%iv172306%_))))
            (let ((_%K172318172344%_
                   (lambda (_%rest172341%_ _%hd172342%_)
                     (_%f172305%_
                      _%hd172342%_
                      (_%recur172309%_ _%rest172341%_))))
                  (_%K172317172335%_ (lambda () _%iv172306%_)))
              (let ((_%try-match172314172338%_
                     (lambda ()
                       (if (null? _%g172312172322%_)
                           (_%K172317172335%_)
                           (_%else172315172330%_)))))
                (if (pair? _%g172312172322%_)
                    (let ((_%tl172320172349%_ (##cdr _%g172312172322%_))
                          (_%hd172319172347%_ (##car _%g172312172322%_)))
                      (let ((_%hd172352%_ _%hd172319172347%_)
                            (_%rest172354%_ _%tl172320172349%_))
                        (_%K172318172344%_ _%rest172354%_ _%hd172352%_)))
                    (_%try-match172314172338%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx172303%_) (gx#stx-foldl cons '() _%stx172303%_)))
    (define gx#stx-last
      (lambda (_%stx172264%_)
        (let _%lp172266%_ ((_%rest172268%_ _%stx172264%_))
          (let* ((_%g172269172277%_ (gx#syntax-e _%rest172268%_))
                 (_%else172271172285%_ (lambda () _%rest172268%_))
                 (_%K172273172291%_
                  (lambda (_%rest172288%_ _%hd172289%_)
                    (if (gx#stx-null? _%rest172288%_)
                        _%hd172289%_
                        (_%lp172266%_ _%rest172288%_)))))
            (if (pair? _%g172269172277%_)
                (let ((_%hd172274172294%_ (##car _%g172269172277%_))
                      (_%tl172275172296%_ (##cdr _%g172269172277%_)))
                  (let* ((_%hd172299%_ _%hd172274172294%_)
                         (_%rest172301%_ _%tl172275172296%_))
                    (_%K172273172291%_ _%rest172301%_ _%hd172299%_)))
                (_%else172271172285%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx172235%_)
        (let _%lp172237%_ ((_%hd172239%_ _%stx172235%_))
          (let* ((_%g172240172247%_ (gx#syntax-e _%hd172239%_))
                 (_%E172242172251%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g172240172247%_
                           '([_ . rest]))
                    '#!void))
                 (_%K172243172256%_
                  (lambda (_%rest172254%_)
                    (if (gx#stx-pair? _%rest172254%_)
                        (_%lp172237%_ _%rest172254%_)
                        _%hd172239%_))))
            (if (pair? _%g172240172247%_)
                (let* ((_%tl172245172259%_ (##cdr _%g172240172247%_))
                       (_%rest172262%_ _%tl172245172259%_))
                  (_%K172243172256%_ _%rest172262%_))
                (_%E172242172251%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx172204%_ _%k172205%_)
        (let _%lp172207%_ ((_%rest172209%_ _%stx172204%_)
                           (_%k172210%_ _%k172205%_))
          (if (fxpositive? _%k172210%_)
              (let* ((_%g172211172218%_ (gx#syntax-e _%rest172209%_))
                     (_%E172213172222%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g172211172218%_
                               '([_ . rest]))
                        '#!void))
                     (_%K172214172227%_
                      (lambda (_%rest172225%_)
                        (_%lp172207%_ _%rest172225%_ (##fx- _%k172210%_ '1)))))
                (if (pair? _%g172211172218%_)
                    (let* ((_%tl172216172230%_ (##cdr _%g172211172218%_))
                           (_%rest172233%_ _%tl172216172230%_))
                      (_%K172214172227%_ _%rest172233%_))
                    (_%E172213172222%_)))
              _%rest172209%_))))
    (define gx#stx-list-ref
      (lambda (_%stx172201%_ _%k172202%_)
        (gx#stx-car (gx#stx-list-tail _%stx172201%_ _%k172202%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx172113%_ _%key?172114%_)
        (if (procedure? _%key?172114%_)
            '#!void
            (error '"expected procedure" _%key?172114%_))
        (let _%lp172116%_ ((_%rest172118%_ _%stx172113%_))
          (let* ((_%g172119172129%_ (gx#stx-e _%rest172118%_))
                 (_%else172122172137%_ (lambda () '#f)))
            (let ((_%K172125172179%_
                   (lambda (_%rest172148%_ _%hd172149%_)
                     (if (_%key?172114%_ _%hd172149%_)
                         (let* ((_%g172150172158%_ (gx#stx-e _%rest172148%_))
                                (_%else172152172166%_ (lambda () '#f))
                                (_%K172154172171%_
                                 (lambda (_%rest172169%_)
                                   (_%lp172116%_ _%rest172169%_))))
                           (if (pair? _%g172150172158%_)
                               (let* ((_%tl172156172174%_
                                       (##cdr _%g172150172158%_))
                                      (_%rest172177%_ _%tl172156172174%_))
                                 (_%lp172116%_ _%rest172177%_))
                               (_%else172152172166%_)))
                         '#f)))
                  (_%K172124172142%_ (lambda () '#t)))
              (let ((_%try-match172121172145%_
                     (lambda ()
                       (if (null? _%g172119172129%_)
                           (_%K172124172142%_)
                           (_%else172122172137%_)))))
                (if (pair? _%g172119172129%_)
                    (let ((_%tl172127172184%_ (##cdr _%g172119172129%_))
                          (_%hd172126172182%_ (##car _%g172119172129%_)))
                      (let ((_%hd172187%_ _%hd172126172182%_)
                            (_%rest172189%_ _%tl172127172184%_))
                        (_%K172125172179%_ _%rest172189%_ _%hd172187%_)))
                    (_%try-match172121172145%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx172194%_)
        (let ((_%key?172196%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx172194%_ _%key?172196%_))))
    (define gx#stx-plist?
      (lambda _g173348_
        (let ((_g173349_ (##length _g173348_)))
          (cond ((##fx= _g173349_ 1) (apply gx#stx-plist?__0 _g173348_))
                ((##fx= _g173349_ 2) (apply gx#stx-plist?__% _g173348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g173348_))))))
    (define gx#stx-getq__%
      (lambda (_%key172031%_ _%stx172032%_ _%key=?172033%_)
        (if (procedure? _%key=?172033%_)
            '#!void
            (error '"expected procedure" _%key=?172033%_))
        (let _%lp172035%_ ((_%rest172037%_ _%stx172032%_))
          (let* ((_%g172038172046%_ (gx#syntax-e _%rest172037%_))
                 (_%else172040172054%_ (lambda () '#f))
                 (_%K172042172088%_
                  (lambda (_%rest172057%_ _%hd172058%_)
                    (let* ((_%g172059172066%_ (gx#syntax-e _%rest172057%_))
                           (_%E172061172070%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g172059172066%_
                                     '([val . rest]))
                              '#!void))
                           (_%K172062172076%_
                            (lambda (_%rest172073%_ _%val172074%_)
                              (if (_%key=?172033%_ _%hd172058%_ _%key172031%_)
                                  _%val172074%_
                                  (_%lp172035%_ _%rest172073%_)))))
                      (if (pair? _%g172059172066%_)
                          (let ((_%hd172063172079%_ (##car _%g172059172066%_))
                                (_%tl172064172081%_ (##cdr _%g172059172066%_)))
                            (let* ((_%val172084%_ _%hd172063172079%_)
                                   (_%rest172086%_ _%tl172064172081%_))
                              (_%K172062172076%_
                               _%rest172086%_
                               _%val172084%_)))
                          (_%E172061172070%_))))))
            (if (pair? _%g172038172046%_)
                (let ((_%hd172043172091%_ (##car _%g172038172046%_))
                      (_%tl172044172093%_ (##cdr _%g172038172046%_)))
                  (let* ((_%hd172096%_ _%hd172043172091%_)
                         (_%rest172098%_ _%tl172044172093%_))
                    (_%K172042172088%_ _%rest172098%_ _%hd172096%_)))
                (_%else172040172054%_))))))
    (define gx#stx-getq__0
      (lambda (_%key172103%_ _%stx172104%_)
        (let ((_%key=?172106%_ gx#stx-eq?))
          (gx#stx-getq__% _%key172103%_ _%stx172104%_ _%key=?172106%_))))
    (define gx#stx-getq
      (lambda _g173350_
        (let ((_g173351_ (##length _g173350_)))
          (cond ((##fx= _g173351_ 2) (apply gx#stx-getq__0 _g173350_))
                ((##fx= _g173351_ 3) (apply gx#stx-getq__% _g173350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g173350_))))))))
