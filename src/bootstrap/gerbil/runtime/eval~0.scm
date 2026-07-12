(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1783878476)
  (begin
    (define __syntax::t
      (let ((__tmp174961 (list)) (__tmp174960 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp174961
         '(e id)
         __tmp174960
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args174765%_
        (apply make-instance __syntax::t _%$args174765%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp174963 (list __syntax::t))
            (__tmp174962 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp174963
         '()
         __tmp174962
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args174762%_
        (apply make-instance __core-form::t _%$args174762%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp174965 (list __core-form::t))
            (__tmp174964 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp174965
         '()
         __tmp174964
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args174759%_
        (apply make-instance __core-expression::t _%$args174759%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp174967 (list __core-form::t))
            (__tmp174966 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp174967
         '()
         __tmp174966
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args174756%_
        (apply make-instance __core-special-form::t _%$args174756%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id174730%_)
        (let* ((_%h174732%_ __core)
               (_%key174735%_
                (let () (declare (not safe)) (__AST-e _%id174730%_)))
               (_%h174742%_
                (let ((_%$obj174739%_ _%h174732%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj174739%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj174739%_)))
                           '#t)
                      _%$obj174739%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj174739%_)))))
               (_%h174744%_ _%h174742%_))
          (declare (not safe))
          (__hash-get _%h174744%_ _%key174735%_))))
    (define __core-bound-id?__%
      (lambda (_%id174713%_ _%is?174714%_)
        (let ((_%$e174716%_ (__core-resolve _%id174713%_)))
          (if _%$e174716%_ (_%is?174714%_ _%$e174716%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id174723%_)
        (let ((_%is?174725%_ true))
          (__core-bound-id?__% _%id174723%_ _%is?174725%_))))
    (define __core-bound-id?
      (lambda _g174968_
        (let ((_g174969_ (let () (declare (not safe)) (##length _g174968_))))
          (cond ((let () (declare (not safe)) (##fx= _g174969_ 1))
                 (apply __core-bound-id?__0 _g174968_))
                ((let () (declare (not safe)) (##fx= _g174969_ 2))
                 (apply __core-bound-id?__% _g174968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g174968_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id174668%_ _%e174669%_ _%make174670%_)
        (let* ((_%h174672%_ __core)
               (_%key174675%_ _%id174668%_)
               (_%value174678%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e174669%_ '__syntax::t))
                    _%e174669%_
                    (_%make174670%_ _%e174669%_ _%id174668%_)))
               (_%h174685%_
                (let ((_%$obj174682%_ _%h174672%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj174682%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj174682%_)))
                           '#t)
                      _%$obj174682%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj174682%_)))))
               (_%h174687%_ _%h174685%_))
          (declare (not safe))
          (__hash-put! _%h174687%_ _%key174675%_ _%value174678%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id174703%_ _%e174704%_)
        (let ((_%make174706%_ make-__syntax))
          (__core-bind-syntax!__% _%id174703%_ _%e174704%_ _%make174706%_))))
    (define __core-bind-syntax!
      (lambda _g174970_
        (let ((_g174971_ (let () (declare (not safe)) (##length _g174970_))))
          (cond ((let () (declare (not safe)) (##fx= _g174971_ 2))
                 (apply __core-bind-syntax!__0 _g174970_))
                ((let () (declare (not safe)) (##fx= _g174971_ 3))
                 (apply __core-bind-syntax!__% _g174970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g174970_))))))
    (define __SRC__%
      (lambda (_%e174648%_ _%src-stx174649%_)
        (if (or (pair? _%e174648%_) (symbol? _%e174648%_))
            (let ((__tmp174972
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx174649%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx174649%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e174648%_ __tmp174972))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e174648%_ 'gerbil#AST::t))
                (let ((__tmp174974
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e174648%_ '1 '#f '#f)))
                      (__tmp174973
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e174648%_)))))
                  (declare (not safe))
                  (##make-source __tmp174974 __tmp174973))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e174648%_))))))
    (define __SRC__0
      (lambda (_%e174660%_)
        (let ((_%src-stx174662%_ '#f))
          (__SRC__% _%e174660%_ _%src-stx174662%_))))
    (define __SRC
      (lambda _g174975_
        (let ((_g174976_ (let () (declare (not safe)) (##length _g174975_))))
          (cond ((let () (declare (not safe)) (##fx= _g174976_ 1))
                 (apply __SRC__0 _g174975_))
                ((let () (declare (not safe)) (##fx= _g174976_ 2))
                 (apply __SRC__% _g174975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g174975_))))))
    (define __locat
      (lambda (_%loc174645%_)
        (if (let () (declare (not safe)) (##locat? _%loc174645%_))
            _%loc174645%_
            '#f)))
    (define __check-values
      (lambda (_%obj174640%_ _%k174641%_)
        (let ((_%count174643%_
               (if (let () (declare (not safe)) (##values? _%obj174640%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj174640%_))
                   '1)))
          (if (fx= _%count174643%_ _%k174641%_)
              '#!void
              (let ((__tmp174978
                     (if (fx< _%count174643%_ _%k174641%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp174977
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj174640%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj174640%_))
                         _%obj174640%_)))
                (declare (not safe))
                (error __tmp174978 __tmp174977 _%k174641%_))))))
    (define __compile
      (lambda (_%stx174609%_)
        (let* ((_%$e174611%_ _%stx174609%_)
               (_%$%$E174613174619%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174611%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174611%_))
              (let* ((_%$%$tgt174614174622%_
                      (let () (declare (not safe)) (__AST-e _%$e174611%_)))
                     (_%$%$hd174615174625%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174614174622%_)))
                     (_%$%$tl174616174628%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174614174622%_)))
                     (_%form174632%_ _%$%$hd174615174625%_)
                     (_%$e174634%_ (__core-resolve _%form174632%_)))
                (if _%$e174634%_
                    ((##structure-ref _%$e174634%_ '1 __syntax::t '#f)
                     _%stx174609%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx174609%_
                       _%form174632%_))))
              (_%$%$E174613174619%_)))))
    (define __compile-error__%
      (lambda (_%stx174596%_ _%detail174597%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx174596%_
           _%detail174597%_))))
    (define __compile-error__0
      (lambda (_%stx174602%_)
        (let ((_%detail174604%_ '#f))
          (__compile-error__% _%stx174602%_ _%detail174604%_))))
    (define __compile-error
      (lambda _g174979_
        (let ((_g174980_ (let () (declare (not safe)) (##length _g174979_))))
          (cond ((let () (declare (not safe)) (##fx= _g174980_ 1))
                 (apply __compile-error__0 _g174979_))
                ((let () (declare (not safe)) (##fx= _g174980_ 2))
                 (apply __compile-error__% _g174979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g174979_))))))
    (define __compile-ignore%
      (lambda (_%stx174593%_) (__SRC__% ''#!void _%stx174593%_)))
    (define __compile-begin%
      (lambda (_%stx174568%_)
        (let* ((_%$e174570%_ _%stx174568%_)
               (_%$%$E174572174578%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174570%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174570%_))
              (let* ((_%$%$tgt174573174581%_
                      (let () (declare (not safe)) (__AST-e _%$e174570%_)))
                     (_%$%$hd174574174584%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174573174581%_)))
                     (_%$%$tl174575174587%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174573174581%_)))
                     (_%body174591%_ _%$%$tl174575174587%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body174591%_))
                 _%stx174568%_))
              (_%$%$E174572174578%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx174543%_)
        (let* ((_%$e174545%_ _%stx174543%_)
               (_%$%$E174547174553%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174545%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174545%_))
              (let* ((_%$%$tgt174548174556%_
                      (let () (declare (not safe)) (__AST-e _%$e174545%_)))
                     (_%$%$hd174549174559%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174548174556%_)))
                     (_%$%$tl174550174562%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174548174556%_)))
                     (_%body174566%_ _%$%$tl174550174562%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body174566%_)))
                 _%stx174543%_))
              (_%$%$E174547174553%_)))))
    (define __compile-import%
      (lambda (_%stx174518%_)
        (let* ((_%$e174520%_ _%stx174518%_)
               (_%$%$E174522174528%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174520%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174520%_))
              (let* ((_%$%$tgt174523174531%_
                      (let () (declare (not safe)) (__AST-e _%$e174520%_)))
                     (_%$%$hd174524174534%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174523174531%_)))
                     (_%$%$tl174525174537%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174523174531%_)))
                     (_%body174541%_ _%$%$tl174525174537%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body174541%_ '())) '()))
                 _%stx174518%_))
              (_%$%$E174522174528%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx174465%_)
        (let* ((_%$e174467%_ _%stx174465%_)
               (_%$%$E174469174481%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174467%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174467%_))
              (let* ((_%$%$tgt174470174484%_
                      (let () (declare (not safe)) (__AST-e _%$e174467%_)))
                     (_%$%$hd174471174487%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174470174484%_)))
                     (_%$%$tl174472174490%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174470174484%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174472174490%_))
                    (let* ((_%$%$tgt174473174494%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174472174490%_)))
                           (_%$%$hd174474174497%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174473174494%_)))
                           (_%$%$tl174475174500%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174473174494%_)))
                           (_%ann174504%_ _%$%$hd174474174497%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174475174500%_))
                          (let* ((_%$%$tgt174476174506%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174475174500%_)))
                                 (_%$%$hd174477174509%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174476174506%_)))
                                 (_%$%$tl174478174512%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174476174506%_)))
                                 (_%expr174516%_ _%$%$hd174477174509%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174478174512%_))
                                        '())
                                (__compile _%expr174516%_)
                                (_%$%$E174469174481%_)))
                          (_%$%$E174469174481%_)))
                    (_%$%$E174469174481%_)))
              (_%$%$E174469174481%_)))))
    (define __compile-define-values%
      (lambda (_%stx174356%_)
        (let* ((_%$e174358%_ _%stx174356%_)
               (_%$%$E174360174372%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174358%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174358%_))
              (let* ((_%$%$tgt174361174375%_
                      (let () (declare (not safe)) (__AST-e _%$e174358%_)))
                     (_%$%$hd174362174378%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174361174375%_)))
                     (_%$%$tl174363174381%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174361174375%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174363174381%_))
                    (let* ((_%$%$tgt174364174385%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174363174381%_)))
                           (_%$%$hd174365174388%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174364174385%_)))
                           (_%$%$tl174366174391%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174364174385%_)))
                           (_%hd174395%_ _%$%$hd174365174388%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174366174391%_))
                          (let* ((_%$%$tgt174367174397%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174366174391%_)))
                                 (_%$%$hd174368174400%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174367174397%_)))
                                 (_%$%$tl174369174403%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174367174397%_)))
                                 (_%expr174407%_ _%$%$hd174368174400%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174369174403%_))
                                        '())
                                (let* ((_%$e174409%_ _%hd174395%_)
                                       (_%$%$E174411174452%_
                                        (lambda ()
                                          (let ((_%$%$E174412174437%_
                                                 (lambda ()
                                                   (let* ((_%$%$E174413174424%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e174409%_))))
                  (_%ids174427%_ _%hd174395%_)
                  (_%len174429%_ (length _%ids174427%_))
                  (_%tmp174431%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp174431%_
                                       (cons (__compile _%expr174407%_) '())))
                           _%stx174356%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp174431%_
                                             (cons _%len174429%_ '())))
                                 _%stx174356%_)
                                (let ((__tmp174981
                                       (let ((__tmp174983
                                              (lambda (_%id174434%_
                                                       _%k174435%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id174434%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id174434%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp174431%_
                                           (cons _%k174435%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx174356%_)
                                                    '#f)))
                                             (__tmp174982
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len174429%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp174983
                                          _%ids174427%_
                                          __tmp174982))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp174981)))))
              _%stx174356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e174409%_))
                                                (let* ((_%$%$tgt174414174440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e174409%_)))
                                                       (_%$%$hd174415174443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt174414174440%_)))
                                                       (_%$%$tl174416174446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt174414174440%_)))
                                                       (_%id174450%_
                                                        _%$%$hd174415174443%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl174416174446%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id174450%_)
                           (cons (__compile _%expr174407%_) '())))
               _%stx174356%_)
              (_%$%$E174412174437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E174412174437%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e174409%_))
                                      (let* ((_%$%$tgt174417174455%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e174409%_)))
                                             (_%$%$hd174418174458%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt174417174455%_)))
                                             (_%$%$tl174419174461%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt174417174455%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd174418174458%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl174419174461%_))
                                                        '())
                                                (__compile _%expr174407%_)
                                                (_%$%$E174411174452%_))
                                            (_%$%$E174411174452%_)))
                                      (_%$%$E174411174452%_)))
                                (_%$%$E174360174372%_)))
                          (_%$%$E174360174372%_)))
                    (_%$%$E174360174372%_)))
              (_%$%$E174360174372%_)))))
    (define __compile-head-id
      (lambda (_%e174354%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e174354%_))
             _%e174354%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd174311%_)
        (let _%recur174313%_ ((_%rest174315%_ _%hd174311%_))
          (let* ((_%$e174317%_ _%rest174315%_)
                 (_%$%$E174319174337%_
                  (lambda ()
                    (let ((_%$%$E174320174334%_
                           (lambda ()
                             (let* ((_%$%$E174321174329%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e174317%_))))
                                    (_%tail174332%_ _%$e174317%_))
                               (__compile-head-id _%tail174332%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174317%_))
                                  '())
                          '()
                          (_%$%$E174320174334%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e174317%_))
                (let* ((_%$%$tgt174322174340%_
                        (let () (declare (not safe)) (__AST-e _%$e174317%_)))
                       (_%$%$hd174323174343%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt174322174340%_)))
                       (_%$%$tl174324174346%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt174322174340%_)))
                       (_%hd174350%_ _%$%$hd174323174343%_)
                       (_%rest174352%_ _%$%$tl174324174346%_))
                  (cons (__compile-head-id _%hd174350%_)
                        (_%recur174313%_ _%rest174352%_)))
                (_%$%$E174319174337%_))))))
    (define __compile-lambda%
      (lambda (_%stx174258%_)
        (let* ((_%$e174260%_ _%stx174258%_)
               (_%$%$E174262174274%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174260%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174260%_))
              (let* ((_%$%$tgt174263174277%_
                      (let () (declare (not safe)) (__AST-e _%$e174260%_)))
                     (_%$%$hd174264174280%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174263174277%_)))
                     (_%$%$tl174265174283%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174263174277%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174265174283%_))
                    (let* ((_%$%$tgt174266174287%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174265174283%_)))
                           (_%$%$hd174267174290%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174266174287%_)))
                           (_%$%$tl174268174293%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174266174287%_)))
                           (_%hd174297%_ _%$%$hd174267174290%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174268174293%_))
                          (let* ((_%$%$tgt174269174299%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174268174293%_)))
                                 (_%$%$hd174270174302%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174269174299%_)))
                                 (_%$%$tl174271174305%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174269174299%_)))
                                 (_%body174309%_ _%$%$hd174270174302%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174271174305%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd174297%_)
                                             (cons (__compile _%body174309%_)
                                                   '())))
                                 _%stx174258%_)
                                (_%$%$E174262174274%_)))
                          (_%$%$E174262174274%_)))
                    (_%$%$E174262174274%_)))
              (_%$%$E174262174274%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx174023%_)
        (letrec ((_%variadic?174025%_
                  (lambda (_%hd174223%_)
                    (let* ((_%$e174225%_ _%hd174223%_)
                           (_%$%$E174227174243%_
                            (lambda ()
                              (let ((_%$%$E174228174240%_
                                     (lambda ()
                                       (let ((_%$%$E174229174237%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e174225%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e174225%_))
                                            '())
                                    '#f
                                    (_%$%$E174228174240%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174225%_))
                          (let* ((_%$%$tgt174230174246%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174225%_)))
                                 (_%$%$hd174231174249%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174230174246%_)))
                                 (_%$%$tl174232174252%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174230174246%_)))
                                 (_%rest174256%_ _%$%$tl174232174252%_))
                            (_%variadic?174025%_ _%rest174256%_))
                          (_%$%$E174227174243%_)))))
                 (_%arity174026%_
                  (lambda (_%hd174161%_)
                    (let _%lp174163%_ ((_%rest174165%_ _%hd174161%_)
                                       (_%k174166%_ '0))
                      (let* ((_%$e174168%_ _%rest174165%_)
                             (_%$%$E174170174181%_
                              (lambda ()
                                (let ((_%$%$E174171174178%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e174168%_)))))
                                  _%k174166%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e174168%_))
                            (let* ((_%$%$tgt174172174184%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e174168%_)))
                                   (_%$%$hd174173174187%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt174172174184%_)))
                                   (_%$%$tl174174174190%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt174172174184%_)))
                                   (_%rest174194%_ _%$%$tl174174174190%_))
                              (_%lp174163%_
                               _%rest174194%_
                               (let ((_%x174196%_ _%k174166%_))
                                 (if (fixnum? _%x174196%_)
                                     (let ((_%x174201%_ _%x174196%_))
                                       (declare (not safe))
                                       (__fx1+ _%x174201%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x174196%_)
                                       '#!void)))))
                            (_%$%$E174170174181%_))))))
                 (_%generate174027%_
                  (lambda (_%rest174088%_ _%args174089%_ _%len174090%_)
                    (let* ((_%$e174092%_ _%rest174088%_)
                           (_%$%$E174094174105%_
                            (lambda ()
                              (let ((_%$%$E174095174102%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e174092%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args174089%_ '())))
                                 _%stx174023%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174092%_))
                          (let* ((_%$%$tgt174096174108%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174092%_)))
                                 (_%$%$hd174097174111%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174096174108%_)))
                                 (_%$%$tl174098174114%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174096174108%_)))
                                 (_%clause174118%_ _%$%$hd174097174111%_)
                                 (_%rest174120%_ _%$%$tl174098174114%_)
                                 (_%$e174122%_ _%clause174118%_)
                                 (_%$%$E174124174133%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e174122%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e174122%_))
                                (let* ((_%$%$tgt174125174136%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e174122%_)))
                                       (_%$%$hd174126174139%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt174125174136%_)))
                                       (_%$%$tl174127174142%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt174125174136%_)))
                                       (_%hd174146%_ _%$%$hd174126174139%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl174127174142%_))
                                      (let* ((_%$%$tgt174128174148%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl174127174142%_)))
                                             (_%$%$hd174129174151%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt174128174148%_)))
                                             (_%$%$tl174130174154%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt174128174148%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl174130174154%_))
                                                    '())
                                            (let ((_%clen174158%_
                                                   (_%arity174026%_
                                                    _%hd174146%_))
                                                  (_%cmp174159%_
                                                   (if (_%variadic?174025%_
                                                        _%hd174146%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp174159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len174090%_ (cons _%clen174158%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause174118%_))
                                      (cons _%args174089%_ '())))
                          _%stx174023%_)
                         (cons (_%generate174027%_
                                _%rest174120%_
                                _%args174089%_
                                _%len174090%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx174023%_))
                                            (_%$%$E174124174133%_)))
                                      (_%$%$E174124174133%_)))
                                (_%$%$E174124174133%_)))
                          (_%$%$E174094174105%_))))))
          (let* ((_%$e174029%_ _%stx174023%_)
                 (_%$%$E174031174063%_
                  (lambda ()
                    (let ((_%$%$E174032174045%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e174029%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174029%_))
                          (let* ((_%$%$tgt174033174048%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174029%_)))
                                 (_%$%$hd174034174051%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174033174048%_)))
                                 (_%$%$tl174035174054%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174033174048%_)))
                                 (_%clauses174058%_ _%$%$tl174035174054%_))
                            (let ((_%args174060%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx174023%_))
                                  (_%len174061%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx174023%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args174060%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len174061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args174060%_ '()))
                                         _%stx174023%_)
                                        '()))
                            '())
                      (cons (_%generate174027%_
                             _%clauses174058%_
                             _%args174060%_
                             _%len174061%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx174023%_)
                                                 '())))
                               _%stx174023%_)))
                          (_%$%$E174032174045%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e174029%_))
                (let* ((_%$%$tgt174036174066%_
                        (let () (declare (not safe)) (__AST-e _%$e174029%_)))
                       (_%$%$hd174037174069%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt174036174066%_)))
                       (_%$%$tl174038174072%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt174036174066%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl174038174072%_))
                      (let* ((_%$%$tgt174039174076%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl174038174072%_)))
                             (_%$%$hd174040174079%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt174039174076%_)))
                             (_%$%$tl174041174082%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt174039174076%_)))
                             (_%clause174086%_ _%$%$hd174040174079%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl174041174082%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause174086%_))
                            (_%$%$E174031174063%_)))
                      (_%$%$E174031174063%_)))
                (_%$%$E174031174063%_))))))
    (define __compile-let-form
      (lambda (_%stx173792%_ _%compile-simple173793%_ _%compile-values173794%_)
        (letrec ((_%simple-bind?173796%_
                  (lambda (_%hd173981%_)
                    (let* ((_%$%hd173982173992%_ _%hd173981%_)
                           (_%$%else173985174000%_ (lambda () '#f)))
                      (let ((_%$%K173988174013%_ (lambda (_%id174011%_) '#t))
                            (_%$%K173987174005%_ (lambda () '#t)))
                        (let ((_%$%try-match173984174008%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd173982173992%_ '#f))
                                     (_%$%K173987174005%_)
                                     (_%$%else173985174000%_)))))
                          (if (pair? _%$%hd173982173992%_)
                              (let ((_%$%tl173990174018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd173982173992%_)))
                                    (_%$%hd173989174016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd173982173992%_))))
                                (if (null? _%$%tl173990174018%_)
                                    (let ((_%id174021%_ _%$%hd173989174016%_))
                                      (_%$%K173988174013%_ _%id174021%_))
                                    (_%$%try-match173984174008%_)))
                              (_%$%try-match173984174008%_)))))))
                 (_%car-e173797%_
                  (lambda (_%hd173979%_)
                    (if (pair? _%hd173979%_)
                        (let () (declare (not safe)) (##car _%hd173979%_))
                        _%hd173979%_))))
          (let* ((_%$e173799%_ _%stx173792%_)
                 (_%$%$E173801173944%_
                  (lambda ()
                    (let ((_%$%$E173802173824%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e173799%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e173799%_))
                          (let* ((_%$%$tgt173803173827%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e173799%_)))
                                 (_%$%$hd173804173830%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173803173827%_)))
                                 (_%$%$tl173805173833%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173803173827%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl173805173833%_))
                                (let* ((_%$%$tgt173806173837%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173805173833%_)))
                                       (_%$%$hd173807173840%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt173806173837%_)))
                                       (_%$%$tl173808173843%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt173806173837%_)))
                                       (_%hd173847%_ _%$%$hd173807173840%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl173808173843%_))
                                      (let* ((_%$%$tgt173809173849%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl173808173843%_)))
                                             (_%$%$hd173810173852%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt173809173849%_)))
                                             (_%$%$tl173811173855%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt173809173849%_)))
                                             (_%body173859%_
                                              _%$%$hd173810173852%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl173811173855%_))
                                                    '())
                                            (let* ((_%hd-ids173899%_
                                                    (map (lambda (_%bind173861%_)
                                                           (let* ((_%$e173863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind173861%_)
                          (_%$%$E173865173874%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e173863%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e173863%_))
                         (let* ((_%$%$tgt173866173877%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e173863%_)))
                                (_%$%$hd173867173880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt173866173877%_)))
                                (_%$%$tl173868173883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt173866173877%_)))
                                (_%ids173887%_ _%$%$hd173867173880%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl173868173883%_))
                               (let* ((_%$%$tgt173869173889%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl173868173883%_)))
                                      (_%$%$hd173870173892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt173869173889%_)))
                                      (_%$%$tl173871173895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt173869173889%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl173871173895%_))
                                             '())
                                     _%ids173887%_
                                     (_%$%$E173865173874%_)))
                               (_%$%$E173865173874%_)))
                         (_%$%$E173865173874%_))))
                 _%hd173847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs173939%_
                                                    (map (lambda (_%bind173901%_)
                                                           (let* ((_%$e173903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind173901%_)
                          (_%$%$E173905173914%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e173903%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e173903%_))
                         (let* ((_%$%$tgt173906173917%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e173903%_)))
                                (_%$%$hd173907173920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt173906173917%_)))
                                (_%$%$tl173908173923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt173906173917%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl173908173923%_))
                               (let* ((_%$%$tgt173909173927%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl173908173923%_)))
                                      (_%$%$hd173910173930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt173909173927%_)))
                                      (_%$%$tl173911173933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt173909173927%_)))
                                      (_%expr173937%_ _%$%$hd173910173930%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl173911173933%_))
                                             '())
                                     (__compile _%expr173937%_)
                                     (_%$%$E173905173914%_)))
                               (_%$%$E173905173914%_)))
                         (_%$%$E173905173914%_))))
                 _%hd173847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body173941%_
                                                    (__compile
                                                     _%body173859%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?173796%_
                                                     _%hd-ids173899%_))
                                                  (_%compile-simple173793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e173797%_
                                                            _%hd-ids173899%_))
                                                   _%exprs173939%_
                                                   _%body173941%_)
                                                  (_%compile-values173794%_
                                                   _%hd-ids173899%_
                                                   _%exprs173939%_
                                                   _%body173941%_)))
                                            (_%$%$E173802173824%_)))
                                      (_%$%$E173802173824%_)))
                                (_%$%$E173802173824%_)))
                          (_%$%$E173802173824%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e173799%_))
                (let* ((_%$%$tgt173812173947%_
                        (let () (declare (not safe)) (__AST-e _%$e173799%_)))
                       (_%$%$hd173813173950%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt173812173947%_)))
                       (_%$%$tl173814173953%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt173812173947%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl173814173953%_))
                      (let* ((_%$%$tgt173815173957%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl173814173953%_)))
                             (_%$%$hd173816173960%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt173815173957%_)))
                             (_%$%$tl173817173963%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt173815173957%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd173816173960%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl173817173963%_))
                                (let* ((_%$%$tgt173818173967%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173817173963%_)))
                                       (_%$%$hd173819173970%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt173818173967%_)))
                                       (_%$%$tl173820173973%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt173818173967%_)))
                                       (_%body173977%_ _%$%$hd173819173970%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl173820173973%_))
                                              '())
                                      (__compile _%body173977%_)
                                      (_%$%$E173801173944%_)))
                                (_%$%$E173801173944%_))
                            (_%$%$E173801173944%_)))
                      (_%$%$E173801173944%_)))
                (_%$%$E173801173944%_))))))
    (define __compile-let-values%
      (lambda (_%stx173604%_)
        (letrec ((_%compile-simple173606%_
                  (lambda (_%hd-ids173788%_ _%exprs173789%_ _%body173790%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp174984
                                        (map __compile-head-id
                                             _%hd-ids173788%_)))
                                   (declare (not safe))
                                   (##map list __tmp174984 _%exprs173789%_))
                                 (cons _%body173790%_ '())))
                     _%stx173604%_)))
                 (_%compile-values173607%_
                  (lambda (_%hd-ids173703%_ _%exprs173704%_ _%body173705%_)
                    (let _%lp173707%_ ((_%rest173709%_ _%hd-ids173703%_)
                                       (_%exprs173710%_ _%exprs173704%_)
                                       (_%bind173711%_ '())
                                       (_%post173712%_ '()))
                      (let* ((_%$%rest173713173727%_ _%rest173709%_)
                             (_%$%else173716173735%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind173711%_)
                                             (cons (_%compile-post173608%_
                                                    _%post173712%_
                                                    _%body173705%_)
                                                   '())))
                                 _%stx173604%_))))
                        (let ((_%$%K173721173771%_
                               (lambda (_%rest173768%_ _%id173769%_)
                                 (_%lp173707%_
                                  _%rest173768%_
                                  (cdr _%exprs173710%_)
                                  (cons (cons (__compile-head-id _%id173769%_)
                                              (cons (car _%exprs173710%_) '()))
                                        _%bind173711%_)
                                  _%post173712%_)))
                              (_%$%K173718173753%_
                               (lambda (_%rest173739%_ _%hd173740%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173740%_))
                                     (_%lp173707%_
                                      _%rest173739%_
                                      (cdr _%exprs173710%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd173740%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs173710%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind173711%_)
                                      _%post173712%_)
                                     (if (list? _%hd173740%_)
                                         (let* ((_%len173744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd173740%_)))
                                                (_%tmp173746%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp173707%_
                                            _%rest173739%_
                                            (cdr _%exprs173710%_)
                                            (cons (cons _%tmp173746%_
                                                        (cons (car _%exprs173710%_)
                                                              '()))
                                                  _%bind173711%_)
                                            (cons (cons _%tmp173746%_
                                                        (cons _%len173744%_
                                                              (let ((__tmp174986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id173749%_ _%k173750%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id173749%_))
                                   (cons (__SRC__0 _%id173749%_) _%k173750%_)
                                   '#f)))
                            (__tmp174985
                             (let ()
                               (declare (not safe))
                               (##iota _%len173744%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp174986 _%hd173740%_ __tmp174985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post173712%_)))
                                         (__compile-error__%
                                          _%stx173604%_
                                          _%hd173740%_))))))
                          (if (pair? _%$%rest173713173727%_)
                              (let ((_%$%tl173723173776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest173713173727%_)))
                                    (_%$%hd173722173774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest173713173727%_))))
                                (if (pair? _%$%hd173722173774%_)
                                    (let ((_%$%tl173725173781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd173722173774%_)))
                                          (_%$%hd173724173779%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd173722173774%_))))
                                      (if (null? _%$%tl173725173781%_)
                                          (let ((_%id173784%_
                                                 _%$%hd173724173779%_)
                                                (_%rest173786%_
                                                 _%$%tl173723173776%_))
                                            (_%$%K173721173771%_
                                             _%rest173786%_
                                             _%id173784%_))
                                          (let ((_%hd173761%_
                                                 _%$%hd173722173774%_)
                                                (_%rest173763%_
                                                 _%$%tl173723173776%_))
                                            (_%$%K173718173753%_
                                             _%rest173763%_
                                             _%hd173761%_))))
                                    (let ((_%hd173761%_ _%$%hd173722173774%_)
                                          (_%rest173763%_
                                           _%$%tl173723173776%_))
                                      (_%$%K173718173753%_
                                       _%rest173763%_
                                       _%hd173761%_))))
                              (_%$%else173716173735%_)))))))
                 (_%compile-post173608%_
                  (lambda (_%post173610%_ _%body173611%_)
                    (let _%lp173613%_ ((_%rest173615%_ _%post173610%_)
                                       (_%check173616%_ '())
                                       (_%bind173617%_ '()))
                      (let* ((_%$%rest173618173630%_ _%rest173615%_)
                             (_%$%else173620173638%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp174987
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind173617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body173611%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx173604%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp174987
                                          _%check173616%_)))
                                 _%stx173604%_)))
                             (_%$%K173622173677%_
                              (lambda (_%rest173641%_
                                       _%init173642%_
                                       _%len173643%_
                                       _%tmp173644%_)
                                (_%lp173613%_
                                 _%rest173641%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173644%_
                                                    (cons _%len173643%_ '())))
                                        _%stx173604%_)
                                       _%check173616%_)
                                 (let ((__tmp174988
                                        (lambda (_%hd173646%_ _%r173647%_)
                                          (let* ((_%$%hd173648173655%_
                                                  _%hd173646%_)
                                                 (_%$%E173650173659%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd173648173655%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K173651173665%_
                                                  (lambda (_%k173662%_
                                                           _%id173663%_)
                                                    (cons (cons _%id173663%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp173644%_
                                          (cons _%k173662%_ '())))
                              '()))
                  _%r173647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd173648173655%_)
                                                (let ((_%$%hd173652173668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd173648173655%_)))
                                                      (_%$%tl173653173670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd173648173655%_))))
                                                  (let* ((_%id173673%_
                                                          _%$%hd173652173668%_)
                                                         (_%k173675%_
                                                          _%$%tl173653173670%_))
                                                    (_%$%K173651173665%_
                                                     _%k173675%_
                                                     _%id173673%_)))
                                                (_%$%E173650173659%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp174988
                                    _%bind173617%_
                                    _%init173642%_))))))
                        (if (pair? _%$%rest173618173630%_)
                            (let ((_%$%hd173623173680%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest173618173630%_)))
                                  (_%$%tl173624173682%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest173618173630%_))))
                              (if (pair? _%$%hd173623173680%_)
                                  (let ((_%$%hd173625173685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd173623173680%_)))
                                        (_%$%tl173626173687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd173623173680%_))))
                                    (let ((_%tmp173690%_ _%$%hd173625173685%_))
                                      (if (pair? _%$%tl173626173687%_)
                                          (let ((_%$%hd173627173692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl173626173687%_)))
                                                (_%$%tl173628173694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl173626173687%_))))
                                            (let* ((_%len173697%_
                                                    _%$%hd173627173692%_)
                                                   (_%init173699%_
                                                    _%$%tl173628173694%_)
                                                   (_%rest173701%_
                                                    _%$%tl173624173682%_))
                                              (_%$%K173622173677%_
                                               _%rest173701%_
                                               _%init173699%_
                                               _%len173697%_
                                               _%tmp173690%_)))
                                          (_%$%else173620173638%_))))
                                  (_%$%else173620173638%_)))
                            (_%$%else173620173638%_)))))))
          (__compile-let-form
           _%stx173604%_
           _%compile-simple173606%_
           _%compile-values173607%_))))
    (define __compile-letrec-values%
      (lambda (_%stx173401%_)
        (letrec ((_%compile-simple173403%_
                  (lambda (_%hd-ids173600%_ _%exprs173601%_ _%body173602%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp174989
                                        (map __compile-head-id
                                             _%hd-ids173600%_)))
                                   (declare (not safe))
                                   (##map list __tmp174989 _%exprs173601%_))
                                 (cons _%body173602%_ '())))
                     _%stx173401%_)))
                 (_%compile-values173404%_
                  (lambda (_%hd-ids173511%_ _%exprs173512%_ _%body173513%_)
                    (let _%lp173515%_ ((_%rest173517%_ _%hd-ids173511%_)
                                       (_%exprs173518%_ _%exprs173512%_)
                                       (_%pre173519%_ '())
                                       (_%bind173520%_ '())
                                       (_%post173521%_ '()))
                      (let* ((_%$%rest173522173536%_ _%rest173517%_)
                             (_%$%else173525173544%_
                              (lambda ()
                                (_%compile-inner173405%_
                                 _%pre173519%_
                                 _%bind173520%_
                                 _%post173521%_
                                 _%body173513%_))))
                        (let ((_%$%K173530173583%_
                               (lambda (_%rest173580%_ _%id173581%_)
                                 (_%lp173515%_
                                  _%rest173580%_
                                  (cdr _%exprs173518%_)
                                  _%pre173519%_
                                  (cons (cons (__compile-head-id _%id173581%_)
                                              (cons (car _%exprs173518%_) '()))
                                        _%bind173520%_)
                                  _%post173521%_)))
                              (_%$%K173527173565%_
                               (lambda (_%rest173548%_ _%hd173549%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173549%_))
                                     (_%lp173515%_
                                      _%rest173548%_
                                      (cdr _%exprs173518%_)
                                      _%pre173519%_
                                      (cons (cons (__compile-head-id
                                                   _%hd173549%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs173518%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind173520%_)
                                      _%post173521%_)
                                     (if (list? _%hd173549%_)
                                         (let* ((_%len173553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd173549%_)))
                                                (_%tmp173555%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp173515%_
                                            _%rest173548%_
                                            (cdr _%exprs173518%_)
                                            (let ((__tmp174990
                                                   (lambda (_%id173558%_
                                                            _%r173559%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id173558%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id173558%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r173559%_)
                 _%r173559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp174990
                                               _%pre173519%_
                                               _%hd173549%_))
                                            (cons (cons _%tmp173555%_
                                                        (cons (car _%exprs173518%_)
                                                              '()))
                                                  _%bind173520%_)
                                            (cons (cons _%tmp173555%_
                                                        (cons _%len173553%_
                                                              (let ((__tmp174992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id173561%_ _%k173562%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id173561%_))
                                   (cons (__SRC__0 _%id173561%_) _%k173562%_)
                                   '#f)))
                            (__tmp174991
                             (let ()
                               (declare (not safe))
                               (##iota _%len173553%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp174992 _%hd173549%_ __tmp174991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post173521%_)))
                                         (__compile-error__%
                                          _%stx173401%_
                                          _%hd173549%_))))))
                          (if (pair? _%$%rest173522173536%_)
                              (let ((_%$%tl173532173588%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest173522173536%_)))
                                    (_%$%hd173531173586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest173522173536%_))))
                                (if (pair? _%$%hd173531173586%_)
                                    (let ((_%$%tl173534173593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd173531173586%_)))
                                          (_%$%hd173533173591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd173531173586%_))))
                                      (if (null? _%$%tl173534173593%_)
                                          (let ((_%id173596%_
                                                 _%$%hd173533173591%_)
                                                (_%rest173598%_
                                                 _%$%tl173532173588%_))
                                            (_%$%K173530173583%_
                                             _%rest173598%_
                                             _%id173596%_))
                                          (let ((_%hd173573%_
                                                 _%$%hd173531173586%_)
                                                (_%rest173575%_
                                                 _%$%tl173532173588%_))
                                            (_%$%K173527173565%_
                                             _%rest173575%_
                                             _%hd173573%_))))
                                    (let ((_%hd173573%_ _%$%hd173531173586%_)
                                          (_%rest173575%_
                                           _%$%tl173532173588%_))
                                      (_%$%K173527173565%_
                                       _%rest173575%_
                                       _%hd173573%_))))
                              (_%$%else173525173544%_)))))))
                 (_%compile-inner173405%_
                  (lambda (_%pre173506%_
                           _%bind173507%_
                           _%post173508%_
                           _%body173509%_)
                    (if (null? _%pre173506%_)
                        (_%compile-bind173406%_
                         _%bind173507%_
                         _%post173508%_
                         _%body173509%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre173506%_)
                                     (cons (_%compile-bind173406%_
                                            _%bind173507%_
                                            _%post173508%_
                                            _%body173509%_)
                                           '())))
                         _%stx173401%_))))
                 (_%compile-bind173406%_
                  (lambda (_%bind173502%_ _%post173503%_ _%body173504%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind173502%_)
                                 (cons (_%compile-post173407%_
                                        _%post173503%_
                                        _%body173504%_)
                                       '())))
                     _%stx173401%_)))
                 (_%compile-post173407%_
                  (lambda (_%post173409%_ _%body173410%_)
                    (let _%lp173412%_ ((_%rest173414%_ _%post173409%_)
                                       (_%check173415%_ '())
                                       (_%bind173416%_ '()))
                      (let* ((_%$%rest173417173429%_ _%rest173414%_)
                             (_%$%else173419173437%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp174993
                                              (let ((__tmp174994
                                                     (cons _%body173410%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp174994
                                                 _%bind173416%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp174993
                                          _%check173415%_)))
                                 _%stx173401%_)))
                             (_%$%K173421173476%_
                              (lambda (_%rest173440%_
                                       _%init173441%_
                                       _%len173442%_
                                       _%tmp173443%_)
                                (_%lp173412%_
                                 _%rest173440%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173443%_
                                                    (cons _%len173442%_ '())))
                                        _%stx173401%_)
                                       _%check173415%_)
                                 (let ((__tmp174995
                                        (lambda (_%hd173445%_ _%r173446%_)
                                          (let* ((_%$%hd173447173454%_
                                                  _%hd173445%_)
                                                 (_%$%E173449173458%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd173447173454%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K173450173464%_
                                                  (lambda (_%k173461%_
                                                           _%id173462%_)
                                                    (cons (cons 'set!
                                                                (cons _%id173462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp173443%_
                                                (cons _%k173461%_ '())))
                                    '())))
                  _%r173446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd173447173454%_)
                                                (let ((_%$%hd173451173467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd173447173454%_)))
                                                      (_%$%tl173452173469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd173447173454%_))))
                                                  (let* ((_%id173472%_
                                                          _%$%hd173451173467%_)
                                                         (_%k173474%_
                                                          _%$%tl173452173469%_))
                                                    (_%$%K173450173464%_
                                                     _%k173474%_
                                                     _%id173472%_)))
                                                (_%$%E173449173458%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp174995
                                    _%bind173416%_
                                    _%init173441%_))))))
                        (if (pair? _%$%rest173417173429%_)
                            (let ((_%$%hd173422173479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest173417173429%_)))
                                  (_%$%tl173423173481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest173417173429%_))))
                              (if (pair? _%$%hd173422173479%_)
                                  (let ((_%$%hd173424173484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd173422173479%_)))
                                        (_%$%tl173425173486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd173422173479%_))))
                                    (let ((_%tmp173489%_ _%$%hd173424173484%_))
                                      (if (pair? _%$%tl173425173486%_)
                                          (let ((_%$%hd173426173491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl173425173486%_)))
                                                (_%$%tl173427173493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl173425173486%_))))
                                            (let* ((_%len173496%_
                                                    _%$%hd173426173491%_)
                                                   (_%init173498%_
                                                    _%$%tl173427173493%_)
                                                   (_%rest173500%_
                                                    _%$%tl173423173481%_))
                                              (_%$%K173421173476%_
                                               _%rest173500%_
                                               _%init173498%_
                                               _%len173496%_
                                               _%tmp173489%_)))
                                          (_%$%else173419173437%_))))
                                  (_%$%else173419173437%_)))
                            (_%$%else173419173437%_)))))))
          (__compile-let-form
           _%stx173401%_
           _%compile-simple173403%_
           _%compile-values173404%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx173152%_)
        (letrec ((_%compile-simple173154%_
                  (lambda (_%hd-ids173397%_ _%exprs173398%_ _%body173399%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp174996
                                        (map __compile-head-id
                                             _%hd-ids173397%_)))
                                   (declare (not safe))
                                   (##map list __tmp174996 _%exprs173398%_))
                                 (cons _%body173399%_ '())))
                     _%stx173152%_)))
                 (_%compile-values173155%_
                  (lambda (_%hd-ids173304%_ _%exprs173305%_ _%body173306%_)
                    (let _%lp173308%_ ((_%rest173310%_ _%hd-ids173304%_)
                                       (_%exprs173311%_ _%exprs173305%_)
                                       (_%bind173312%_ '())
                                       (_%post173313%_ '()))
                      (let* ((_%$%rest173314173328%_ _%rest173310%_)
                             (_%$%else173317173336%_
                              (lambda ()
                                (_%compile-bind173156%_
                                 _%bind173312%_
                                 _%post173313%_
                                 _%body173306%_))))
                        (let ((_%$%K173322173380%_
                               (lambda (_%rest173375%_ _%hd173376%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173376%_))
                                     (let ((_%id173378%_
                                            (__SRC__0 _%hd173376%_)))
                                       (_%lp173308%_
                                        _%rest173375%_
                                        (cdr _%exprs173311%_)
                                        (cons (cons _%id173378%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind173312%_)
                                        (cons (cons _%id173378%_
                                                    (cons (car _%exprs173311%_)
                                                          '()))
                                              _%post173313%_)))
                                     (_%lp173308%_
                                      _%rest173375%_
                                      (cdr _%exprs173311%_)
                                      _%bind173312%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs173311%_)
                                                        '()))
                                            _%post173313%_)))))
                              (_%$%K173319173360%_
                               (lambda (_%rest173340%_ _%hd173341%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173341%_))
                                     (let ((_%id173344%_
                                            (__SRC__0 _%hd173341%_)))
                                       (_%lp173308%_
                                        _%rest173340%_
                                        (cdr _%exprs173311%_)
                                        (cons (cons _%id173344%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind173312%_)
                                        (cons (cons _%id173344%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs173311%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post173313%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd173341%_))
                                         (if (list? _%hd173341%_)
                                             (let* ((_%len173348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd173341%_)))
                                                    (_%tmp173350%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp173308%_
                                                _%rest173340%_
                                                (cdr _%exprs173311%_)
                                                (let ((__tmp174997
                                                       (lambda (_%id173353%_
                                                                _%r173354%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id173353%_))
                     (cons (cons (__SRC__0 _%id173353%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r173354%_)
                     _%r173354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp174997
                                                   _%bind173312%_
                                                   _%hd173341%_))
                                                (cons (cons _%tmp173350%_
                                                            (cons (car _%exprs173311%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len173348%_
                                (let ((__tmp174999
                                       (lambda (_%id173356%_ _%k173357%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id173356%_))
                                             (cons (__SRC__0 _%id173356%_)
                                                   _%k173357%_)
                                             '#f)))
                                      (__tmp174998
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len173348%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp174999
                                   _%hd173341%_
                                   __tmp174998)))))
              _%post173313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx173152%_
                                              _%hd173341%_))
                                         (_%lp173308%_
                                          _%rest173340%_
                                          (cdr _%exprs173311%_)
                                          _%bind173312%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs173311%_)
                                                            '()))
                                                _%post173313%_)))))))
                          (if (pair? _%$%rest173314173328%_)
                              (let ((_%$%tl173324173385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest173314173328%_)))
                                    (_%$%hd173323173383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest173314173328%_))))
                                (if (pair? _%$%hd173323173383%_)
                                    (let ((_%$%tl173326173390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd173323173383%_)))
                                          (_%$%hd173325173388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd173323173383%_))))
                                      (if (null? _%$%tl173326173390%_)
                                          (let ((_%hd173393%_
                                                 _%$%hd173325173388%_)
                                                (_%rest173395%_
                                                 _%$%tl173324173385%_))
                                            (_%$%K173322173380%_
                                             _%rest173395%_
                                             _%hd173393%_))
                                          (let ((_%hd173368%_
                                                 _%$%hd173323173383%_)
                                                (_%rest173370%_
                                                 _%$%tl173324173385%_))
                                            (_%$%K173319173360%_
                                             _%rest173370%_
                                             _%hd173368%_))))
                                    (let ((_%hd173368%_ _%$%hd173323173383%_)
                                          (_%rest173370%_
                                           _%$%tl173324173385%_))
                                      (_%$%K173319173360%_
                                       _%rest173370%_
                                       _%hd173368%_))))
                              (_%$%else173317173336%_)))))))
                 (_%compile-bind173156%_
                  (lambda (_%bind173300%_ _%post173301%_ _%body173302%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind173300%_)
                                 (cons (_%compile-post173157%_
                                        _%post173301%_
                                        _%body173302%_)
                                       '())))
                     _%stx173152%_)))
                 (_%compile-post173157%_
                  (lambda (_%post173159%_ _%body173160%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp175000
                                  (let ((__tmp175002
                                         (lambda (_%hd173162%_ _%r173163%_)
                                           (let* ((_%$%hd173164173187%_
                                                   _%hd173162%_)
                                                  (_%$%E173168173191%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%hd173164173187%_
                                                              '([#f expr])
                                                              '([id expr])
                                                              '([tmp
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         expr
                         len
                         .
                         init])))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%$%K173181173285%_
                                                    (lambda (_%expr173283%_)
                                                      (cons _%expr173283%_
                                                            _%r173163%_)))
                                                   (_%$%K173176173263%_
                                                    (lambda (_%expr173260%_
                                                             _%id173261%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id173261%_ (cons _%expr173260%_ '())))
                     _%stx173152%_)
                    _%r173163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K173169173230%_
                                                    (lambda (_%init173195%_
                                                             _%len173196%_
                                                             _%expr173197%_
                                                             _%tmp173198%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp173198%_
                                             (cons _%expr173197%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173198%_
                                                    (cons _%len173196%_ '())))
                                        _%stx173152%_)
                                       (let ((__tmp175003
                                              (map (lambda (_%hd173200%_)
                                                     (let* ((_%$%hd173201173208%_
                                                             _%hd173200%_)
                                                            (_%$%E173203173212%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%$%hd173201173208%_
                                '([id . k])))
                       '#!void))
                    (_%$%K173204173218%_
                     (lambda (_%k173215%_ _%id173216%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id173216%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp173198%_
                                                      (cons _%k173215%_ '())))
                                          '())))
                        _%stx173152%_))))
               (if (pair? _%$%hd173201173208%_)
                   (let ((_%$%hd173205173221%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd173201173208%_)))
                         (_%$%tl173206173223%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd173201173208%_))))
                     (let* ((_%id173226%_ _%$%hd173205173221%_)
                            (_%k173228%_ _%$%tl173206173223%_))
                       (_%$%K173204173218%_ _%k173228%_ _%id173226%_)))
                   (_%$%E173203173212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init173195%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp175003)))))
                     _%stx173152%_)
                    _%r173163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match174858174859%_
                                                       (lambda (_%$%hd173170173233%_
                                                                _%$%tl173171173235%_
                                                                _%$%hd173172173240%_
                                                                _%$%tl173173173242%_)
                                                         (let ((_%tmp173238%_
                                                                _%$%hd173170173233%_)
                                                               (_%expr173245%_
                                                                _%$%hd173172173240%_))
                                                           (_%$%E173168173191%_))))
                                                      (_%__match174852174853%_
                                                       (lambda (_%$%hd173170173233%_
                                                                _%$%tl173171173235%_)
                                                         (let ((_%tmp173238%_
                                                                _%$%hd173170173233%_))
                                                           (_%$%E173168173191%_)))))
                                                 (if (pair? _%$%hd173164173187%_)
                                                     (let ((_%$%tl173183173290%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%hd173164173187%_)))
                                                           (_%$%hd173182173288%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%hd173164173187%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%$%hd173182173288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%$%tl173183173290%_)
                       (let ((_%$%tl173185173295%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl173183173290%_)))
                             (_%$%hd173184173293%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl173183173290%_))))
                         (if (null? _%$%tl173185173295%_)
                             (let ((_%expr173298%_ _%$%hd173184173293%_))
                               (_%$%K173181173285%_ _%expr173298%_))
                             (if (pair? _%$%tl173185173295%_)
                                 (let ((_%$%tl173175173249%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl173185173295%_)))
                                       (_%$%hd173174173247%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl173185173295%_))))
                                   (let ((_%tmp173238%_ _%$%hd173182173288%_)
                                         (_%expr173245%_ _%$%hd173184173293%_)
                                         (_%len173252%_ _%$%hd173174173247%_)
                                         (_%init173254%_ _%$%tl173175173249%_))
                                     (_%$%K173169173230%_
                                      _%init173254%_
                                      _%len173252%_
                                      _%expr173245%_
                                      _%tmp173238%_)))
                                 (_%__match174858174859%_
                                  _%$%hd173182173288%_
                                  _%$%tl173183173290%_
                                  _%$%hd173184173293%_
                                  _%$%tl173185173295%_))))
                       (_%__match174852174853%_
                        _%$%hd173182173288%_
                        _%$%tl173183173290%_))
                   (if (pair? _%$%tl173183173290%_)
                       (let ((_%$%tl173180173275%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl173183173290%_)))
                             (_%$%hd173179173273%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl173183173290%_))))
                         (if (null? _%$%tl173180173275%_)
                             (let ((_%id173271%_ _%$%hd173182173288%_)
                                   (_%expr173278%_ _%$%hd173179173273%_))
                               (_%$%K173176173263%_
                                _%expr173278%_
                                _%id173271%_))
                             (if (pair? _%$%tl173180173275%_)
                                 (let ((_%$%tl173175173249%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl173180173275%_)))
                                       (_%$%hd173174173247%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl173180173275%_))))
                                   (let ((_%tmp173238%_ _%$%hd173182173288%_)
                                         (_%expr173245%_ _%$%hd173179173273%_)
                                         (_%len173252%_ _%$%hd173174173247%_)
                                         (_%init173254%_ _%$%tl173175173249%_))
                                     (_%$%K173169173230%_
                                      _%init173254%_
                                      _%len173252%_
                                      _%expr173245%_
                                      _%tmp173238%_)))
                                 (_%__match174858174859%_
                                  _%$%hd173182173288%_
                                  _%$%tl173183173290%_
                                  _%$%hd173179173273%_
                                  _%$%tl173180173275%_))))
                       (_%__match174852174853%_
                        _%$%hd173182173288%_
                        _%$%tl173183173290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E173168173191%_)))))))
                                        (__tmp175001 (list _%body173160%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp175002
                                     __tmp175001
                                     _%post173159%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp175000)))
                     _%stx173152%_))))
          (__compile-let-form
           _%stx173152%_
           _%compile-simple173154%_
           _%compile-values173155%_))))
    (define __compile-call%
      (lambda (_%stx173112%_)
        (let* ((_%$e173114%_ _%stx173112%_)
               (_%$%$E173116173125%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173114%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173114%_))
              (let* ((_%$%$tgt173117173128%_
                      (let () (declare (not safe)) (__AST-e _%$e173114%_)))
                     (_%$%$hd173118173131%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173117173128%_)))
                     (_%$%$tl173119173134%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173117173128%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173119173134%_))
                    (let* ((_%$%$tgt173120173138%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173119173134%_)))
                           (_%$%$hd173121173141%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173120173138%_)))
                           (_%$%$tl173122173144%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173120173138%_)))
                           (_%rator173148%_ _%$%$hd173121173141%_)
                           (_%rands173150%_ _%$%$tl173122173144%_))
                      (__SRC__%
                       (cons (__compile _%rator173148%_)
                             (map __compile _%rands173150%_))
                       _%stx173112%_))
                    (_%$%$E173116173125%_)))
              (_%$%$E173116173125%_)))))
    (define __compile-ref%
      (lambda (_%stx173074%_)
        (let* ((_%$e173076%_ _%stx173074%_)
               (_%$%$E173078173087%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173076%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173076%_))
              (let* ((_%$%$tgt173079173090%_
                      (let () (declare (not safe)) (__AST-e _%$e173076%_)))
                     (_%$%$hd173080173093%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173079173090%_)))
                     (_%$%$tl173081173096%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173079173090%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173081173096%_))
                    (let* ((_%$%$tgt173082173100%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173081173096%_)))
                           (_%$%$hd173083173103%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173082173100%_)))
                           (_%$%$tl173084173106%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173082173100%_)))
                           (_%id173110%_ _%$%$hd173083173103%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173084173106%_))
                                  '())
                          (__SRC__% _%id173110%_ _%stx173074%_)
                          (_%$%$E173078173087%_)))
                    (_%$%$E173078173087%_)))
              (_%$%$E173078173087%_)))))
    (define __compile-setq%
      (lambda (_%stx173021%_)
        (let* ((_%$e173023%_ _%stx173021%_)
               (_%$%$E173025173037%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173023%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173023%_))
              (let* ((_%$%$tgt173026173040%_
                      (let () (declare (not safe)) (__AST-e _%$e173023%_)))
                     (_%$%$hd173027173043%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173026173040%_)))
                     (_%$%$tl173028173046%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173026173040%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173028173046%_))
                    (let* ((_%$%$tgt173029173050%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173028173046%_)))
                           (_%$%$hd173030173053%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173029173050%_)))
                           (_%$%$tl173031173056%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173029173050%_)))
                           (_%id173060%_ _%$%$hd173030173053%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173031173056%_))
                          (let* ((_%$%$tgt173032173062%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173031173056%_)))
                                 (_%$%$hd173033173065%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173032173062%_)))
                                 (_%$%$tl173034173068%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173032173062%_)))
                                 (_%expr173072%_ _%$%$hd173033173065%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173034173068%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id173060%_
                                              _%stx173021%_)
                                             (cons (__compile _%expr173072%_)
                                                   '())))
                                 _%stx173021%_)
                                (_%$%$E173025173037%_)))
                          (_%$%$E173025173037%_)))
                    (_%$%$E173025173037%_)))
              (_%$%$E173025173037%_)))))
    (define __compile-if%
      (lambda (_%stx172953%_)
        (let* ((_%$e172955%_ _%stx172953%_)
               (_%$%$E172957172972%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e172955%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e172955%_))
              (let* ((_%$%$tgt172958172975%_
                      (let () (declare (not safe)) (__AST-e _%$e172955%_)))
                     (_%$%$hd172959172978%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt172958172975%_)))
                     (_%$%$tl172960172981%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt172958172975%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl172960172981%_))
                    (let* ((_%$%$tgt172961172985%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl172960172981%_)))
                           (_%$%$hd172962172988%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt172961172985%_)))
                           (_%$%$tl172963172991%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt172961172985%_)))
                           (_%p172995%_ _%$%$hd172962172988%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl172963172991%_))
                          (let* ((_%$%$tgt172964172997%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl172963172991%_)))
                                 (_%$%$hd172965173000%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt172964172997%_)))
                                 (_%$%$tl172966173003%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt172964172997%_)))
                                 (_%t173007%_ _%$%$hd172965173000%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl172966173003%_))
                                (let* ((_%$%$tgt172967173009%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl172966173003%_)))
                                       (_%$%$hd172968173012%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt172967173009%_)))
                                       (_%$%$tl172969173015%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt172967173009%_)))
                                       (_%f173019%_ _%$%$hd172968173012%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl172969173015%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p172995%_)
                                                   (cons (__compile
                                                          _%t173007%_)
                                                         (cons (__compile
                                                                _%f173019%_)
                                                               '()))))
                                       _%stx172953%_)
                                      (_%$%$E172957172972%_)))
                                (_%$%$E172957172972%_)))
                          (_%$%$E172957172972%_)))
                    (_%$%$E172957172972%_)))
              (_%$%$E172957172972%_)))))
    (define __compile-quote%
      (lambda (_%stx172915%_)
        (let* ((_%$e172917%_ _%stx172915%_)
               (_%$%$E172919172928%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e172917%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e172917%_))
              (let* ((_%$%$tgt172920172931%_
                      (let () (declare (not safe)) (__AST-e _%$e172917%_)))
                     (_%$%$hd172921172934%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt172920172931%_)))
                     (_%$%$tl172922172937%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt172920172931%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl172922172937%_))
                    (let* ((_%$%$tgt172923172941%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl172922172937%_)))
                           (_%$%$hd172924172944%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt172923172941%_)))
                           (_%$%$tl172925172947%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt172923172941%_)))
                           (_%e172951%_ _%$%$hd172924172944%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl172925172947%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e172951%_))
                                       '()))
                           _%stx172915%_)
                          (_%$%$E172919172928%_)))
                    (_%$%$E172919172928%_)))
              (_%$%$E172919172928%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx172877%_)
        (let* ((_%$e172879%_ _%stx172877%_)
               (_%$%$E172881172890%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e172879%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e172879%_))
              (let* ((_%$%$tgt172882172893%_
                      (let () (declare (not safe)) (__AST-e _%$e172879%_)))
                     (_%$%$hd172883172896%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt172882172893%_)))
                     (_%$%$tl172884172899%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt172882172893%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl172884172899%_))
                    (let* ((_%$%$tgt172885172903%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl172884172899%_)))
                           (_%$%$hd172886172906%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt172885172903%_)))
                           (_%$%$tl172887172909%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt172885172903%_)))
                           (_%e172913%_ _%$%$hd172886172906%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl172887172909%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e172913%_ '()))
                           _%stx172877%_)
                          (_%$%$E172881172890%_)))
                    (_%$%$E172881172890%_)))
              (_%$%$E172881172890%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
