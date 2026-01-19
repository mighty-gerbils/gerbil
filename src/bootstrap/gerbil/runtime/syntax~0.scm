(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1768863411)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args124142%_
        (apply make-instance SyntaxError::t _%$args124142%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self123860%_ _%port123861%_)
        (let ((_%self123864%_ _%self123860%_))
          (letrec ((_%location123875%_
                    (lambda ()
                      (letrec ((_%from-irritants124017%_
                                (lambda ()
                                  (let _%lp124102%_ ((_%rest124104%_
                                                      (##unchecked-structure-ref
                                                       _%self123864%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124105124113%_
                                            _%rest124104%_)
                                           (_%else124107124121%_
                                            (lambda () '#f))
                                           (_%K124109124130%_
                                            (lambda (_%rest124124%_
                                                     _%hd124125%_)
                                              (let ((_%$e124127%_
                                                     (__AST-source
                                                      _%hd124125%_)))
                                                (if _%$e124127%_
                                                    _%$e124127%_
                                                    (_%lp124102%_
                                                     _%rest124124%_))))))
                                      (if (pair? _%rest124105124113%_)
                                          (let ((_%hd124110124133%_
                                                 (##car _%rest124105124113%_))
                                                (_%tl124111124135%_
                                                 (##cdr _%rest124105124113%_)))
                                            (let* ((_%hd124138%_
                                                    _%hd124110124133%_)
                                                   (_%rest124140%_
                                                    _%tl124111124135%_))
                                              (_%K124109124130%_
                                               _%rest124140%_
                                               _%hd124138%_)))
                                          (_%else124107124121%_))))))
                               (_%from-context124018%_
                                (lambda ()
                                  (let _%lp124024%_ ((_%rest124026%_
                                                      (##unchecked-structure-ref
                                                       _%self123864%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124027124035%_
                                            _%rest124026%_)
                                           (_%else124029124043%_
                                            (lambda () '#f))
                                           (_%K124031124089%_
                                            (lambda (_%rest124046%_
                                                     _%hd124047%_)
                                              (let* ((_%hd124048124058%_
                                                      _%hd124047%_)
                                                     (_%else124050124066%_
                                                      (lambda ()
                                                        (_%lp124024%_
                                                         _%rest124046%_)))
                                                     (_%K124052124074%_
                                                      (lambda (_%loc124069%_)
                                                        (let ((_%$e124071%_
                                                               (__AST-source
                                                                _%loc124069%_)))
                                                          (if _%$e124071%_
                                                              _%$e124071%_
                                                              (_%lp124024%_
                                                               _%rest124046%_))))))
                                                (if (pair? _%hd124048124058%_)
                                                    (let ((_%hd124053124077%_
                                                           (##car _%hd124048124058%_))
                                                          (_%tl124054124079%_
                                                           (##cdr _%hd124048124058%_)))
                                                      (if (##eq? _%hd124053124077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl124054124079%_)
                      (let ((_%hd124055124082%_ (##car _%tl124054124079%_))
                            (_%tl124056124084%_ (##cdr _%tl124054124079%_)))
                        (let ((_%loc124087%_ _%hd124055124082%_))
                          (if (null? _%tl124056124084%_)
                              (_%K124052124074%_ _%loc124087%_)
                              (_%else124050124066%_))))
                      (_%else124050124066%_))
                  (_%else124050124066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else124050124066%_))))))
                                      (if (pair? _%rest124027124035%_)
                                          (let ((_%hd124032124092%_
                                                 (##car _%rest124027124035%_))
                                                (_%tl124033124094%_
                                                 (##cdr _%rest124027124035%_)))
                                            (let* ((_%hd124097%_
                                                    _%hd124032124092%_)
                                                   (_%rest124099%_
                                                    _%tl124033124094%_))
                                              (_%K124031124089%_
                                               _%rest124099%_
                                               _%hd124097%_)))
                                          (_%else124029124043%_)))))))
                        (let ((_%$e124020%_ (_%from-irritants124017%_)))
                          (if _%$e124020%_
                              _%$e124020%_
                              (_%from-context124018%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e123878%_ (_%location123875%_)))
                 (if _%$e123878%_
                     ((lambda (_%loc123881%_)
                        (##display-locat _%loc123881%_ '#t _%port123861%_))
                      _%$e123878%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self123864%_ '2 '#f '#f))
               (let ((_%$e123884%_
                      (##unchecked-structure-ref _%self123864%_ '4 '#f '#f)))
                 (if _%$e123884%_
                     ((lambda (_%where123887%_)
                        (displayln '"--- Context: ")
                        (let _%lp123889%_ ((_%rest123891%_ _%where123887%_))
                          (let* ((_%rest123892123900%_ _%rest123891%_)
                                 (_%else123894123908%_ (lambda () '#!void))
                                 (_%K123896123958%_
                                  (lambda (_%rest123911%_ _%hd123912%_)
                                    (let* ((_%hd123913123923%_ _%hd123912%_)
                                           (_%else123915123931%_
                                            (lambda ()
                                              (displayln '" at " _%hd123912%_)
                                              (_%lp123889%_ _%rest123911%_)))
                                           (_%K123917123943%_
                                            (lambda (_%ctx123934%_)
                                              (let ((_%$e123936%_
                                                     (__AST-source
                                                      _%ctx123934%_)))
                                                (if _%$e123936%_
                                                    ((lambda (_%loc123939%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc123939%_
                                                        '#t
                                                        _%port123861%_)
                                                       (newline)
                                                       (_%lp123889%_
                                                        _%rest123911%_))
                                                     _%$e123936%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx123934%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx123934%_)
                                                          (_%lp123889%_
                                                           _%rest123911%_))
                                                        (_%lp123889%_
                                                         _%rest123911%_)))))))
                                      (if (pair? _%hd123913123923%_)
                                          (let ((_%hd123918123946%_
                                                 (##car _%hd123913123923%_))
                                                (_%tl123919123948%_
                                                 (##cdr _%hd123913123923%_)))
                                            (if (##eq? _%hd123918123946%_ '@)
                                                (if (pair? _%tl123919123948%_)
                                                    (let ((_%hd123920123951%_
                                                           (##car _%tl123919123948%_))
                                                          (_%tl123921123953%_
                                                           (##cdr _%tl123919123948%_)))
                                                      (let ((_%ctx123956%_
                                                             _%hd123920123951%_))
                                                        (if (null? _%tl123921123953%_)
                                                            (_%K123917123943%_
                                                             _%ctx123956%_)
                                                            (_%else123915123931%_))))
                                                    (_%else123915123931%_))
                                                (_%else123915123931%_)))
                                          (_%else123915123931%_))))))
                            (if (pair? _%rest123892123900%_)
                                (let ((_%hd123897123961%_
                                       (##car _%rest123892123900%_))
                                      (_%tl123898123963%_
                                       (##cdr _%rest123892123900%_)))
                                  (let* ((_%hd123966%_ _%hd123897123961%_)
                                         (_%rest123968%_ _%tl123898123963%_))
                                    (_%K123896123958%_
                                     _%rest123968%_
                                     _%hd123966%_)))
                                '#!void))))
                      _%$e123884%_)
                     '#!void))
               (let* ((_%self.irritants123969123977%_
                       (##unchecked-structure-ref _%self123864%_ '3 '#f '#f))
                      (_%else123971123985%_ (lambda () '#!void))
                      (_%K123973123998%_
                       (lambda (_%rest123988%_ _%stx123989%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx123989%_)
                         (for-each
                          (lambda (_%detail123991%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail123991%_))
                            (let ((_%$e123993%_
                                   (__AST-source _%detail123991%_)))
                              (if _%$e123993%_
                                  ((lambda (_%loc123996%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc123996%_
                                      '#t
                                      _%port123861%_))
                                   _%$e123993%_)
                                  '#!void))
                            (newline))
                          _%rest123988%_))))
                 (if (pair? _%self.irritants123969123977%_)
                     (let ((_%hd123974124001%_
                            (##car _%self.irritants123969123977%_))
                           (_%tl123975124003%_
                            (##cdr _%self.irritants123969123977%_)))
                       (let* ((_%stx124006%_ _%hd123974124001%_)
                              (_%rest124008%_ _%tl123975124003%_))
                         (_%K123973123998%_ _%rest124008%_ _%stx124006%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont124009124011%_
                          (##unchecked-structure-ref
                           _%self123864%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont124009124011%_
                         (let ((_%cont124014%_ _%cont124009124011%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont124014%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port123861%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message123731%_
               _%irritants123732%_
               _%where123733%_
               _%context123734%_
               _%marks123735%_
               _%phi123736%_)
        (let ((__obj124239
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj124239 _%message123731%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj124239
           _%irritants123732%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj124239 _%where123733%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj124239 _%context123734%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj124239 _%marks123735%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj124239 _%phi123736%_ '6 '#f '#f)
          __obj124239)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where123726%_
               _%message123727%_
               _%stx123728%_
               .
               _%details123729%_)
        (raise (make-syntax-error
                _%message123727%_
                (cons _%stx123728%_ _%details123729%_)
                _%where123726%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args123723%_ (apply make-instance AST::t _%$args123723%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx123721%_)
        (if (##structure-instance-of? _%stx123721%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx123721%_ '1 '#f '#f)
            _%stx123721%_)))
    (define __AST-source
      (lambda (_%stx123712%_)
        (let _%lp123714%_ ((_%src123716%_ _%stx123712%_))
          (if (##structure-instance-of? _%src123716%_ 'gerbil#AST::t)
              (_%lp123714%_
               (##unchecked-structure-ref _%src123716%_ '2 '#f '#f))
              (if (##locat? _%src123716%_) _%src123716%_ '#f)))))
    (define __AST
      (lambda (_%e123704%_ _%src-stx123705%_)
        (let ((_%src123707%_ (__AST-source _%src-stx123705%_)))
          (if (or (##structure-instance-of? _%e123704%_ 'gerbil#AST::t)
                  (not _%src123707%_))
              _%e123704%_
              (##structure AST::t _%e123704%_ _%src123707%_)))))
    (define __AST-eq?
      (lambda (_%stx123701%_ _%obj123702%_)
        (eq? (__AST-e _%stx123701%_) _%obj123702%_)))
    (define __AST-pair?
      (lambda (_%stx123699%_) (pair? (__AST-e _%stx123699%_))))
    (define __AST-null?
      (lambda (_%stx123697%_) (null? (__AST-e _%stx123697%_))))
    (define __AST-datum?
      (lambda (_%stx123678%_)
        (let* ((_%e123680%_ (__AST-e _%stx123678%_))
               (_%$e123682%_ (number? _%e123680%_)))
          (if _%$e123682%_
              _%$e123682%_
              (let ((_%$e123685%_ (string? _%e123680%_)))
                (if _%$e123685%_
                    _%$e123685%_
                    (let ((_%$e123688%_ (char? _%e123680%_)))
                      (if _%$e123688%_
                          _%$e123688%_
                          (let ((_%$e123691%_ (keyword? _%e123680%_)))
                            (if _%$e123691%_
                                _%$e123691%_
                                (let ((_%$e123694%_ (boolean? _%e123680%_)))
                                  (if _%$e123694%_
                                      _%$e123694%_
                                      (eq? _%e123680%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx123676%_) (symbol? (__AST-e _%stx123676%_))))
    (define __AST-id-list?__%
      (lambda (_%stx123627%_ _%tail?123628%_)
        (let _%lp123630%_ ((_%rest123632%_ _%stx123627%_))
          (let* ((_%$e123634%_ _%rest123632%_)
                 (_%$E123636123649%_
                  (lambda ()
                    (let* ((_%$E123637123644%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123634%_)))
                           (_%rest123647%_ _%$e123634%_))
                      (_%tail?123628%_ _%rest123647%_)))))
            (if (__AST-pair? _%$e123634%_)
                (let* ((_%$tgt123638123652%_ (__AST-e _%$e123634%_))
                       (_%$hd123639123655%_ (##car _%$tgt123638123652%_))
                       (_%$tl123640123658%_ (##cdr _%$tgt123638123652%_))
                       (_%hd123662%_ _%$hd123639123655%_)
                       (_%rest123664%_ _%$tl123640123658%_))
                  (if (__AST-id? _%hd123662%_)
                      (_%lp123630%_ _%rest123664%_)
                      '#f))
                (_%$E123636123649%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx123669%_)
        (let ((_%tail?123671%_ __AST-null?))
          (__AST-id-list?__% _%stx123669%_ _%tail?123671%_))))
    (define __AST-id-list?
      (lambda _g124241_
        (let ((_g124242_ (##length _g124241_)))
          (cond ((##fx= _g124242_ 1) (apply __AST-id-list?__0 _g124241_))
                ((##fx= _g124242_ 2) (apply __AST-id-list?__% _g124241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g124241_))))))
    (define __AST-bind-list?
      (lambda (_%stx123619%_)
        (__AST-id-list?__%
         _%stx123619%_
         (lambda (_%e123621%_)
           (let ((_%$e123623%_ (__AST-null? _%e123621%_)))
             (if _%$e123623%_ _%$e123623%_ (__AST-id? _%e123621%_)))))))
    (define __AST-list?__%
      (lambda (_%stx123572%_ _%tail?123573%_)
        (let _%lp123575%_ ((_%rest123577%_ _%stx123572%_))
          (let* ((_%$e123579%_ _%rest123577%_)
                 (_%$E123581123594%_
                  (lambda ()
                    (let* ((_%$E123582123589%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123579%_)))
                           (_%rest123592%_ _%$e123579%_))
                      (_%tail?123573%_ _%rest123592%_)))))
            (if (__AST-pair? _%$e123579%_)
                (let* ((_%$tgt123583123597%_ (__AST-e _%$e123579%_))
                       (_%$hd123584123600%_ (##car _%$tgt123583123597%_))
                       (_%$tl123585123603%_ (##cdr _%$tgt123583123597%_))
                       (_%rest123607%_ _%$tl123585123603%_))
                  (_%lp123575%_ _%rest123607%_))
                (_%$E123581123594%_))))))
    (define __AST-list?__0
      (lambda (_%stx123612%_)
        (let ((_%tail?123614%_ __AST-null?))
          (__AST-list?__% _%stx123612%_ _%tail?123614%_))))
    (define __AST-list?
      (lambda _g124243_
        (let ((_g124244_ (##length _g124243_)))
          (cond ((##fx= _g124244_ 1) (apply __AST-list?__0 _g124243_))
                ((##fx= _g124244_ 2) (apply __AST-list?__% _g124243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g124243_))))))
    (define __AST->list
      (lambda (_%stx123537%_)
        (let* ((_%$e123539%_ _%stx123537%_)
               (_%$E123541123554%_
                (lambda ()
                  (let* ((_%$E123542123549%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e123539%_)))
                         (_%rest123552%_ _%$e123539%_))
                    (__AST-e _%rest123552%_)))))
          (if (__AST-pair? _%$e123539%_)
              (let* ((_%$tgt123543123557%_ (__AST-e _%$e123539%_))
                     (_%$hd123544123560%_ (##car _%$tgt123543123557%_))
                     (_%$tl123545123563%_ (##cdr _%$tgt123543123557%_))
                     (_%hd123567%_ _%$hd123544123560%_)
                     (_%rest123569%_ _%$tl123545123563%_))
                (cons _%hd123567%_ (__AST->list _%rest123569%_)))
              (_%$E123541123554%_)))))
    (define __AST->datum
      (lambda (_%stx123530%_)
        (if (##structure-instance-of? _%stx123530%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx123530%_))
            (if (pair? _%stx123530%_)
                (cons (__AST->datum (##car _%stx123530%_))
                      (__AST->datum (##cdr _%stx123530%_)))
                (if (vector? _%stx123530%_)
                    (vector-map __AST->datum _%stx123530%_)
                    (if (box? _%stx123530%_)
                        (box (__AST->datum (unbox _%stx123530%_)))
                        _%stx123530%_))))))
    (define get-readenv
      (lambda (_%port123528%_)
        (##make-readenv
         _%port123528%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in123516%_)
        (let ((_%e123518%_ (##read-datum-or-eof (get-readenv _%in123516%_))))
          (if (eof-object? (__AST-e _%e123518%_))
              (__AST-e _%e123518%_)
              _%e123518%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in123524%_ (current-input-port)))
          (read-syntax__% _%in123524%_))))
    (define read-syntax
      (lambda _g124245_
        (let ((_g124246_ (##length _g124245_)))
          (cond ((##fx= _g124246_ 0) (apply read-syntax__0 _g124245_))
                ((##fx= _g124246_ 1) (apply read-syntax__% _g124245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g124245_))))))
    (define read-syntax-from-file
      (lambda (_%path123511%_)
        (let ((_%r123513%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path123511%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r123513%_)
              (cdr (__AST-e (vector-ref _%r123513%_ '1)))
              (error (err-code->string _%r123513%_) _%path123511%_)))))
    (define __wrap-syntax
      (lambda (_%re123508%_ _%e123509%_)
        (if (eof-object? _%e123509%_)
            _%e123509%_
            (##structure AST::t _%e123509%_ (##readenv->locat _%re123508%_)))))
    (define __unwrap-syntax
      (lambda (_%re123505%_ _%e123506%_) (__AST-e _%e123506%_)))
    (define __pp-syntax
      (lambda (_%stx123503%_) (pp (__AST->datum _%stx123503%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt123501%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt123501%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt123501%_ '@list)
          (macro-readtable-brace-handler-set! _%rt123501%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt123501%_
           '#\!
           __read-sharp-bang)
          _%rt123501%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt123497%_ _%kw123498%_)
        (macro-readtable-bracket-handler-set! _%rt123497%_ _%kw123498%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt123494%_ _%kw123495%_)
        (macro-readtable-brace-handler-set! _%rt123494%_ _%kw123495%_)))
    (define __read-sharp-bang
      (lambda (_%re123485%_ _%next123486%_ _%start-pos123487%_)
        (if (eq? _%start-pos123487%_ '0)
            (let* ((_%line123489%_
                    (##read-line
                     (macro-readenv-port _%re123485%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line123491%_
                    (substring
                     _%line123489%_
                     '1
                     (string-length _%line123489%_))))
              (macro-readenv-script-line-set!
               _%re123485%_
               _%script-line123491%_)
              (##script-marker))
            (##read-sharp-bang
             _%re123485%_
             _%next123486%_
             _%start-pos123487%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj123483%_)
        (if (source-location? _%obj123483%_)
            (string? (##locat-container _%obj123483%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj123481%_)
        (if (##locat? _%obj123481%_)
            (##container->path (##locat-container _%obj123481%_))
            '#f)))))
