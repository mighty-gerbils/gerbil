(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82745_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82752_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82755_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82756_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82764_|
    (##structure
     gx#syntax-quote::t
     'lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82765_|
    (##structure
     gx#syntax-quote::t
     'case-lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82766_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82768_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82769_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82770_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82772_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82773_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82774_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82776_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82777_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82778_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82779_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82780_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82781_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82782_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82783_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82784_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82785_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82786_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82787_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82788_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82789_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82790_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82791_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82792_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g82793_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
      (lambda (_%formals64097%_)
        (let _%lp64100%_ ((_%rest64103%_ _%formals64097%_))
          (let* ((_%__stx8077880779%_ _%rest64103%_)
                 (_%g6411264181%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8077880779%_))))
            (let ((_%__kont8078180782%_
                   (lambda (_%L64482%_ _%L64484%_) (_%lp64100%_ _%L64482%_)))
                  (_%__kont8078380784%_
                   (lambda (_%L64448%_ _%L64450%_) (_%lp64100%_ _%L64448%_)))
                  (_%__kont8078580786%_
                   (lambda (_%L64394%_ _%L64396%_ _%L64397%_) '#t))
                  (_%__kont8078780788%_
                   (lambda (_%L64350%_ _%L64352%_ _%L64353%_)
                     (_%lp64100%_ _%L64350%_)))
                  (_%__kont8078980790%_
                   (lambda (_%L64302%_ _%L64304%_ _%L64305%_)
                     (_%lp64100%_ _%L64302%_)))
                  (_%__kont8079180792%_
                   (lambda (_%L64229%_ _%L64231%_ _%L64232%_ _%L64233%_) '#t))
                  (_%__kont8079380794%_ (lambda () '#f)))
              (let* ((_%__match8088980890%_
                      (lambda (_%e6416764199%_
                               _%hd6416864203%_
                               _%tl6416964206%_
                               _%e6417064209%_
                               _%hd6417164213%_
                               _%tl6417264216%_
                               _%e6417364219%_
                               _%hd6417464223%_
                               _%tl6417564226%_)
                        (let ((_%L64229%_ _%tl6417264216%_)
                              (_%L64231%_ _%tl6417564226%_)
                              (_%L64232%_ _%hd6417464223%_)
                              (_%L64233%_ _%hd6416864203%_))
                          (if (and (gx#stx-keyword? _%L64233%_)
                                   (gx#identifier? _%L64232%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64231%_)))
                              (_%__kont8079180792%_
                               _%L64229%_
                               _%L64231%_
                               _%L64232%_
                               _%L64233%_)
                              (_%__kont8079380794%_)))))
                     (_%__match8087180872%_
                      (lambda (_%e6415164262%_
                               _%hd6415264266%_
                               _%tl6415364269%_
                               _%e6415464272%_
                               _%hd6415564276%_
                               _%tl6415664279%_
                               _%e6415764282%_
                               _%hd6415864286%_
                               _%tl6415964289%_
                               _%e6416064292%_
                               _%hd6416164296%_
                               _%tl6416264299%_)
                        (let ((_%L64302%_ _%tl6415664279%_)
                              (_%L64304%_ _%hd6415864286%_)
                              (_%L64305%_ _%hd6415264266%_))
                          (if (and (gx#stx-keyword? _%L64305%_)
                                   (gx#identifier? _%L64304%_))
                              (_%__kont8078980790%_
                               _%L64302%_
                               _%L64304%_
                               _%L64305%_)
                              (_%__match8088980890%_
                               _%e6415164262%_
                               _%hd6415264266%_
                               _%tl6415364269%_
                               _%e6415464272%_
                               _%hd6415564276%_
                               _%tl6415664279%_
                               _%e6415764282%_
                               _%hd6415864286%_
                               _%tl6415964289%_)))))
                     (_%__match8084580846%_
                      (lambda (_%e6414264330%_
                               _%hd6414364334%_
                               _%tl6414464337%_
                               _%e6414564340%_
                               _%hd6414664344%_
                               _%tl6414764347%_)
                        (let ((_%L64350%_ _%tl6414764347%_)
                              (_%L64352%_ _%hd6414664344%_)
                              (_%L64353%_ _%hd6414364334%_))
                          (if (and (gx#stx-keyword? _%L64353%_)
                                   (gx#identifier? _%L64352%_))
                              (_%__kont8078780788%_
                               _%L64350%_
                               _%L64352%_
                               _%L64353%_)
                              (if (gx#stx-pair? _%hd6414664344%_)
                                  (let ((_%e6415764282%_
                                         (gx#syntax-e _%hd6414664344%_)))
                                    (let ((_%tl6415964289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6415764282%_)))
                                          (_%hd6415864286%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6415764282%_))))
                                      (if (gx#stx-pair? _%tl6415964289%_)
                                          (let ((_%e6416064292%_
                                                 (gx#syntax-e
                                                  _%tl6415964289%_)))
                                            (let ((_%tl6416264299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6416064292%_)))
                                                  (_%hd6416164296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6416064292%_))))
                                              (if (gx#stx-null?
                                                   _%tl6416264299%_)
                                                  (_%__match8087180872%_
                                                   _%e6414264330%_
                                                   _%hd6414364334%_
                                                   _%tl6414464337%_
                                                   _%e6414564340%_
                                                   _%hd6414664344%_
                                                   _%tl6414764347%_
                                                   _%e6415764282%_
                                                   _%hd6415864286%_
                                                   _%tl6415964289%_
                                                   _%e6416064292%_
                                                   _%hd6416164296%_
                                                   _%tl6416264299%_)
                                                  (_%__match8088980890%_
                                                   _%e6414264330%_
                                                   _%hd6414364334%_
                                                   _%tl6414464337%_
                                                   _%e6414564340%_
                                                   _%hd6414664344%_
                                                   _%tl6414764347%_
                                                   _%e6415764282%_
                                                   _%hd6415864286%_
                                                   _%tl6415964289%_))))
                                          (_%__match8088980890%_
                                           _%e6414264330%_
                                           _%hd6414364334%_
                                           _%tl6414464337%_
                                           _%e6414564340%_
                                           _%hd6414664344%_
                                           _%tl6414764347%_
                                           _%e6415764282%_
                                           _%hd6415864286%_
                                           _%tl6415964289%_))))
                                  (_%__kont8079380794%_))))))
                     (_%__match8083380834%_
                      (lambda (_%e6413364374%_
                               _%hd6413464378%_
                               _%tl6413564381%_
                               _%e6413664384%_
                               _%hd6413764388%_
                               _%tl6413864391%_)
                        (let ((_%L64394%_ _%tl6413564381%_)
                              (_%L64396%_ _%tl6413864391%_)
                              (_%L64397%_ _%hd6413764388%_))
                          (if (and (gx#identifier? _%L64397%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64396%_)))
                              (_%__kont8078580786%_
                               _%L64394%_
                               _%L64396%_
                               _%L64397%_)
                              (if (gx#stx-pair? _%tl6413564381%_)
                                  (let ((_%e6414564340%_
                                         (gx#syntax-e _%tl6413564381%_)))
                                    (let ((_%tl6414764347%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6414564340%_)))
                                          (_%hd6414664344%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6414564340%_))))
                                      (_%__match8084580846%_
                                       _%e6413364374%_
                                       _%hd6413464378%_
                                       _%tl6413564381%_
                                       _%e6414564340%_
                                       _%hd6414664344%_
                                       _%tl6414764347%_)))
                                  (_%__kont8079380794%_))))))
                     (_%__match8080180802%_
                      (lambda (_%e6411664472%_
                               _%hd6411764476%_
                               _%tl6411864479%_)
                        (let ((_%L64482%_ _%tl6411864479%_)
                              (_%L64484%_ _%hd6411764476%_))
                          (if (gx#identifier? _%L64484%_)
                              (_%__kont8078180782%_ _%L64482%_ _%L64484%_)
                              (if (gx#stx-pair? _%hd6411764476%_)
                                  (let ((_%e6412464428%_
                                         (gx#syntax-e _%hd6411764476%_)))
                                    (let ((_%tl6412664435%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6412464428%_)))
                                          (_%hd6412564432%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6412464428%_))))
                                      (if (gx#stx-pair? _%tl6412664435%_)
                                          (let ((_%e6412764438%_
                                                 (gx#syntax-e
                                                  _%tl6412664435%_)))
                                            (let ((_%tl6412964445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6412764438%_)))
                                                  (_%hd6412864442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6412764438%_))))
                                              (if (gx#stx-null?
                                                   _%tl6412964445%_)
                                                  (_%__kont8078380784%_
                                                   _%tl6411864479%_
                                                   _%hd6412564432%_)
                                                  (_%__match8083380834%_
                                                   _%e6411664472%_
                                                   _%hd6411764476%_
                                                   _%tl6411864479%_
                                                   _%e6412464428%_
                                                   _%hd6412564432%_
                                                   _%tl6412664435%_))))
                                          (_%__match8083380834%_
                                           _%e6411664472%_
                                           _%hd6411764476%_
                                           _%tl6411864479%_
                                           _%e6412464428%_
                                           _%hd6412564432%_
                                           _%tl6412664435%_))))
                                  (if (gx#stx-pair? _%tl6411864479%_)
                                      (let ((_%e6414564340%_
                                             (gx#syntax-e _%tl6411864479%_)))
                                        (let ((_%tl6414764347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6414564340%_)))
                                              (_%hd6414664344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6414564340%_))))
                                          (_%__match8084580846%_
                                           _%e6411664472%_
                                           _%hd6411764476%_
                                           _%tl6411864479%_
                                           _%e6414564340%_
                                           _%hd6414664344%_
                                           _%tl6414764347%_)))
                                      (_%__kont8079380794%_))))))))
                (if (gx#stx-pair? _%__stx8077880779%_)
                    (let ((_%e6411664472%_ (gx#syntax-e _%__stx8077880779%_)))
                      (let ((_%tl6411864479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6411664472%_)))
                            (_%hd6411764476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6411664472%_))))
                        (_%__match8080180802%_
                         _%e6411664472%_
                         _%hd6411764476%_
                         _%tl6411864479%_)))
                    (_%__kont8079380794%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def/c|
      (lambda (_%stx64499%_)
        (letrec ((_%make-definition64502%_
                  (lambda (_%id65600%_
                           _%args65602%_
                           _%return65603%_
                           _%body65604%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~Interface[1]#check-signature!__%|
                       '#f
                       absent-value
                       absent-value
                       _%stx64499%_
                       _%args65602%_
                       _%return65603%_))
                    (if (let ()
                          (declare (not safe))
                          (|gerbil/core/contract~Interface[1]#signature-has-keywords?|
                           _%args65602%_))
                        (_%make-keyword-def64504%_
                         _%id65600%_
                         _%args65602%_
                         _%return65603%_
                         _%body65604%_)
                        (let* ((_%unchecked-id65606%_
                                (gx#stx-identifier
                                 _%id65600%_
                                 '"__"
                                 _%id65600%_))
                               (_%g6560965624%_
                                (lambda (_%g6561065620%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6561065620%_)))
                               (_%g6560865670%_
                                (lambda (_%g6561065628%_)
                                  (if (gx#stx-pair? _%g6561065628%_)
                                      (let ((_%e6561365631%_
                                             (gx#syntax-e _%g6561065628%_)))
                                        (let ((_%hd6561465635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6561365631%_)))
                                              (_%tl6561565638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6561365631%_))))
                                          (if (gx#stx-pair? _%tl6561565638%_)
                                              (let ((_%e6561665641%_
                                                     (gx#syntax-e
                                                      _%tl6561565638%_)))
                                                (let ((_%hd6561765645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6561665641%_)))
                                                      (_%tl6561865648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6561665641%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6561865648%_)
                                                      ((lambda (_%L65651%_
                                                                _%L65653%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _%L65653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L65651%_ '()))))
               _%hd6561765645%_
               _%hd6561465635%_)
              (_%g6560965624%_ _%g6561065628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6560965624%_
                                               _%g6561065628%_))))
                                      (_%g6560965624%_ _%g6561065628%_)))))
                          (_%g6560865670%_
                           (list (_%make-checked-def64505%_
                                  _%id65600%_
                                  _%unchecked-id65606%_
                                  _%args65602%_
                                  _%return65603%_)
                                 (_%make-unchecked-def64506%_
                                  _%unchecked-id65606%_
                                  _%args65602%_
                                  _%return65603%_
                                  _%body65604%_)))))))
                 (_%make-keyword-def64504%_
                  (lambda (_%id65407%_
                           _%signature65409%_
                           _%return65410%_
                           _%body65411%_)
                    (let* ((_%g6541365453%_
                            (lambda (_%g6541465449%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6541465449%_)))
                           (_%g6541265596%_
                            (lambda (_%g6541465457%_)
                              (if (gx#stx-pair? _%g6541465457%_)
                                  (let ((_%e6542165460%_
                                         (gx#syntax-e _%g6541465457%_)))
                                    (let ((_%hd6542265464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6542165460%_)))
                                          (_%tl6542365467%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6542165460%_))))
                                      (if (gx#stx-pair? _%tl6542365467%_)
                                          (let ((_%e6542465470%_
                                                 (gx#syntax-e
                                                  _%tl6542365467%_)))
                                            (let ((_%hd6542565474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6542465470%_)))
                                                  (_%tl6542665477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6542465470%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6542665477%_)
                                                  (let ((_%e6542765480%_
                                                         (gx#syntax-e
                                                          _%tl6542665477%_)))
                                                    (let ((_%hd6542865484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6542765480%_)))
                                                          (_%tl6542965487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6542765480%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6542965487%_)
                                                          (let ((_%e6543065490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6542965487%_)))
                    (let ((_%hd6543165494%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6543065490%_)))
                          (_%tl6543265497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6543065490%_))))
                      (if (gx#stx-pair? _%tl6543265497%_)
                          (let ((_%e6543365500%_
                                 (gx#syntax-e _%tl6543265497%_)))
                            (let ((_%hd6543465504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6543365500%_)))
                                  (_%tl6543565507%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6543365500%_))))
                              (if (gx#stx-pair? _%tl6543565507%_)
                                  (let ((_%e6543665510%_
                                         (gx#syntax-e _%tl6543565507%_)))
                                    (let ((_%hd6543765514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6543665510%_)))
                                          (_%tl6543865517%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6543665510%_))))
                                      (if (gx#stx-pair/null? _%hd6543765514%_)
                                          (let ((_g82739_
                                                 (gx#syntax-split-splice
                                                  _%hd6543765514%_
                                                  '0)))
                                            (begin
                                              (let ((_g82740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g82739_)
                                                           (##vector-length
                                                            _g82739_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g82740_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g82740_)))
                                              (let ((_%target6543965520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g82739_
                                                        0)))
                                                    (_%tl6544165523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g82739_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl6544165523%_)
                                                    (letrec ((_%loop6544265526%_
                                                              (lambda (_%hd6544065530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6544665533%_)
                        (if (gx#stx-pair? _%hd6544065530%_)
                            (let ((_%e6544365536%_
                                   (gx#syntax-e _%hd6544065530%_)))
                              (let ((_%lp-hd6544465540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6544365536%_)))
                                    (_%lp-tl6544565543%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6544365536%_))))
                                (_%loop6544265526%_
                                 _%lp-tl6544565543%_
                                 (cons _%lp-hd6544465540%_
                                       _%body6544665533%_))))
                            (let ((_%body6544765546%_
                                   (reverse _%body6544665533%_)))
                              (if (gx#stx-null? _%tl6543865517%_)
                                  ((lambda (_%L65550%_
                                            _%L65552%_
                                            _%L65553%_
                                            _%L65554%_
                                            _%L65555%_
                                            _%L65556%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%L65556%_ _%L65555%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'with-procedure-signature)
                                                              (cons (cons _%L65554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L65553%_ (cons '#f '())))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%L65552%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'with-procedure-contract)
                                                          (cons _%L65554%_
                                                                (foldr (lambda (_%g6558765590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6558865593%_)
                                 (cons _%g6558765590%_ _%g6558865593%_))
                               '()
                               _%L65550%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx64499%_)))
                                   _%body6544765546%_
                                   _%hd6543465504%_
                                   _%hd6543165494%_
                                   _%hd6542865484%_
                                   _%hd6542565474%_
                                   _%hd6542265464%_)
                                  (_%g6541365453%_ _%g6541465457%_)))))))
              (_%loop6544265526%_ _%target6543965520%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6541365453%_
                                                     _%g6541465457%_)))))
                                          (_%g6541365453%_ _%g6541465457%_))))
                                  (_%g6541365453%_ _%g6541465457%_))))
                          (_%g6541365453%_ _%g6541465457%_))))
                  (_%g6541365453%_ _%g6541465457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6541365453%_
                                                   _%g6541465457%_))))
                                          (_%g6541365453%_ _%g6541465457%_))))
                                  (_%g6541365453%_ _%g6541465457%_)))))
                      (_%g6541265596%_
                       (list _%id65407%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65409%_))
                             _%signature65409%_
                             _%return65410%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64499%_
                                _%return65410%_))
                             _%body65411%_)))))
                 (_%make-checked-def64505%_
                  (lambda (_%id65188%_
                           _%unchecked-id65190%_
                           _%signature65191%_
                           _%return65192%_)
                    (let* ((_%g6519465238%_
                            (lambda (_%g6519565234%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6519565234%_)))
                           (_%g6519365403%_
                            (lambda (_%g6519565242%_)
                              (if (gx#stx-pair? _%g6519565242%_)
                                  (let ((_%e6520365245%_
                                         (gx#syntax-e _%g6519565242%_)))
                                    (let ((_%hd6520465249%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6520365245%_)))
                                          (_%tl6520565252%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6520365245%_))))
                                      (if (gx#stx-pair? _%tl6520565252%_)
                                          (let ((_%e6520665255%_
                                                 (gx#syntax-e
                                                  _%tl6520565252%_)))
                                            (let ((_%hd6520765259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6520665255%_)))
                                                  (_%tl6520865262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6520665255%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6520865262%_)
                                                  (let ((_%e6520965265%_
                                                         (gx#syntax-e
                                                          _%tl6520865262%_)))
                                                    (let ((_%hd6521065269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6520965265%_)))
                                                          (_%tl6521165272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6520965265%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6521165272%_)
                                                          (let ((_%e6521265275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6521165272%_)))
                    (let ((_%hd6521365279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6521265275%_)))
                          (_%tl6521465282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6521265275%_))))
                      (if (gx#stx-pair/null? _%hd6521365279%_)
                          (let ((_g82741_
                                 (gx#syntax-split-splice _%hd6521365279%_ '0)))
                            (begin
                              (let ((_g82742_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g82741_)
                                           (##vector-length _g82741_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g82742_ 2)))
                                    (error "Context expects 2 values"
                                           _g82742_)))
                              (let ((_%target6521565285%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82741_ 0)))
                                    (_%tl6521765288%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82741_ 1))))
                                (if (gx#stx-null? _%tl6521765288%_)
                                    (letrec ((_%loop6521865291%_
                                              (lambda (_%hd6521665295%_
                                                       _%out6522265298%_)
                                                (if (gx#stx-pair?
                                                     _%hd6521665295%_)
                                                    (let ((_%e6521965301%_
                                                           (gx#syntax-e
                                                            _%hd6521665295%_)))
                                                      (let ((_%lp-hd6522065305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6521965301%_)))
                    (_%lp-tl6522165308%_
                     (let () (declare (not safe)) (##cdr _%e6521965301%_))))
                (_%loop6521865291%_
                 _%lp-tl6522165308%_
                 (cons _%lp-hd6522065305%_ _%out6522265298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%out6522365311%_
                                                           (reverse _%out6522265298%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl6521465282%_)
                                                          (let ((_%e6522465315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6521465282%_)))
                    (let ((_%hd6522565319%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6522465315%_)))
                          (_%tl6522665322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6522465315%_))))
                      (if (gx#stx-pair? _%tl6522665322%_)
                          (let ((_%e6522765325%_
                                 (gx#syntax-e _%tl6522665322%_)))
                            (let ((_%hd6522865329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6522765325%_)))
                                  (_%tl6522965332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6522765325%_))))
                              (if (gx#stx-pair? _%tl6522965332%_)
                                  (let ((_%e6523065335%_
                                         (gx#syntax-e _%tl6522965332%_)))
                                    (let ((_%hd6523165339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6523065335%_)))
                                          (_%tl6523265342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6523065335%_))))
                                      (if (gx#stx-null? _%tl6523265342%_)
                                          ((lambda (_%L65345%_
                                                    _%L65347%_
                                                    _%L65348%_
                                                    _%L65349%_
                                                    _%L65350%_
                                                    _%L65351%_
                                                    _%L65352%_)
                                             (if (gx#stx-list? _%L65348%_)
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65350%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65348%_
                                              (cons _%L65347%_
                                                    (cons _%L65351%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65345%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65348%_
                                    (cons (cons _%L65351%_
                                                (foldr (lambda (_%g6538665389%_
                                                                _%g6538765392%_)
                                                         (cons _%g6538665389%_
                                                               _%g6538765392%_))
                                                       '()
                                                       _%L65349%_))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _%stx64499%_))
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65350%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65348%_
                                              (cons _%L65347%_
                                                    (cons _%L65351%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65345%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65348%_
                                    (cons (cons (gx#datum->syntax '#f '##apply)
                                                (cons _%L65351%_
                                                      (foldr (lambda (_%g6539465397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6539565400%_)
                       (cons _%g6539465397%_ _%g6539565400%_))
                     '()
                     _%L65349%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%stx64499%_))))
                                           _%hd6523165339%_
                                           _%hd6522865329%_
                                           _%hd6522565319%_
                                           _%out6522365311%_
                                           _%hd6521065269%_
                                           _%hd6520765259%_
                                           _%hd6520465249%_)
                                          (_%g6519465238%_ _%g6519565242%_))))
                                  (_%g6519465238%_ _%g6519565242%_))))
                          (_%g6519465238%_ _%g6519565242%_))))
                  (_%g6519465238%_ _%g6519565242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6521865291%_
                                       _%target6521565285%_
                                       '()))
                                    (_%g6519465238%_ _%g6519565242%_)))))
                          (_%g6519465238%_ _%g6519565242%_))))
                  (_%g6519465238%_ _%g6519565242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6519465238%_
                                                   _%g6519565242%_))))
                                          (_%g6519465238%_ _%g6519565242%_))))
                                  (_%g6519465238%_ _%g6519565242%_)))))
                      (_%g6519365403%_
                       (list _%id65188%_
                             _%unchecked-id65190%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65191%_))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-out|
                                _%signature65191%_))
                             _%signature65191%_
                             _%return65192%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64499%_
                                _%return65192%_)))))))
                 (_%make-unchecked-def64506%_
                  (lambda (_%unchecked-id65013%_
                           _%signature65015%_
                           _%return65016%_
                           _%body65017%_)
                    (let* ((_%g6501965055%_
                            (lambda (_%g6502065051%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6502065051%_)))
                           (_%g6501865184%_
                            (lambda (_%g6502065059%_)
                              (if (gx#stx-pair? _%g6502065059%_)
                                  (let ((_%e6502665062%_
                                         (gx#syntax-e _%g6502065059%_)))
                                    (let ((_%hd6502765066%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6502665062%_)))
                                          (_%tl6502865069%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6502665062%_))))
                                      (if (gx#stx-pair? _%tl6502865069%_)
                                          (let ((_%e6502965072%_
                                                 (gx#syntax-e
                                                  _%tl6502865069%_)))
                                            (let ((_%hd6503065076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6502965072%_)))
                                                  (_%tl6503165079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6502965072%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6503165079%_)
                                                  (let ((_%e6503265082%_
                                                         (gx#syntax-e
                                                          _%tl6503165079%_)))
                                                    (let ((_%hd6503365086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6503265082%_)))
                                                          (_%tl6503465089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6503265082%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6503465089%_)
                                                          (let ((_%e6503565092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6503465089%_)))
                    (let ((_%hd6503665096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6503565092%_)))
                          (_%tl6503765099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6503565092%_))))
                      (if (gx#stx-pair? _%tl6503765099%_)
                          (let ((_%e6503865102%_
                                 (gx#syntax-e _%tl6503765099%_)))
                            (let ((_%hd6503965106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6503865102%_)))
                                  (_%tl6504065109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6503865102%_))))
                              (if (gx#stx-pair/null? _%hd6503965106%_)
                                  (let ((_g82743_
                                         (gx#syntax-split-splice
                                          _%hd6503965106%_
                                          '0)))
                                    (begin
                                      (let ((_g82744_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82743_)
                                                   (##vector-length _g82743_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82744_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82744_)))
                                      (let ((_%target6504165112%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82743_ 0)))
                                            (_%tl6504365115%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82743_ 1))))
                                        (if (gx#stx-null? _%tl6504365115%_)
                                            (letrec ((_%loop6504465118%_
                                                      (lambda (_%hd6504265122%_
                                                               _%body6504865125%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6504265122%_)
                                                            (let ((_%e6504565128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6504265122%_)))
                      (let ((_%lp-hd6504665132%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6504565128%_)))
                            (_%lp-tl6504765135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6504565128%_))))
                        (_%loop6504465118%_
                         _%lp-tl6504765135%_
                         (cons _%lp-hd6504665132%_ _%body6504865125%_))))
                    (let ((_%body6504965138%_ (reverse _%body6504865125%_)))
                      (if (gx#stx-null? _%tl6504065109%_)
                          ((lambda (_%L65142%_
                                    _%L65144%_
                                    _%L65145%_
                                    _%L65146%_
                                    _%L65147%_)
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L65147%_ _%L65146%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'with-procedure-signature)
                                                      (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L65144%_ (cons '#f '())))
                    (cons (cons (gx#datum->syntax
                                 '#f
                                 'with-procedure-unchecked-contract)
                                (cons _%L65145%_
                                      (foldr (lambda (_%g6517565178%_
                                                      _%g6517665181%_)
                                               (cons _%g6517565178%_
                                                     _%g6517665181%_))
                                             '()
                                             _%L65142%_)))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx64499%_)))
                           _%body6504965138%_
                           _%hd6503665096%_
                           _%hd6503365086%_
                           _%hd6503065076%_
                           _%hd6502765066%_)
                          (_%g6501965055%_ _%g6502065059%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6504465118%_
                                               _%target6504165112%_
                                               '()))
                                            (_%g6501965055%_
                                             _%g6502065059%_)))))
                                  (_%g6501965055%_ _%g6502065059%_))))
                          (_%g6501965055%_ _%g6502065059%_))))
                  (_%g6501965055%_ _%g6502065059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6501965055%_
                                                   _%g6502065059%_))))
                                          (_%g6501965055%_ _%g6502065059%_))))
                                  (_%g6501965055%_ _%g6502065059%_)))))
                      (_%g6501865184%_
                       (list _%unchecked-id65013%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65015%_))
                             _%signature65015%_
                             _%return65016%_
                             _%body65017%_))))))
          (let* ((_%__stx8089280893%_ _%stx64499%_)
                 (_%g6451164603%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8089280893%_))))
            (let ((_%__kont8089580896%_
                   (lambda (_%L64964%_ _%L64966%_ _%L64967%_ _%L64968%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64967%_)
                         (_%make-definition64502%_
                          _%L64968%_
                          _%L64967%_
                          _%L64966%_
                          (foldr (lambda (_%g6499264995%_ _%g6499364998%_)
                                   (cons _%g6499264995%_ _%g6499364998%_))
                                 '()
                                 _%L64964%_))
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64968%_ _%L64967%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L64966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6500065003%_ _%g6500165006%_)
                        (cons _%g6500065003%_ _%g6500165006%_))
                      '()
                      _%L64964%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8089980900%_
                   (lambda (_%L64838%_ _%L64840%_ _%L64841%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64840%_)
                         (cons (gx#datum->syntax '#f 'def/c)
                               (cons (cons _%L64841%_ _%L64840%_)
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6486064863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6486164866%_)
                  (cons _%g6486064863%_ _%g6486164866%_))
                '()
                _%L64838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64841%_ _%L64840%_)
                                     (foldr (lambda (_%g6486864871%_
                                                     _%g6486964874%_)
                                              (cons _%g6486864871%_
                                                    _%g6486964874%_))
                                            '()
                                            _%L64838%_))))))
                  (_%__kont8090380904%_
                   (lambda (_%L64736%_ _%L64738%_ _%L64739%_ _%L64740%_)
                     (cons (gx#datum->syntax '#f 'def/c)
                           (cons (cons _%L64740%_ _%L64739%_)
                                 (cons (cons (gx#datum->syntax '#f 'lambda/c)
                                             (cons _%L64738%_
                                                   (foldr (lambda (_%g6476264765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6476364768%_)
                    (cons _%g6476264765%_ _%g6476364768%_))
                  '()
                  _%L64736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont8090780908%_
                   (lambda (_%L64640%_ _%L64642%_)
                     (cons (gx#datum->syntax '#f 'def)
                           (cons _%L64642%_ (cons _%L64640%_ '()))))))
              (let* ((_%__match8102981030%_
                      (lambda (_%e6458964610%_
                               _%hd6459064614%_
                               _%tl6459164617%_
                               _%e6459264620%_
                               _%hd6459364624%_
                               _%tl6459464627%_
                               _%e6459564630%_
                               _%hd6459664634%_
                               _%tl6459764637%_)
                        (let ((_%L64640%_ _%hd6459664634%_)
                              (_%L64642%_ _%hd6459364624%_))
                          (if (gx#identifier? _%L64642%_)
                              (_%__kont8090780908%_ _%L64640%_ _%L64642%_)
                              (let ()
                                (declare (not safe))
                                (_%g6451164603%_))))))
                     (_%__match8100981010%_
                      (lambda (_%e6456664666%_
                               _%hd6456764670%_
                               _%tl6456864673%_
                               _%e6456964676%_
                               _%hd6457064680%_
                               _%tl6457164683%_
                               _%e6457264686%_
                               _%hd6457364690%_
                               _%tl6457464693%_
                               _%e6457564696%_
                               _%hd6457664700%_
                               _%tl6457764703%_
                               _%__splice8090580906%_
                               _%target6457864706%_
                               _%tl6458064709%_)
                        (letrec ((_%loop6458164712%_
                                  (lambda (_%hd6457964716%_ _%body6458564719%_)
                                    (if (gx#stx-pair? _%hd6457964716%_)
                                        (let ((_%e6458264722%_
                                               (gx#syntax-e _%hd6457964716%_)))
                                          (let ((_%lp-tl6458464729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6458264722%_)))
                                                (_%lp-hd6458364726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6458264722%_))))
                                            (_%loop6458164712%_
                                             _%lp-tl6458464729%_
                                             (cons _%lp-hd6458364726%_
                                                   _%body6458564719%_))))
                                        (let ((_%body6458664732%_
                                               (reverse _%body6458564719%_)))
                                          (_%__kont8090380904%_
                                           _%body6458664732%_
                                           _%tl6457464693%_
                                           _%tl6457764703%_
                                           _%hd6457664700%_))))))
                          (_%loop6458164712%_ _%target6457864706%_ '()))))
                     (_%__match8099580996%_
                      (lambda (_%e6456664666%_
                               _%hd6456764670%_
                               _%tl6456864673%_
                               _%e6456964676%_
                               _%hd6457064680%_
                               _%tl6457164683%_
                               _%e6457264686%_
                               _%hd6457364690%_
                               _%tl6457464693%_)
                        (if (gx#stx-pair? _%hd6457364690%_)
                            (let ((_%e6457564696%_
                                   (gx#syntax-e _%hd6457364690%_)))
                              (let ((_%tl6457764703%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457564696%_)))
                                    (_%hd6457664700%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457564696%_))))
                                (if (gx#stx-pair/null? _%tl6457164683%_)
                                    (let ((_%__splice8090580906%_
                                           (gx#syntax-split-splice
                                            _%tl6457164683%_
                                            '0)))
                                      (let ((_%tl6458064709%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8090580906%_
                                                '1)))
                                            (_%target6457864706%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8090580906%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6458064709%_)
                                            (_%__match8100981010%_
                                             _%e6456664666%_
                                             _%hd6456764670%_
                                             _%tl6456864673%_
                                             _%e6456964676%_
                                             _%hd6457064680%_
                                             _%tl6457164683%_
                                             _%e6457264686%_
                                             _%hd6457364690%_
                                             _%tl6457464693%_
                                             _%e6457564696%_
                                             _%hd6457664700%_
                                             _%tl6457764703%_
                                             _%__splice8090580906%_
                                             _%target6457864706%_
                                             _%tl6458064709%_)
                                            (if (gx#stx-pair? _%tl6457164683%_)
                                                (let ((_%e6459564630%_
                                                       (gx#syntax-e
                                                        _%tl6457164683%_)))
                                                  (let ((_%tl6459764637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6459564630%_)))
                                                        (_%hd6459664634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6459564630%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6459764637%_)
                                                        (_%__match8102981030%_
                                                         _%e6456664666%_
                                                         _%hd6456764670%_
                                                         _%tl6456864673%_
                                                         _%e6456964676%_
                                                         _%hd6457064680%_
                                                         _%tl6457164683%_
                                                         _%e6459564630%_
                                                         _%hd6459664634%_
                                                         _%tl6459764637%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6451164603%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_))))))
                                    (if (gx#stx-pair? _%tl6457164683%_)
                                        (let ((_%e6459564630%_
                                               (gx#syntax-e _%tl6457164683%_)))
                                          (let ((_%tl6459764637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459564630%_)))
                                                (_%hd6459664634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459564630%_))))
                                            (if (gx#stx-null? _%tl6459764637%_)
                                                (_%__match8102981030%_
                                                 _%e6456664666%_
                                                 _%hd6456764670%_
                                                 _%tl6456864673%_
                                                 _%e6456964676%_
                                                 _%hd6457064680%_
                                                 _%tl6457164683%_
                                                 _%e6459564630%_
                                                 _%hd6459664634%_
                                                 _%tl6459764637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_))))))
                            (if (gx#stx-pair? _%tl6457164683%_)
                                (let ((_%e6459564630%_
                                       (gx#syntax-e _%tl6457164683%_)))
                                  (let ((_%tl6459764637%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6459564630%_)))
                                        (_%hd6459664634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6459564630%_))))
                                    (if (gx#stx-null? _%tl6459764637%_)
                                        (_%__match8102981030%_
                                         _%e6456664666%_
                                         _%hd6456764670%_
                                         _%tl6456864673%_
                                         _%e6456964676%_
                                         _%hd6457064680%_
                                         _%tl6457164683%_
                                         _%e6459564630%_
                                         _%hd6459664634%_
                                         _%tl6459764637%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6451164603%_))))))
                     (_%__match8097780978%_
                      (lambda (_%e6454464778%_
                               _%hd6454564782%_
                               _%tl6454664785%_
                               _%e6454764788%_
                               _%hd6454864792%_
                               _%tl6454964795%_
                               _%e6455064798%_
                               _%hd6455164802%_
                               _%tl6455264805%_
                               _%__splice8090180902%_
                               _%target6455364808%_
                               _%tl6455564811%_)
                        (letrec ((_%loop6455664814%_
                                  (lambda (_%hd6455464818%_ _%body6456064821%_)
                                    (if (gx#stx-pair? _%hd6455464818%_)
                                        (let ((_%e6455764824%_
                                               (gx#syntax-e _%hd6455464818%_)))
                                          (let ((_%lp-tl6455964831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6455764824%_)))
                                                (_%lp-hd6455864828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6455764824%_))))
                                            (_%loop6455664814%_
                                             _%lp-tl6455964831%_
                                             (cons _%lp-hd6455864828%_
                                                   _%body6456064821%_))))
                                        (let ((_%body6456164834%_
                                               (reverse _%body6456064821%_)))
                                          (let ((_%L64838%_ _%body6456164834%_)
                                                (_%L64840%_ _%tl6455264805%_)
                                                (_%L64841%_ _%hd6455164802%_))
                                            (if (gx#identifier? _%L64841%_)
                                                (_%__kont8089980900%_
                                                 _%L64838%_
                                                 _%L64840%_
                                                 _%L64841%_)
                                                (_%__match8099580996%_
                                                 _%e6454464778%_
                                                 _%hd6454564782%_
                                                 _%tl6454664785%_
                                                 _%e6454764788%_
                                                 _%hd6454864792%_
                                                 _%tl6454964795%_
                                                 _%e6455064798%_
                                                 _%hd6455164802%_
                                                 _%tl6455264805%_))))))))
                          (_%loop6455664814%_ _%target6455364808%_ '()))))
                     (_%__match8096980970%_
                      (lambda (_%e6454464778%_
                               _%hd6454564782%_
                               _%tl6454664785%_
                               _%e6454764788%_
                               _%hd6454864792%_
                               _%tl6454964795%_
                               _%e6455064798%_
                               _%hd6455164802%_
                               _%tl6455264805%_)
                        (if (gx#stx-pair/null? _%tl6454964795%_)
                            (let ((_%__splice8090180902%_
                                   (gx#syntax-split-splice
                                    _%tl6454964795%_
                                    '0)))
                              (let ((_%tl6455564811%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8090180902%_
                                        '1)))
                                    (_%target6455364808%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8090180902%_
                                        '0))))
                                (if (gx#stx-null? _%tl6455564811%_)
                                    (_%__match8097780978%_
                                     _%e6454464778%_
                                     _%hd6454564782%_
                                     _%tl6454664785%_
                                     _%e6454764788%_
                                     _%hd6454864792%_
                                     _%tl6454964795%_
                                     _%e6455064798%_
                                     _%hd6455164802%_
                                     _%tl6455264805%_
                                     _%__splice8090180902%_
                                     _%target6455364808%_
                                     _%tl6455564811%_)
                                    (if (gx#stx-pair? _%hd6455164802%_)
                                        (let ((_%e6457564696%_
                                               (gx#syntax-e _%hd6455164802%_)))
                                          (let ((_%tl6457764703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6457564696%_)))
                                                (_%hd6457664700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6457564696%_))))
                                            (if (gx#stx-pair? _%tl6454964795%_)
                                                (let ((_%e6459564630%_
                                                       (gx#syntax-e
                                                        _%tl6454964795%_)))
                                                  (let ((_%tl6459764637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6459564630%_)))
                                                        (_%hd6459664634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6459564630%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6459764637%_)
                                                        (_%__match8102981030%_
                                                         _%e6454464778%_
                                                         _%hd6454564782%_
                                                         _%tl6454664785%_
                                                         _%e6454764788%_
                                                         _%hd6454864792%_
                                                         _%tl6454964795%_
                                                         _%e6459564630%_
                                                         _%hd6459664634%_
                                                         _%tl6459764637%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6451164603%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_)))))
                                        (if (gx#stx-pair? _%tl6454964795%_)
                                            (let ((_%e6459564630%_
                                                   (gx#syntax-e
                                                    _%tl6454964795%_)))
                                              (let ((_%tl6459764637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6459564630%_)))
                                                    (_%hd6459664634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6459564630%_))))
                                                (if (gx#stx-null?
                                                     _%tl6459764637%_)
                                                    (_%__match8102981030%_
                                                     _%e6454464778%_
                                                     _%hd6454564782%_
                                                     _%tl6454664785%_
                                                     _%e6454764788%_
                                                     _%hd6454864792%_
                                                     _%tl6454964795%_
                                                     _%e6459564630%_
                                                     _%hd6459664634%_
                                                     _%tl6459764637%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6451164603%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6451164603%_)))))))
                            (if (gx#stx-pair? _%hd6455164802%_)
                                (let ((_%e6457564696%_
                                       (gx#syntax-e _%hd6455164802%_)))
                                  (let ((_%tl6457764703%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6457564696%_)))
                                        (_%hd6457664700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6457564696%_))))
                                    (if (gx#stx-pair? _%tl6454964795%_)
                                        (let ((_%e6459564630%_
                                               (gx#syntax-e _%tl6454964795%_)))
                                          (let ((_%tl6459764637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459564630%_)))
                                                (_%hd6459664634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459564630%_))))
                                            (if (gx#stx-null? _%tl6459764637%_)
                                                (_%__match8102981030%_
                                                 _%e6454464778%_
                                                 _%hd6454564782%_
                                                 _%tl6454664785%_
                                                 _%e6454764788%_
                                                 _%hd6454864792%_
                                                 _%tl6454964795%_
                                                 _%e6459564630%_
                                                 _%hd6459664634%_
                                                 _%tl6459764637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_)))))
                                (if (gx#stx-pair? _%tl6454964795%_)
                                    (let ((_%e6459564630%_
                                           (gx#syntax-e _%tl6454964795%_)))
                                      (let ((_%tl6459764637%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6459564630%_)))
                                            (_%hd6459664634%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6459564630%_))))
                                        (if (gx#stx-null? _%tl6459764637%_)
                                            (_%__match8102981030%_
                                             _%e6454464778%_
                                             _%hd6454564782%_
                                             _%tl6454664785%_
                                             _%e6454764788%_
                                             _%hd6454864792%_
                                             _%tl6454964795%_
                                             _%e6459564630%_
                                             _%hd6459664634%_
                                             _%tl6459764637%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6451164603%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6451164603%_)))))))
                     (_%__match8095180952%_
                      (lambda (_%e6451764884%_
                               _%hd6451864888%_
                               _%tl6451964891%_
                               _%e6452064894%_
                               _%hd6452164898%_
                               _%tl6452264901%_
                               _%e6452364904%_
                               _%hd6452464908%_
                               _%tl6452564911%_
                               _%e6452664914%_
                               _%hd6452764918%_
                               _%tl6452864921%_
                               _%e6452964924%_
                               _%hd6453064928%_
                               _%tl6453164931%_
                               _%__splice8089780898%_
                               _%target6453264934%_
                               _%tl6453464937%_)
                        (letrec ((_%loop6453564940%_
                                  (lambda (_%hd6453364944%_ _%body6453964947%_)
                                    (if (gx#stx-pair? _%hd6453364944%_)
                                        (let ((_%e6453664950%_
                                               (gx#syntax-e _%hd6453364944%_)))
                                          (let ((_%lp-tl6453864957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6453664950%_)))
                                                (_%lp-hd6453764954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6453664950%_))))
                                            (_%loop6453564940%_
                                             _%lp-tl6453864957%_
                                             (cons _%lp-hd6453764954%_
                                                   _%body6453964947%_))))
                                        (let ((_%body6454064960%_
                                               (reverse _%body6453964947%_)))
                                          (let ((_%L64964%_ _%body6454064960%_)
                                                (_%L64966%_ _%hd6453064928%_)
                                                (_%L64967%_ _%tl6452564911%_)
                                                (_%L64968%_ _%hd6452464908%_))
                                            (if (gx#identifier? _%L64968%_)
                                                (_%__kont8089580896%_
                                                 _%L64964%_
                                                 _%L64966%_
                                                 _%L64967%_
                                                 _%L64968%_)
                                                (_%__match8096980970%_
                                                 _%e6451764884%_
                                                 _%hd6451864888%_
                                                 _%tl6451964891%_
                                                 _%e6452064894%_
                                                 _%hd6452164898%_
                                                 _%tl6452264901%_
                                                 _%e6452364904%_
                                                 _%hd6452464908%_
                                                 _%tl6452564911%_))))))))
                          (_%loop6453564940%_ _%target6453264934%_ '())))))
                (if (gx#stx-pair? _%__stx8089280893%_)
                    (let ((_%e6451764884%_ (gx#syntax-e _%__stx8089280893%_)))
                      (let ((_%tl6451964891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6451764884%_)))
                            (_%hd6451864888%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6451764884%_))))
                        (if (gx#stx-pair? _%tl6451964891%_)
                            (let ((_%e6452064894%_
                                   (gx#syntax-e _%tl6451964891%_)))
                              (let ((_%tl6452264901%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6452064894%_)))
                                    (_%hd6452164898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6452064894%_))))
                                (if (gx#stx-pair? _%hd6452164898%_)
                                    (let ((_%e6452364904%_
                                           (gx#syntax-e _%hd6452164898%_)))
                                      (let ((_%tl6452564911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6452364904%_)))
                                            (_%hd6452464908%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6452364904%_))))
                                        (if (gx#stx-pair? _%tl6452264901%_)
                                            (let ((_%e6452664914%_
                                                   (gx#syntax-e
                                                    _%tl6452264901%_)))
                                              (let ((_%tl6452864921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6452664914%_)))
                                                    (_%hd6452764918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6452664914%_))))
                                                (if (gx#identifier?
                                                     _%hd6452764918%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82745_|
                                                         _%hd6452764918%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6452864921%_)
                                                            (let ((_%e6452964924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6452864921%_)))
                      (let ((_%tl6453164931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6452964924%_)))
                            (_%hd6453064928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6452964924%_))))
                        (if (gx#stx-pair/null? _%tl6453164931%_)
                            (let ((_%__splice8089780898%_
                                   (gx#syntax-split-splice
                                    _%tl6453164931%_
                                    '0)))
                              (let ((_%tl6453464937%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8089780898%_
                                        '1)))
                                    (_%target6453264934%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8089780898%_
                                        '0))))
                                (if (gx#stx-null? _%tl6453464937%_)
                                    (_%__match8095180952%_
                                     _%e6451764884%_
                                     _%hd6451864888%_
                                     _%tl6451964891%_
                                     _%e6452064894%_
                                     _%hd6452164898%_
                                     _%tl6452264901%_
                                     _%e6452364904%_
                                     _%hd6452464908%_
                                     _%tl6452564911%_
                                     _%e6452664914%_
                                     _%hd6452764918%_
                                     _%tl6452864921%_
                                     _%e6452964924%_
                                     _%hd6453064928%_
                                     _%tl6453164931%_
                                     _%__splice8089780898%_
                                     _%target6453264934%_
                                     _%tl6453464937%_)
                                    (if (gx#stx-pair/null? _%tl6452264901%_)
                                        (let ((_%__splice8090180902%_
                                               (gx#syntax-split-splice
                                                _%tl6452264901%_
                                                '0)))
                                          (let ((_%tl6455564811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8090180902%_
                                                    '1)))
                                                (_%target6455364808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8090180902%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6455564811%_)
                                                (_%__match8097780978%_
                                                 _%e6451764884%_
                                                 _%hd6451864888%_
                                                 _%tl6451964891%_
                                                 _%e6452064894%_
                                                 _%hd6452164898%_
                                                 _%tl6452264901%_
                                                 _%e6452364904%_
                                                 _%hd6452464908%_
                                                 _%tl6452564911%_
                                                 _%__splice8090180902%_
                                                 _%target6455364808%_
                                                 _%tl6455564811%_)
                                                (if (gx#stx-pair?
                                                     _%hd6452464908%_)
                                                    (let ((_%e6457564696%_
                                                           (gx#syntax-e
                                                            _%hd6452464908%_)))
                                                      (let ((_%tl6457764703%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6457564696%_)))
                    (_%hd6457664700%_
                     (let () (declare (not safe)) (##car _%e6457564696%_))))
                (let () (declare (not safe)) (_%g6451164603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6451164603%_))))))
                                        (if (gx#stx-pair? _%hd6452464908%_)
                                            (let ((_%e6457564696%_
                                                   (gx#syntax-e
                                                    _%hd6452464908%_)))
                                              (let ((_%tl6457764703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6457564696%_)))
                                                    (_%hd6457664700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6457564696%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6451164603%_)))))))
                            (if (gx#stx-pair/null? _%tl6452264901%_)
                                (let ((_%__splice8090180902%_
                                       (gx#syntax-split-splice
                                        _%tl6452264901%_
                                        '0)))
                                  (let ((_%tl6455564811%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8090180902%_
                                            '1)))
                                        (_%target6455364808%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8090180902%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6455564811%_)
                                        (_%__match8097780978%_
                                         _%e6451764884%_
                                         _%hd6451864888%_
                                         _%tl6451964891%_
                                         _%e6452064894%_
                                         _%hd6452164898%_
                                         _%tl6452264901%_
                                         _%e6452364904%_
                                         _%hd6452464908%_
                                         _%tl6452564911%_
                                         _%__splice8090180902%_
                                         _%target6455364808%_
                                         _%tl6455564811%_)
                                        (if (gx#stx-pair? _%hd6452464908%_)
                                            (let ((_%e6457564696%_
                                                   (gx#syntax-e
                                                    _%hd6452464908%_)))
                                              (let ((_%tl6457764703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6457564696%_)))
                                                    (_%hd6457664700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6457564696%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6451164603%_))))))
                                (if (gx#stx-pair? _%hd6452464908%_)
                                    (let ((_%e6457564696%_
                                           (gx#syntax-e _%hd6452464908%_)))
                                      (let ((_%tl6457764703%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6457564696%_)))
                                            (_%hd6457664700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6457564696%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6451164603%_)))))))
                    (if (gx#stx-pair/null? _%tl6452264901%_)
                        (let ((_%__splice8090180902%_
                               (gx#syntax-split-splice _%tl6452264901%_ '0)))
                          (let ((_%tl6455564811%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8090180902%_ '1)))
                                (_%target6455364808%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8090180902%_ '0))))
                            (if (gx#stx-null? _%tl6455564811%_)
                                (_%__match8097780978%_
                                 _%e6451764884%_
                                 _%hd6451864888%_
                                 _%tl6451964891%_
                                 _%e6452064894%_
                                 _%hd6452164898%_
                                 _%tl6452264901%_
                                 _%e6452364904%_
                                 _%hd6452464908%_
                                 _%tl6452564911%_
                                 _%__splice8090180902%_
                                 _%target6455364808%_
                                 _%tl6455564811%_)
                                (if (gx#stx-pair? _%hd6452464908%_)
                                    (let ((_%e6457564696%_
                                           (gx#syntax-e _%hd6452464908%_)))
                                      (let ((_%tl6457764703%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6457564696%_)))
                                            (_%hd6457664700%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6457564696%_))))
                                        (if (gx#stx-null? _%tl6452864921%_)
                                            (_%__match8102981030%_
                                             _%e6451764884%_
                                             _%hd6451864888%_
                                             _%tl6451964891%_
                                             _%e6452064894%_
                                             _%hd6452164898%_
                                             _%tl6452264901%_
                                             _%e6452664914%_
                                             _%hd6452764918%_
                                             _%tl6452864921%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6451164603%_)))))
                                    (if (gx#stx-null? _%tl6452864921%_)
                                        (_%__match8102981030%_
                                         _%e6451764884%_
                                         _%hd6451864888%_
                                         _%tl6451964891%_
                                         _%e6452064894%_
                                         _%hd6452164898%_
                                         _%tl6452264901%_
                                         _%e6452664914%_
                                         _%hd6452764918%_
                                         _%tl6452864921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_)))))))
                        (if (gx#stx-pair? _%hd6452464908%_)
                            (let ((_%e6457564696%_
                                   (gx#syntax-e _%hd6452464908%_)))
                              (let ((_%tl6457764703%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457564696%_)))
                                    (_%hd6457664700%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457564696%_))))
                                (if (gx#stx-null? _%tl6452864921%_)
                                    (_%__match8102981030%_
                                     _%e6451764884%_
                                     _%hd6451864888%_
                                     _%tl6451964891%_
                                     _%e6452064894%_
                                     _%hd6452164898%_
                                     _%tl6452264901%_
                                     _%e6452664914%_
                                     _%hd6452764918%_
                                     _%tl6452864921%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6451164603%_)))))
                            (if (gx#stx-null? _%tl6452864921%_)
                                (_%__match8102981030%_
                                 _%e6451764884%_
                                 _%hd6451864888%_
                                 _%tl6451964891%_
                                 _%e6452064894%_
                                 _%hd6452164898%_
                                 _%tl6452264901%_
                                 _%e6452664914%_
                                 _%hd6452764918%_
                                 _%tl6452864921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6451164603%_))))))
                (if (gx#stx-pair/null? _%tl6452264901%_)
                    (let ((_%__splice8090180902%_
                           (gx#syntax-split-splice _%tl6452264901%_ '0)))
                      (let ((_%tl6455564811%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8090180902%_ '1)))
                            (_%target6455364808%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8090180902%_ '0))))
                        (if (gx#stx-null? _%tl6455564811%_)
                            (_%__match8097780978%_
                             _%e6451764884%_
                             _%hd6451864888%_
                             _%tl6451964891%_
                             _%e6452064894%_
                             _%hd6452164898%_
                             _%tl6452264901%_
                             _%e6452364904%_
                             _%hd6452464908%_
                             _%tl6452564911%_
                             _%__splice8090180902%_
                             _%target6455364808%_
                             _%tl6455564811%_)
                            (if (gx#stx-pair? _%hd6452464908%_)
                                (let ((_%e6457564696%_
                                       (gx#syntax-e _%hd6452464908%_)))
                                  (let ((_%tl6457764703%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6457564696%_)))
                                        (_%hd6457664700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6457564696%_))))
                                    (if (gx#stx-null? _%tl6452864921%_)
                                        (_%__match8102981030%_
                                         _%e6451764884%_
                                         _%hd6451864888%_
                                         _%tl6451964891%_
                                         _%e6452064894%_
                                         _%hd6452164898%_
                                         _%tl6452264901%_
                                         _%e6452664914%_
                                         _%hd6452764918%_
                                         _%tl6452864921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_)))))
                                (if (gx#stx-null? _%tl6452864921%_)
                                    (_%__match8102981030%_
                                     _%e6451764884%_
                                     _%hd6451864888%_
                                     _%tl6451964891%_
                                     _%e6452064894%_
                                     _%hd6452164898%_
                                     _%tl6452264901%_
                                     _%e6452664914%_
                                     _%hd6452764918%_
                                     _%tl6452864921%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6451164603%_)))))))
                    (if (gx#stx-pair? _%hd6452464908%_)
                        (let ((_%e6457564696%_ (gx#syntax-e _%hd6452464908%_)))
                          (let ((_%tl6457764703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6457564696%_)))
                                (_%hd6457664700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6457564696%_))))
                            (if (gx#stx-null? _%tl6452864921%_)
                                (_%__match8102981030%_
                                 _%e6451764884%_
                                 _%hd6451864888%_
                                 _%tl6451964891%_
                                 _%e6452064894%_
                                 _%hd6452164898%_
                                 _%tl6452264901%_
                                 _%e6452664914%_
                                 _%hd6452764918%_
                                 _%tl6452864921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6451164603%_)))))
                        (if (gx#stx-null? _%tl6452864921%_)
                            (_%__match8102981030%_
                             _%e6451764884%_
                             _%hd6451864888%_
                             _%tl6451964891%_
                             _%e6452064894%_
                             _%hd6452164898%_
                             _%tl6452264901%_
                             _%e6452664914%_
                             _%hd6452764918%_
                             _%tl6452864921%_)
                            (let () (declare (not safe)) (_%g6451164603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6452264901%_)
                                                        (let ((_%__splice8090180902%_
                                                               (gx#syntax-split-splice
                                                                _%tl6452264901%_
                                                                '0)))
                                                          (let ((_%tl6455564811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8090180902%_ '1)))
                        (_%target6455364808%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8090180902%_ '0))))
                    (if (gx#stx-null? _%tl6455564811%_)
                        (_%__match8097780978%_
                         _%e6451764884%_
                         _%hd6451864888%_
                         _%tl6451964891%_
                         _%e6452064894%_
                         _%hd6452164898%_
                         _%tl6452264901%_
                         _%e6452364904%_
                         _%hd6452464908%_
                         _%tl6452564911%_
                         _%__splice8090180902%_
                         _%target6455364808%_
                         _%tl6455564811%_)
                        (if (gx#stx-pair? _%hd6452464908%_)
                            (let ((_%e6457564696%_
                                   (gx#syntax-e _%hd6452464908%_)))
                              (let ((_%tl6457764703%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6457564696%_)))
                                    (_%hd6457664700%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6457564696%_))))
                                (if (gx#stx-null? _%tl6452864921%_)
                                    (_%__match8102981030%_
                                     _%e6451764884%_
                                     _%hd6451864888%_
                                     _%tl6451964891%_
                                     _%e6452064894%_
                                     _%hd6452164898%_
                                     _%tl6452264901%_
                                     _%e6452664914%_
                                     _%hd6452764918%_
                                     _%tl6452864921%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6451164603%_)))))
                            (if (gx#stx-null? _%tl6452864921%_)
                                (_%__match8102981030%_
                                 _%e6451764884%_
                                 _%hd6451864888%_
                                 _%tl6451964891%_
                                 _%e6452064894%_
                                 _%hd6452164898%_
                                 _%tl6452264901%_
                                 _%e6452664914%_
                                 _%hd6452764918%_
                                 _%tl6452864921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6451164603%_)))))))
                (if (gx#stx-pair? _%hd6452464908%_)
                    (let ((_%e6457564696%_ (gx#syntax-e _%hd6452464908%_)))
                      (let ((_%tl6457764703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6457564696%_)))
                            (_%hd6457664700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6457564696%_))))
                        (if (gx#stx-null? _%tl6452864921%_)
                            (_%__match8102981030%_
                             _%e6451764884%_
                             _%hd6451864888%_
                             _%tl6451964891%_
                             _%e6452064894%_
                             _%hd6452164898%_
                             _%tl6452264901%_
                             _%e6452664914%_
                             _%hd6452764918%_
                             _%tl6452864921%_)
                            (let () (declare (not safe)) (_%g6451164603%_)))))
                    (if (gx#stx-null? _%tl6452864921%_)
                        (_%__match8102981030%_
                         _%e6451764884%_
                         _%hd6451864888%_
                         _%tl6451964891%_
                         _%e6452064894%_
                         _%hd6452164898%_
                         _%tl6452264901%_
                         _%e6452664914%_
                         _%hd6452764918%_
                         _%tl6452864921%_)
                        (let () (declare (not safe)) (_%g6451164603%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%tl6452264901%_)
                                                (let ((_%__splice8090180902%_
                                                       (gx#syntax-split-splice
                                                        _%tl6452264901%_
                                                        '0)))
                                                  (let ((_%tl6455564811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8090180902%_
                                                            '1)))
                                                        (_%target6455364808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8090180902%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6455564811%_)
                                                        (_%__match8097780978%_
                                                         _%e6451764884%_
                                                         _%hd6451864888%_
                                                         _%tl6451964891%_
                                                         _%e6452064894%_
                                                         _%hd6452164898%_
                                                         _%tl6452264901%_
                                                         _%e6452364904%_
                                                         _%hd6452464908%_
                                                         _%tl6452564911%_
                                                         _%__splice8090180902%_
                                                         _%target6455364808%_
                                                         _%tl6455564811%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6452464908%_)
                                                            (let ((_%e6457564696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6452464908%_)))
                      (let ((_%tl6457764703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6457564696%_)))
                            (_%hd6457664700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6457564696%_))))
                        (let () (declare (not safe)) (_%g6451164603%_))))
                    (let () (declare (not safe)) (_%g6451164603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%hd6452464908%_)
                                                    (let ((_%e6457564696%_
                                                           (gx#syntax-e
                                                            _%hd6452464908%_)))
                                                      (let ((_%tl6457764703%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6457564696%_)))
                    (_%hd6457664700%_
                     (let () (declare (not safe)) (##car _%e6457564696%_))))
                (let () (declare (not safe)) (_%g6451164603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6451164603%_)))))))
                                    (if (gx#stx-pair? _%tl6452264901%_)
                                        (let ((_%e6459564630%_
                                               (gx#syntax-e _%tl6452264901%_)))
                                          (let ((_%tl6459764637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6459564630%_)))
                                                (_%hd6459664634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6459564630%_))))
                                            (if (gx#stx-null? _%tl6459764637%_)
                                                (_%__match8102981030%_
                                                 _%e6451764884%_
                                                 _%hd6451864888%_
                                                 _%tl6451964891%_
                                                 _%e6452064894%_
                                                 _%hd6452164898%_
                                                 _%tl6452264901%_
                                                 _%e6459564630%_
                                                 _%hd6459664634%_
                                                 _%tl6459764637%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6451164603%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6451164603%_))))))
                            (let () (declare (not safe)) (_%g6451164603%_)))))
                    (let () (declare (not safe)) (_%g6451164603%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-signature|
      (lambda (_%stx65680%_)
        (let* ((_%__stx8103281033%_ _%stx65680%_)
               (_%g6568465747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8103281033%_))))
          (let ((_%__kont8103581036%_
                 (lambda (_%L65998%_ _%L66000%_)
                   (let* ((_%g6602566033%_
                           (lambda (_%g6602666029%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6602666029%_)))
                          (_%g6602466060%_
                           (lambda (_%g6602666037%_)
                             ((lambda (_%L66040%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  (cons 'return:
                                                        (cons _%L66040%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6605166054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6605266057%_)
                               (cons _%g6605166054%_ _%g6605266057%_))
                             '()
                             _%L65998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6602666037%_))))
                     (_%g6602466060%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                         _%stx65680%_
                         _%L66000%_))))))
                (_%__kont8103981040%_
                 (lambda (_%L65834%_ _%L65836%_ _%L65837%_ _%L65838%_)
                   (let* ((_%g6586465872%_
                           (lambda (_%g6586565868%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6586565868%_)))
                          (_%g6586365899%_
                           (lambda (_%g6586565876%_)
                             ((lambda (_%L65879%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  _%L65879%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6589065893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6589165896%_)
                               (cons _%g6589065893%_ _%g6589165896%_))
                             '()
                             _%L65834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6586565876%_))))
                     (_%g6586365899%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
                         _%stx65680%_
                         _%L65838%_
                         _%L65837%_
                         _%L65836%_)))))))
            (let* ((_%__match8113581136%_
                    (lambda (_%e6571865754%_
                             _%hd6571965758%_
                             _%tl6572065761%_
                             _%e6572165764%_
                             _%hd6572265768%_
                             _%tl6572365771%_
                             _%e6572465774%_
                             _%hd6572565778%_
                             _%tl6572665781%_
                             _%e6572765784%_
                             _%hd6572865788%_
                             _%tl6572965791%_
                             _%e6573065794%_
                             _%hd6573165798%_
                             _%tl6573265801%_
                             _%__splice8104181042%_
                             _%target6573365804%_
                             _%tl6573565807%_)
                      (letrec ((_%loop6573665810%_
                                (lambda (_%hd6573465814%_ _%body6574065817%_)
                                  (if (gx#stx-pair? _%hd6573465814%_)
                                      (let ((_%e6573765820%_
                                             (gx#syntax-e _%hd6573465814%_)))
                                        (let ((_%lp-tl6573965827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6573765820%_)))
                                              (_%lp-hd6573865824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6573765820%_))))
                                          (_%loop6573665810%_
                                           _%lp-tl6573965827%_
                                           (cons _%lp-hd6573865824%_
                                                 _%body6574065817%_))))
                                      (let ((_%body6574165830%_
                                             (reverse _%body6574065817%_)))
                                        (_%__kont8103981040%_
                                         _%body6574165830%_
                                         _%hd6573165798%_
                                         _%hd6572865788%_
                                         _%hd6572565778%_))))))
                        (_%loop6573665810%_ _%target6573365804%_ '()))))
                   (_%__match8109581096%_
                    (lambda (_%e6568865910%_
                             _%hd6568965914%_
                             _%tl6569065917%_
                             _%e6569165920%_
                             _%hd6569265924%_
                             _%tl6569365927%_
                             _%e6569465930%_
                             _%hd6569565934%_
                             _%tl6569665937%_
                             _%e6569765940%_
                             _%e6569865944%_
                             _%hd6569965948%_
                             _%tl6570065951%_
                             _%e6570165954%_
                             _%hd6570265958%_
                             _%tl6570365961%_
                             _%e6570465964%_
                             _%__splice8103781038%_
                             _%target6570565968%_
                             _%tl6570765971%_)
                      (letrec ((_%loop6570865974%_
                                (lambda (_%hd6570665978%_ _%body6571265981%_)
                                  (if (gx#stx-pair? _%hd6570665978%_)
                                      (let ((_%e6570965984%_
                                             (gx#syntax-e _%hd6570665978%_)))
                                        (let ((_%lp-tl6571165991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6570965984%_)))
                                              (_%lp-hd6571065988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6570965984%_))))
                                          (_%loop6570865974%_
                                           _%lp-tl6571165991%_
                                           (cons _%lp-hd6571065988%_
                                                 _%body6571265981%_))))
                                      (let ((_%body6571365994%_
                                             (reverse _%body6571265981%_)))
                                        (_%__kont8103581036%_
                                         _%body6571365994%_
                                         _%hd6569965948%_))))))
                        (_%loop6570865974%_ _%target6570565968%_ '())))))
              (if (gx#stx-pair? _%__stx8103281033%_)
                  (let ((_%e6568865910%_ (gx#syntax-e _%__stx8103281033%_)))
                    (let ((_%tl6569065917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6568865910%_)))
                          (_%hd6568965914%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6568865910%_))))
                      (if (gx#stx-pair? _%tl6569065917%_)
                          (let ((_%e6569165920%_
                                 (gx#syntax-e _%tl6569065917%_)))
                            (let ((_%tl6569365927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6569165920%_)))
                                  (_%hd6569265924%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6569165920%_))))
                              (if (gx#stx-pair? _%hd6569265924%_)
                                  (let ((_%e6569465930%_
                                         (gx#syntax-e _%hd6569265924%_)))
                                    (let ((_%tl6569665937%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6569465930%_)))
                                          (_%hd6569565934%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6569465930%_))))
                                      (if (gx#stx-datum? _%hd6569565934%_)
                                          (let ((_%e6569765940%_
                                                 (gx#stx-e _%hd6569565934%_)))
                                            (if (equal? _%e6569765940%_ '#f)
                                                (if (gx#stx-pair?
                                                     _%tl6569665937%_)
                                                    (let ((_%e6569865944%_
                                                           (gx#syntax-e
                                                            _%tl6569665937%_)))
                                                      (let ((_%tl6570065951%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6569865944%_)))
                    (_%hd6569965948%_
                     (let () (declare (not safe)) (##car _%e6569865944%_))))
                (if (gx#stx-pair? _%tl6570065951%_)
                    (let ((_%e6570165954%_ (gx#syntax-e _%tl6570065951%_)))
                      (let ((_%tl6570365961%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6570165954%_)))
                            (_%hd6570265958%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6570165954%_))))
                        (if (gx#stx-datum? _%hd6570265958%_)
                            (let ((_%e6570465964%_
                                   (gx#stx-e _%hd6570265958%_)))
                              (if (equal? _%e6570465964%_ '#f)
                                  (if (gx#stx-null? _%tl6570365961%_)
                                      (if (gx#stx-pair/null? _%tl6569365927%_)
                                          (let ((_%__splice8103781038%_
                                                 (gx#syntax-split-splice
                                                  _%tl6569365927%_
                                                  '0)))
                                            (let ((_%tl6570765971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8103781038%_
                                                      '1)))
                                                  (_%target6570565968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8103781038%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6570765971%_)
                                                  (_%__match8109581096%_
                                                   _%e6568865910%_
                                                   _%hd6568965914%_
                                                   _%tl6569065917%_
                                                   _%e6569165920%_
                                                   _%hd6569265924%_
                                                   _%tl6569365927%_
                                                   _%e6569465930%_
                                                   _%hd6569565934%_
                                                   _%tl6569665937%_
                                                   _%e6569765940%_
                                                   _%e6569865944%_
                                                   _%hd6569965948%_
                                                   _%tl6570065951%_
                                                   _%e6570165954%_
                                                   _%hd6570265958%_
                                                   _%tl6570365961%_
                                                   _%e6570465964%_
                                                   _%__splice8103781038%_
                                                   _%target6570565968%_
                                                   _%tl6570765971%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6568465747%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6568465747%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6568465747%_)))
                                  (if (gx#stx-null? _%tl6570365961%_)
                                      (if (gx#stx-pair/null? _%tl6569365927%_)
                                          (let ((_%__splice8104181042%_
                                                 (gx#syntax-split-splice
                                                  _%tl6569365927%_
                                                  '0)))
                                            (let ((_%tl6573565807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8104181042%_
                                                      '1)))
                                                  (_%target6573365804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8104181042%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6573565807%_)
                                                  (_%__match8113581136%_
                                                   _%e6568865910%_
                                                   _%hd6568965914%_
                                                   _%tl6569065917%_
                                                   _%e6569165920%_
                                                   _%hd6569265924%_
                                                   _%tl6569365927%_
                                                   _%e6569465930%_
                                                   _%hd6569565934%_
                                                   _%tl6569665937%_
                                                   _%e6569865944%_
                                                   _%hd6569965948%_
                                                   _%tl6570065951%_
                                                   _%e6570165954%_
                                                   _%hd6570265958%_
                                                   _%tl6570365961%_
                                                   _%__splice8104181042%_
                                                   _%target6573365804%_
                                                   _%tl6573565807%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6568465747%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6568465747%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6568465747%_)))))
                            (if (gx#stx-null? _%tl6570365961%_)
                                (if (gx#stx-pair/null? _%tl6569365927%_)
                                    (let ((_%__splice8104181042%_
                                           (gx#syntax-split-splice
                                            _%tl6569365927%_
                                            '0)))
                                      (let ((_%tl6573565807%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8104181042%_
                                                '1)))
                                            (_%target6573365804%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8104181042%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6573565807%_)
                                            (_%__match8113581136%_
                                             _%e6568865910%_
                                             _%hd6568965914%_
                                             _%tl6569065917%_
                                             _%e6569165920%_
                                             _%hd6569265924%_
                                             _%tl6569365927%_
                                             _%e6569465930%_
                                             _%hd6569565934%_
                                             _%tl6569665937%_
                                             _%e6569865944%_
                                             _%hd6569965948%_
                                             _%tl6570065951%_
                                             _%e6570165954%_
                                             _%hd6570265958%_
                                             _%tl6570365961%_
                                             _%__splice8104181042%_
                                             _%target6573365804%_
                                             _%tl6573565807%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6568465747%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6568465747%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g6568465747%_))))))
                    (let () (declare (not safe)) (_%g6568465747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6568465747%_)))
                                                (if (gx#stx-pair?
                                                     _%tl6569665937%_)
                                                    (let ((_%e6572765784%_
                                                           (gx#syntax-e
                                                            _%tl6569665937%_)))
                                                      (let ((_%tl6572965791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6572765784%_)))
                    (_%hd6572865788%_
                     (let () (declare (not safe)) (##car _%e6572765784%_))))
                (if (gx#stx-pair? _%tl6572965791%_)
                    (let ((_%e6573065794%_ (gx#syntax-e _%tl6572965791%_)))
                      (let ((_%tl6573265801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6573065794%_)))
                            (_%hd6573165798%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6573065794%_))))
                        (if (gx#stx-null? _%tl6573265801%_)
                            (if (gx#stx-pair/null? _%tl6569365927%_)
                                (let ((_%__splice8104181042%_
                                       (gx#syntax-split-splice
                                        _%tl6569365927%_
                                        '0)))
                                  (let ((_%tl6573565807%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8104181042%_
                                            '1)))
                                        (_%target6573365804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8104181042%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6573565807%_)
                                        (_%__match8113581136%_
                                         _%e6568865910%_
                                         _%hd6568965914%_
                                         _%tl6569065917%_
                                         _%e6569165920%_
                                         _%hd6569265924%_
                                         _%tl6569365927%_
                                         _%e6569465930%_
                                         _%hd6569565934%_
                                         _%tl6569665937%_
                                         _%e6572765784%_
                                         _%hd6572865788%_
                                         _%tl6572965791%_
                                         _%e6573065794%_
                                         _%hd6573165798%_
                                         _%tl6573265801%_
                                         _%__splice8104181042%_
                                         _%target6573365804%_
                                         _%tl6573565807%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6568465747%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6568465747%_)))
                            (let () (declare (not safe)) (_%g6568465747%_)))))
                    (let () (declare (not safe)) (_%g6568465747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6568465747%_)))))
                                          (if (gx#stx-pair? _%tl6569665937%_)
                                              (let ((_%e6572765784%_
                                                     (gx#syntax-e
                                                      _%tl6569665937%_)))
                                                (let ((_%tl6572965791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6572765784%_)))
                                                      (_%hd6572865788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6572765784%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6572965791%_)
                                                      (let ((_%e6573065794%_
                                                             (gx#syntax-e
                                                              _%tl6572965791%_)))
                                                        (let ((_%tl6573265801%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6573065794%_)))
                      (_%hd6573165798%_
                       (let () (declare (not safe)) (##car _%e6573065794%_))))
                  (if (gx#stx-null? _%tl6573265801%_)
                      (if (gx#stx-pair/null? _%tl6569365927%_)
                          (let ((_%__splice8104181042%_
                                 (gx#syntax-split-splice _%tl6569365927%_ '0)))
                            (let ((_%tl6573565807%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8104181042%_ '1)))
                                  (_%target6573365804%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8104181042%_
                                      '0))))
                              (if (gx#stx-null? _%tl6573565807%_)
                                  (_%__match8113581136%_
                                   _%e6568865910%_
                                   _%hd6568965914%_
                                   _%tl6569065917%_
                                   _%e6569165920%_
                                   _%hd6569265924%_
                                   _%tl6569365927%_
                                   _%e6569465930%_
                                   _%hd6569565934%_
                                   _%tl6569665937%_
                                   _%e6572765784%_
                                   _%hd6572865788%_
                                   _%tl6572965791%_
                                   _%e6573065794%_
                                   _%hd6573165798%_
                                   _%tl6573265801%_
                                   _%__splice8104181042%_
                                   _%target6573365804%_
                                   _%tl6573565807%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6568465747%_)))))
                          (let () (declare (not safe)) (_%g6568465747%_)))
                      (let () (declare (not safe)) (_%g6568465747%_)))))
              (let () (declare (not safe)) (_%g6568465747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6568465747%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6568465747%_)))))
                          (let () (declare (not safe)) (_%g6568465747%_)))))
                  (let () (declare (not safe)) (_%g6568465747%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-contract|
      (lambda (_%stx66070%_)
        (let* ((_%g6607366097%_
                (lambda (_%g6607466093%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6607466093%_)))
               (_%g6607266213%_
                (lambda (_%g6607466101%_)
                  (if (gx#stx-pair? _%g6607466101%_)
                      (let ((_%e6607766104%_ (gx#syntax-e _%g6607466101%_)))
                        (let ((_%hd6607866108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6607766104%_)))
                              (_%tl6607966111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6607766104%_))))
                          (if (gx#stx-pair? _%tl6607966111%_)
                              (let ((_%e6608066114%_
                                     (gx#syntax-e _%tl6607966111%_)))
                                (let ((_%hd6608166118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6608066114%_)))
                                      (_%tl6608266121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6608066114%_))))
                                  (if (gx#stx-pair/null? _%tl6608266121%_)
                                      (let ((_g82746_
                                             (gx#syntax-split-splice
                                              _%tl6608266121%_
                                              '0)))
                                        (begin
                                          (let ((_g82747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82746_)
                                                       (##vector-length
                                                        _g82746_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82747_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82747_)))
                                          (let ((_%target6608366124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82746_ 0)))
                                                (_%tl6608566127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82746_ 1))))
                                            (if (gx#stx-null? _%tl6608566127%_)
                                                (letrec ((_%loop6608666130%_
                                                          (lambda (_%hd6608466134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6609066137%_)
                    (if (gx#stx-pair? _%hd6608466134%_)
                        (let ((_%e6608766140%_ (gx#syntax-e _%hd6608466134%_)))
                          (let ((_%lp-hd6608866144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6608766140%_)))
                                (_%lp-tl6608966147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6608766140%_))))
                            (_%loop6608666130%_
                             _%lp-tl6608966147%_
                             (cons _%lp-hd6608866144%_ _%body6609066137%_))))
                        (let ((_%body6609166150%_
                               (reverse _%body6609066137%_)))
                          ((lambda (_%L66154%_ _%L66156%_)
                             (let* ((_%g6617466182%_
                                     (lambda (_%g6617566178%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6617566178%_)))
                                    (_%g6617366209%_
                                     (lambda (_%g6617566186%_)
                                       ((lambda (_%L66189%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66189%_
                                                      (foldr (lambda (_%g6620066203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6620166206%_)
                       (cons _%g6620066203%_ _%g6620166206%_))
                     '()
                     _%L66154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6617566186%_))))
                               (_%g6617366209%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66070%_
                                   _%L66156%_
                                   '#t)))))
                           _%body6609166150%_
                           _%hd6608166118%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6608666130%_
                                                   _%target6608366124%_
                                                   '()))
                                                (_%g6607366097%_
                                                 _%g6607466101%_)))))
                                      (_%g6607366097%_ _%g6607466101%_))))
                              (_%g6607366097%_ _%g6607466101%_))))
                      (_%g6607366097%_ _%g6607466101%_)))))
          (_%g6607266213%_ _%stx66070%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-unchecked-contract|
      (lambda (_%stx66218%_)
        (let* ((_%g6622166245%_
                (lambda (_%g6622266241%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6622266241%_)))
               (_%g6622066361%_
                (lambda (_%g6622266249%_)
                  (if (gx#stx-pair? _%g6622266249%_)
                      (let ((_%e6622566252%_ (gx#syntax-e _%g6622266249%_)))
                        (let ((_%hd6622666256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6622566252%_)))
                              (_%tl6622766259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6622566252%_))))
                          (if (gx#stx-pair? _%tl6622766259%_)
                              (let ((_%e6622866262%_
                                     (gx#syntax-e _%tl6622766259%_)))
                                (let ((_%hd6622966266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6622866262%_)))
                                      (_%tl6623066269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6622866262%_))))
                                  (if (gx#stx-pair/null? _%tl6623066269%_)
                                      (let ((_g82748_
                                             (gx#syntax-split-splice
                                              _%tl6623066269%_
                                              '0)))
                                        (begin
                                          (let ((_g82749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82748_)
                                                       (##vector-length
                                                        _g82748_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82749_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82749_)))
                                          (let ((_%target6623166272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82748_ 0)))
                                                (_%tl6623366275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82748_ 1))))
                                            (if (gx#stx-null? _%tl6623366275%_)
                                                (letrec ((_%loop6623466278%_
                                                          (lambda (_%hd6623266282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6623866285%_)
                    (if (gx#stx-pair? _%hd6623266282%_)
                        (let ((_%e6623566288%_ (gx#syntax-e _%hd6623266282%_)))
                          (let ((_%lp-hd6623666292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6623566288%_)))
                                (_%lp-tl6623766295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6623566288%_))))
                            (_%loop6623466278%_
                             _%lp-tl6623766295%_
                             (cons _%lp-hd6623666292%_ _%body6623866285%_))))
                        (let ((_%body6623966298%_
                               (reverse _%body6623866285%_)))
                          ((lambda (_%L66302%_ _%L66304%_)
                             (let* ((_%g6632266330%_
                                     (lambda (_%g6632366326%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6632366326%_)))
                                    (_%g6632166357%_
                                     (lambda (_%g6632366334%_)
                                       ((lambda (_%L66337%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66337%_
                                                      (foldr (lambda (_%g6634866351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6634966354%_)
                       (cons _%g6634866351%_ _%g6634966354%_))
                     '()
                     _%L66302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6632366334%_))))
                               (_%g6632166357%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66218%_
                                   _%L66304%_
                                   '#f)))))
                           _%body6623966298%_
                           _%hd6622966266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6623466278%_
                                                   _%target6623166272%_
                                                   '()))
                                                (_%g6622166245%_
                                                 _%g6622266249%_)))))
                                      (_%g6622166245%_ _%g6622266249%_))))
                              (_%g6622166245%_ _%g6622266249%_))))
                      (_%g6622166245%_ _%g6622266249%_)))))
          (_%g6622066361%_ _%stx66218%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#lambda/c|
      (lambda (_%stx66366%_)
        (letrec ((_%make-lambda66369%_
                  (lambda (_%signature66637%_ _%return66639%_ _%body66640%_)
                    (let* ((_%g6664266674%_
                            (lambda (_%g6664366670%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6664366670%_)))
                           (_%g6664166789%_
                            (lambda (_%g6664366678%_)
                              (if (gx#stx-pair? _%g6664366678%_)
                                  (let ((_%e6664866681%_
                                         (gx#syntax-e _%g6664366678%_)))
                                    (let ((_%hd6664966685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6664866681%_)))
                                          (_%tl6665066688%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6664866681%_))))
                                      (if (gx#stx-pair? _%tl6665066688%_)
                                          (let ((_%e6665166691%_
                                                 (gx#syntax-e
                                                  _%tl6665066688%_)))
                                            (let ((_%hd6665266695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6665166691%_)))
                                                  (_%tl6665366698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6665166691%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6665366698%_)
                                                  (let ((_%e6665466701%_
                                                         (gx#syntax-e
                                                          _%tl6665366698%_)))
                                                    (let ((_%hd6665566705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6665466701%_)))
                                                          (_%tl6665666708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6665466701%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6665666708%_)
                                                          (let ((_%e6665766711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6665666708%_)))
                    (let ((_%hd6665866715%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6665766711%_)))
                          (_%tl6665966718%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6665766711%_))))
                      (if (gx#stx-pair/null? _%hd6665866715%_)
                          (let ((_g82750_
                                 (gx#syntax-split-splice _%hd6665866715%_ '0)))
                            (begin
                              (let ((_g82751_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g82750_)
                                           (##vector-length _g82750_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g82751_ 2)))
                                    (error "Context expects 2 values"
                                           _g82751_)))
                              (let ((_%target6666066721%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82750_ 0)))
                                    (_%tl6666266724%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g82750_ 1))))
                                (if (gx#stx-null? _%tl6666266724%_)
                                    (letrec ((_%loop6666366727%_
                                              (lambda (_%hd6666166731%_
                                                       _%body6666766734%_)
                                                (if (gx#stx-pair?
                                                     _%hd6666166731%_)
                                                    (let ((_%e6666466737%_
                                                           (gx#syntax-e
                                                            _%hd6666166731%_)))
                                                      (let ((_%lp-hd6666566741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6666466737%_)))
                    (_%lp-tl6666666744%_
                     (let () (declare (not safe)) (##cdr _%e6666466737%_))))
                (_%loop6666366727%_
                 _%lp-tl6666666744%_
                 (cons _%lp-hd6666566741%_ _%body6666766734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6666866747%_
                                                           (reverse _%body6666766734%_)))
                                                      (if (gx#stx-null?
                                                           _%tl6665966718%_)
                                                          ((lambda (_%L66751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L66753%_
                            _%L66754%_
                            _%L66755%_)
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons _%L66755%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-signature)
                                              (cons (cons _%L66754%_
                                                          (cons _%L66753%_
                                                                (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-procedure-contract)
                        (cons _%L66754%_
                              (foldr (lambda (_%g6678066783%_ _%g6678166786%_)
                                       (cons _%g6678066783%_ _%g6678166786%_))
                                     '()
                                     _%L66751%_)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (gx#stx-source _%stx66366%_)))
                   _%body6666866747%_
                   _%hd6665566705%_
                   _%hd6665266695%_
                   _%hd6664966685%_)
                  (_%g6664266674%_ _%g6664366678%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6666366727%_
                                       _%target6666066721%_
                                       '()))
                                    (_%g6664266674%_ _%g6664366678%_)))))
                          (_%g6664266674%_ _%g6664366678%_))))
                  (_%g6664266674%_ _%g6664366678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6664266674%_
                                                   _%g6664366678%_))))
                                          (_%g6664266674%_ _%g6664366678%_))))
                                  (_%g6664266674%_ _%g6664366678%_)))))
                      (_%g6664166789%_
                       (list (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature66637%_))
                             _%signature66637%_
                             _%return66639%_
                             _%body66640%_))))))
          (let* ((_%__stx8113881139%_ _%stx66366%_)
                 (_%g6637366421%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8113881139%_))))
            (let ((_%__kont8114181142%_
                   (lambda (_%L66592%_ _%L66594%_ _%L66595%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66595%_)
                         (_%make-lambda66369%_
                          _%L66595%_
                          _%L66594%_
                          (foldr (lambda (_%g6661666619%_ _%g6661766622%_)
                                   (cons _%g6661666619%_ _%g6661766622%_))
                                 '()
                                 _%L66592%_))
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66595%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L66594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6662466627%_ _%g6662566630%_)
                        (cons _%g6662466627%_ _%g6662566630%_))
                      '()
                      _%L66592%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8114581146%_
                   (lambda (_%L66478%_ _%L66480%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66480%_)
                         (cons (gx#datum->syntax '#f 'lambda/c)
                               (cons _%L66480%_
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6649866501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6649966504%_)
                  (cons _%g6649866501%_ _%g6649966504%_))
                '()
                _%L66478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66480%_
                                     (foldr (lambda (_%g6650666509%_
                                                     _%g6650766512%_)
                                              (cons _%g6650666509%_
                                                    _%g6650766512%_))
                                            '()
                                            _%L66478%_)))))))
              (let* ((_%__match8120581206%_
                      (lambda (_%e6640166428%_
                               _%hd6640266432%_
                               _%tl6640366435%_
                               _%e6640466438%_
                               _%hd6640566442%_
                               _%tl6640666445%_
                               _%__splice8114781148%_
                               _%target6640766448%_
                               _%tl6640966451%_)
                        (letrec ((_%loop6641066454%_
                                  (lambda (_%hd6640866458%_ _%body6641466461%_)
                                    (if (gx#stx-pair? _%hd6640866458%_)
                                        (let ((_%e6641166464%_
                                               (gx#syntax-e _%hd6640866458%_)))
                                          (let ((_%lp-tl6641366471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6641166464%_)))
                                                (_%lp-hd6641266468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6641166464%_))))
                                            (_%loop6641066454%_
                                             _%lp-tl6641366471%_
                                             (cons _%lp-hd6641266468%_
                                                   _%body6641466461%_))))
                                        (let ((_%body6641566474%_
                                               (reverse _%body6641466461%_)))
                                          (_%__kont8114581146%_
                                           _%body6641566474%_
                                           _%hd6640566442%_))))))
                          (_%loop6641066454%_ _%target6640766448%_ '()))))
                     (_%__match8118581186%_
                      (lambda (_%e6637866522%_
                               _%hd6637966526%_
                               _%tl6638066529%_
                               _%e6638166532%_
                               _%hd6638266536%_
                               _%tl6638366539%_
                               _%e6638466542%_
                               _%hd6638566546%_
                               _%tl6638666549%_
                               _%e6638766552%_
                               _%hd6638866556%_
                               _%tl6638966559%_
                               _%__splice8114381144%_
                               _%target6639066562%_
                               _%tl6639266565%_)
                        (letrec ((_%loop6639366568%_
                                  (lambda (_%hd6639166572%_ _%body6639766575%_)
                                    (if (gx#stx-pair? _%hd6639166572%_)
                                        (let ((_%e6639466578%_
                                               (gx#syntax-e _%hd6639166572%_)))
                                          (let ((_%lp-tl6639666585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6639466578%_)))
                                                (_%lp-hd6639566582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6639466578%_))))
                                            (_%loop6639366568%_
                                             _%lp-tl6639666585%_
                                             (cons _%lp-hd6639566582%_
                                                   _%body6639766575%_))))
                                        (let ((_%body6639866588%_
                                               (reverse _%body6639766575%_)))
                                          (_%__kont8114181142%_
                                           _%body6639866588%_
                                           _%hd6638866556%_
                                           _%hd6638266536%_))))))
                          (_%loop6639366568%_ _%target6639066562%_ '())))))
                (if (gx#stx-pair? _%__stx8113881139%_)
                    (let ((_%e6637866522%_ (gx#syntax-e _%__stx8113881139%_)))
                      (let ((_%tl6638066529%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6637866522%_)))
                            (_%hd6637966526%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6637866522%_))))
                        (if (gx#stx-pair? _%tl6638066529%_)
                            (let ((_%e6638166532%_
                                   (gx#syntax-e _%tl6638066529%_)))
                              (let ((_%tl6638366539%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6638166532%_)))
                                    (_%hd6638266536%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6638166532%_))))
                                (if (gx#stx-pair? _%tl6638366539%_)
                                    (let ((_%e6638466542%_
                                           (gx#syntax-e _%tl6638366539%_)))
                                      (let ((_%tl6638666549%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6638466542%_)))
                                            (_%hd6638566546%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6638466542%_))))
                                        (if (gx#identifier? _%hd6638566546%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g82752_|
                                                 _%hd6638566546%_)
                                                (if (gx#stx-pair?
                                                     _%tl6638666549%_)
                                                    (let ((_%e6638766552%_
                                                           (gx#syntax-e
                                                            _%tl6638666549%_)))
                                                      (let ((_%tl6638966559%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6638766552%_)))
                    (_%hd6638866556%_
                     (let () (declare (not safe)) (##car _%e6638766552%_))))
                (if (gx#stx-pair/null? _%tl6638966559%_)
                    (let ((_%__splice8114381144%_
                           (gx#syntax-split-splice _%tl6638966559%_ '0)))
                      (let ((_%tl6639266565%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8114381144%_ '1)))
                            (_%target6639066562%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8114381144%_ '0))))
                        (if (gx#stx-null? _%tl6639266565%_)
                            (_%__match8118581186%_
                             _%e6637866522%_
                             _%hd6637966526%_
                             _%tl6638066529%_
                             _%e6638166532%_
                             _%hd6638266536%_
                             _%tl6638366539%_
                             _%e6638466542%_
                             _%hd6638566546%_
                             _%tl6638666549%_
                             _%e6638766552%_
                             _%hd6638866556%_
                             _%tl6638966559%_
                             _%__splice8114381144%_
                             _%target6639066562%_
                             _%tl6639266565%_)
                            (if (gx#stx-pair/null? _%tl6638366539%_)
                                (let ((_%__splice8114781148%_
                                       (gx#syntax-split-splice
                                        _%tl6638366539%_
                                        '0)))
                                  (let ((_%tl6640966451%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8114781148%_
                                            '1)))
                                        (_%target6640766448%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8114781148%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6640966451%_)
                                        (_%__match8120581206%_
                                         _%e6637866522%_
                                         _%hd6637966526%_
                                         _%tl6638066529%_
                                         _%e6638166532%_
                                         _%hd6638266536%_
                                         _%tl6638366539%_
                                         _%__splice8114781148%_
                                         _%target6640766448%_
                                         _%tl6640966451%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6637366421%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6637366421%_))))))
                    (if (gx#stx-pair/null? _%tl6638366539%_)
                        (let ((_%__splice8114781148%_
                               (gx#syntax-split-splice _%tl6638366539%_ '0)))
                          (let ((_%tl6640966451%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8114781148%_ '1)))
                                (_%target6640766448%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8114781148%_ '0))))
                            (if (gx#stx-null? _%tl6640966451%_)
                                (_%__match8120581206%_
                                 _%e6637866522%_
                                 _%hd6637966526%_
                                 _%tl6638066529%_
                                 _%e6638166532%_
                                 _%hd6638266536%_
                                 _%tl6638366539%_
                                 _%__splice8114781148%_
                                 _%target6640766448%_
                                 _%tl6640966451%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6637366421%_)))))
                        (let () (declare (not safe)) (_%g6637366421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6638366539%_)
                                                        (let ((_%__splice8114781148%_
                                                               (gx#syntax-split-splice
                                                                _%tl6638366539%_
                                                                '0)))
                                                          (let ((_%tl6640966451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8114781148%_ '1)))
                        (_%target6640766448%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8114781148%_ '0))))
                    (if (gx#stx-null? _%tl6640966451%_)
                        (_%__match8120581206%_
                         _%e6637866522%_
                         _%hd6637966526%_
                         _%tl6638066529%_
                         _%e6638166532%_
                         _%hd6638266536%_
                         _%tl6638366539%_
                         _%__splice8114781148%_
                         _%target6640766448%_
                         _%tl6640966451%_)
                        (let () (declare (not safe)) (_%g6637366421%_)))))
                (let () (declare (not safe)) (_%g6637366421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl6638366539%_)
                                                    (let ((_%__splice8114781148%_
                                                           (gx#syntax-split-splice
                                                            _%tl6638366539%_
                                                            '0)))
                                                      (let ((_%tl6640966451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8114781148%_ '1)))
                    (_%target6640766448%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8114781148%_ '0))))
                (if (gx#stx-null? _%tl6640966451%_)
                    (_%__match8120581206%_
                     _%e6637866522%_
                     _%hd6637966526%_
                     _%tl6638066529%_
                     _%e6638166532%_
                     _%hd6638266536%_
                     _%tl6638366539%_
                     _%__splice8114781148%_
                     _%target6640766448%_
                     _%tl6640966451%_)
                    (let () (declare (not safe)) (_%g6637366421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6637366421%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl6638366539%_)
                                                (let ((_%__splice8114781148%_
                                                       (gx#syntax-split-splice
                                                        _%tl6638366539%_
                                                        '0)))
                                                  (let ((_%tl6640966451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8114781148%_
                                                            '1)))
                                                        (_%target6640766448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8114781148%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6640966451%_)
                                                        (_%__match8120581206%_
                                                         _%e6637866522%_
                                                         _%hd6637966526%_
                                                         _%tl6638066529%_
                                                         _%e6638166532%_
                                                         _%hd6638266536%_
                                                         _%tl6638366539%_
                                                         _%__splice8114781148%_
                                                         _%target6640766448%_
                                                         _%tl6640966451%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6637366421%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6637366421%_))))))
                                    (if (gx#stx-pair/null? _%tl6638366539%_)
                                        (let ((_%__splice8114781148%_
                                               (gx#syntax-split-splice
                                                _%tl6638366539%_
                                                '0)))
                                          (let ((_%tl6640966451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8114781148%_
                                                    '1)))
                                                (_%target6640766448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8114781148%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6640966451%_)
                                                (_%__match8120581206%_
                                                 _%e6637866522%_
                                                 _%hd6637966526%_
                                                 _%tl6638066529%_
                                                 _%e6638166532%_
                                                 _%hd6638266536%_
                                                 _%tl6638366539%_
                                                 _%__splice8114781148%_
                                                 _%target6640766448%_
                                                 _%tl6640966451%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6637366421%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6637366421%_))))))
                            (let () (declare (not safe)) (_%g6637366421%_)))))
                    (let () (declare (not safe)) (_%g6637366421%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def*/c|
      (lambda (_%$stx66796%_)
        (let* ((_%g6680066824%_
                (lambda (_%g6680166820%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6680166820%_)))
               (_%g6679966909%_
                (lambda (_%g6680166828%_)
                  (if (gx#stx-pair? _%g6680166828%_)
                      (let ((_%e6680466831%_ (gx#syntax-e _%g6680166828%_)))
                        (let ((_%hd6680566835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6680466831%_)))
                              (_%tl6680666838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6680466831%_))))
                          (if (gx#stx-pair? _%tl6680666838%_)
                              (let ((_%e6680766841%_
                                     (gx#syntax-e _%tl6680666838%_)))
                                (let ((_%hd6680866845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6680766841%_)))
                                      (_%tl6680966848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6680766841%_))))
                                  (if (gx#stx-pair/null? _%tl6680966848%_)
                                      (let ((_g82753_
                                             (gx#syntax-split-splice
                                              _%tl6680966848%_
                                              '0)))
                                        (begin
                                          (let ((_g82754_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82753_)
                                                       (##vector-length
                                                        _g82753_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82754_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82754_)))
                                          (let ((_%target6681066851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82753_ 0)))
                                                (_%tl6681266854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82753_ 1))))
                                            (if (gx#stx-null? _%tl6681266854%_)
                                                (letrec ((_%loop6681366857%_
                                                          (lambda (_%hd6681166861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause6681766864%_)
                    (if (gx#stx-pair? _%hd6681166861%_)
                        (let ((_%e6681466867%_ (gx#syntax-e _%hd6681166861%_)))
                          (let ((_%lp-hd6681566871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6681466867%_)))
                                (_%lp-tl6681666874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6681466867%_))))
                            (_%loop6681366857%_
                             _%lp-tl6681666874%_
                             (cons _%lp-hd6681566871%_ _%clause6681766864%_))))
                        (let ((_%clause6681866877%_
                               (reverse _%clause6681766864%_)))
                          ((lambda (_%L66881%_ _%L66883%_)
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L66883%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'case-lambda/c)
                                                     (foldr (lambda (_%g6690066903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6690166906%_)
                      (cons _%g6690066903%_ _%g6690166906%_))
                    '()
                    _%L66881%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause6681866877%_
                           _%hd6680866845%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6681366857%_
                                                   _%target6681066851%_
                                                   '()))
                                                (_%g6680066824%_
                                                 _%g6680166828%_)))))
                                      (_%g6680066824%_ _%g6680166828%_))))
                              (_%g6680066824%_ _%g6680166828%_))))
                      (_%g6680066824%_ _%g6680166828%_)))))
          (_%g6679966909%_ _%$stx66796%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#case-lambda/c|
      (lambda (_%stx66914%_)
        (letrec ((_%is-clause-signature?66917%_
                  (lambda (_%clause67451%_)
                    (let* ((_%__stx8120881209%_ _%clause67451%_)
                           (_%g6745567497%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8120881209%_))))
                      (let ((_%__kont8121181212%_
                             (lambda (_%L67629%_ _%L67631%_ _%L67632%_) '#t))
                            (_%__kont8121581216%_
                             (lambda (_%L67544%_ _%L67546%_)
                               (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                _%L67546%_))))
                        (let* ((_%__match8126381264%_
                                (lambda (_%e6748067504%_
                                         _%hd6748167508%_
                                         _%tl6748267511%_
                                         _%__splice8121781218%_
                                         _%target6748367514%_
                                         _%tl6748567517%_)
                                  (letrec ((_%loop6748667520%_
                                            (lambda (_%hd6748467524%_
                                                     _%body6749067527%_)
                                              (if (gx#stx-pair?
                                                   _%hd6748467524%_)
                                                  (let ((_%e6748767530%_
                                                         (gx#syntax-e
                                                          _%hd6748467524%_)))
                                                    (let ((_%lp-tl6748967537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6748767530%_)))
                                                          (_%lp-hd6748867534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6748767530%_))))
                                                      (_%loop6748667520%_
                                                       _%lp-tl6748967537%_
                                                       (cons _%lp-hd6748867534%_
                                                             _%body6749067527%_))))
                                                  (let ((_%body6749167540%_
                                                         (reverse _%body6749067527%_)))
                                                    (_%__kont8121581216%_
                                                     _%body6749167540%_
                                                     _%hd6748167508%_))))))
                                    (_%loop6748667520%_
                                     _%target6748367514%_
                                     '()))))
                               (_%__match8124981250%_
                                (lambda (_%e6746067569%_
                                         _%hd6746167573%_
                                         _%tl6746267576%_
                                         _%e6746367579%_
                                         _%hd6746467583%_
                                         _%tl6746567586%_
                                         _%e6746667589%_
                                         _%hd6746767593%_
                                         _%tl6746867596%_
                                         _%__splice8121381214%_
                                         _%target6746967599%_
                                         _%tl6747167602%_)
                                  (letrec ((_%loop6747267605%_
                                            (lambda (_%hd6747067609%_
                                                     _%body6747667612%_)
                                              (if (gx#stx-pair?
                                                   _%hd6747067609%_)
                                                  (let ((_%e6747367615%_
                                                         (gx#syntax-e
                                                          _%hd6747067609%_)))
                                                    (let ((_%lp-tl6747567622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6747367615%_)))
                                                          (_%lp-hd6747467619%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6747367615%_))))
                                                      (_%loop6747267605%_
                                                       _%lp-tl6747567622%_
                                                       (cons _%lp-hd6747467619%_
                                                             _%body6747667612%_))))
                                                  (let ((_%body6747767625%_
                                                         (reverse _%body6747667612%_)))
                                                    (_%__kont8121181212%_
                                                     _%body6747767625%_
                                                     _%hd6746767593%_
                                                     _%hd6746167573%_))))))
                                    (_%loop6747267605%_
                                     _%target6746967599%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8120881209%_)
                              (let ((_%e6746067569%_
                                     (gx#syntax-e _%__stx8120881209%_)))
                                (let ((_%tl6746267576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6746067569%_)))
                                      (_%hd6746167573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6746067569%_))))
                                  (if (gx#stx-pair? _%tl6746267576%_)
                                      (let ((_%e6746367579%_
                                             (gx#syntax-e _%tl6746267576%_)))
                                        (let ((_%tl6746567586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6746367579%_)))
                                              (_%hd6746467583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6746367579%_))))
                                          (if (gx#identifier? _%hd6746467583%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82755_|
                                                   _%hd6746467583%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6746567586%_)
                                                      (let ((_%e6746667589%_
                                                             (gx#syntax-e
                                                              _%tl6746567586%_)))
                                                        (let ((_%tl6746867596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6746667589%_)))
                      (_%hd6746767593%_
                       (let () (declare (not safe)) (##car _%e6746667589%_))))
                  (if (gx#stx-pair/null? _%tl6746867596%_)
                      (let ((_%__splice8121381214%_
                             (gx#syntax-split-splice _%tl6746867596%_ '0)))
                        (let ((_%tl6747167602%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8121381214%_ '1)))
                              (_%target6746967599%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8121381214%_ '0))))
                          (if (gx#stx-null? _%tl6747167602%_)
                              (_%__match8124981250%_
                               _%e6746067569%_
                               _%hd6746167573%_
                               _%tl6746267576%_
                               _%e6746367579%_
                               _%hd6746467583%_
                               _%tl6746567586%_
                               _%e6746667589%_
                               _%hd6746767593%_
                               _%tl6746867596%_
                               _%__splice8121381214%_
                               _%target6746967599%_
                               _%tl6747167602%_)
                              (if (gx#stx-pair/null? _%tl6746267576%_)
                                  (let ((_%__splice8121781218%_
                                         (gx#syntax-split-splice
                                          _%tl6746267576%_
                                          '0)))
                                    (let ((_%tl6748567517%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8121781218%_
                                              '1)))
                                          (_%target6748367514%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8121781218%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6748567517%_)
                                          (_%__match8126381264%_
                                           _%e6746067569%_
                                           _%hd6746167573%_
                                           _%tl6746267576%_
                                           _%__splice8121781218%_
                                           _%target6748367514%_
                                           _%tl6748567517%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6745567497%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6745567497%_))))))
                      (if (gx#stx-pair/null? _%tl6746267576%_)
                          (let ((_%__splice8121781218%_
                                 (gx#syntax-split-splice _%tl6746267576%_ '0)))
                            (let ((_%tl6748567517%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8121781218%_ '1)))
                                  (_%target6748367514%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8121781218%_
                                      '0))))
                              (if (gx#stx-null? _%tl6748567517%_)
                                  (_%__match8126381264%_
                                   _%e6746067569%_
                                   _%hd6746167573%_
                                   _%tl6746267576%_
                                   _%__splice8121781218%_
                                   _%target6748367514%_
                                   _%tl6748567517%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6745567497%_)))))
                          (let () (declare (not safe)) (_%g6745567497%_))))))
              (if (gx#stx-pair/null? _%tl6746267576%_)
                  (let ((_%__splice8121781218%_
                         (gx#syntax-split-splice _%tl6746267576%_ '0)))
                    (let ((_%tl6748567517%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8121781218%_ '1)))
                          (_%target6748367514%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8121781218%_ '0))))
                      (if (gx#stx-null? _%tl6748567517%_)
                          (_%__match8126381264%_
                           _%e6746067569%_
                           _%hd6746167573%_
                           _%tl6746267576%_
                           _%__splice8121781218%_
                           _%target6748367514%_
                           _%tl6748567517%_)
                          (let () (declare (not safe)) (_%g6745567497%_)))))
                  (let () (declare (not safe)) (_%g6745567497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6746267576%_)
                                                      (let ((_%__splice8121781218%_
                                                             (gx#syntax-split-splice
                                                              _%tl6746267576%_
                                                              '0)))
                                                        (let ((_%tl6748567517%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8121781218%_ '1)))
                      (_%target6748367514%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8121781218%_ '0))))
                  (if (gx#stx-null? _%tl6748567517%_)
                      (_%__match8126381264%_
                       _%e6746067569%_
                       _%hd6746167573%_
                       _%tl6746267576%_
                       _%__splice8121781218%_
                       _%target6748367514%_
                       _%tl6748567517%_)
                      (let () (declare (not safe)) (_%g6745567497%_)))))
              (let () (declare (not safe)) (_%g6745567497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6746267576%_)
                                                  (let ((_%__splice8121781218%_
                                                         (gx#syntax-split-splice
                                                          _%tl6746267576%_
                                                          '0)))
                                                    (let ((_%tl6748567517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8121781218%_
                                                              '1)))
                                                          (_%target6748367514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8121781218%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6748567517%_)
                                                          (_%__match8126381264%_
                                                           _%e6746067569%_
                                                           _%hd6746167573%_
                                                           _%tl6746267576%_
                                                           _%__splice8121781218%_
                                                           _%target6748367514%_
                                                           _%tl6748567517%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6745567497%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6745567497%_))))))
                                      (if (gx#stx-pair/null? _%tl6746267576%_)
                                          (let ((_%__splice8121781218%_
                                                 (gx#syntax-split-splice
                                                  _%tl6746267576%_
                                                  '0)))
                                            (let ((_%tl6748567517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8121781218%_
                                                      '1)))
                                                  (_%target6748367514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8121781218%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6748567517%_)
                                                  (_%__match8126381264%_
                                                   _%e6746067569%_
                                                   _%hd6746167573%_
                                                   _%tl6746267576%_
                                                   _%__splice8121781218%_
                                                   _%target6748367514%_
                                                   _%tl6748567517%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6745567497%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6745567497%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6745567497%_))))))))
                 (_%clause-e66919%_
                  (lambda (_%clause67191%_)
                    (let* ((_%__stx8126681267%_ _%clause67191%_)
                           (_%g6719567237%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8126681267%_))))
                      (let ((_%__kont8126981270%_
                             (lambda (_%L67377%_ _%L67379%_ _%L67380%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67380%_)
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/contract~Interface[1]#check-signature!__%|
                                        '#f
                                        '#f
                                        '#f
                                        _%stx66914%_
                                        _%L67380%_
                                        _%L67379%_))
                                     (let* ((_%g6740067408%_
                                             (lambda (_%g6740167404%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g6740167404%_)))
                                            (_%g6739967435%_
                                             (lambda (_%g6740167412%_)
                                               ((lambda (_%L67415%_)
                                                  (cons _%L67415%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-procedure-signature)
                            (cons (cons _%L67380%_
                                        (cons _%L67379%_ (cons '#f '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-contract)
                                              (cons _%L67380%_
                                                    (foldr (lambda (_%g6742667429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6742767432%_)
                     (cons _%g6742667429%_ _%g6742767432%_))
                   '()
                   _%L67377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g6740167412%_))))
                                       (_%g6739967435%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                           _%L67380%_)))))
                                   (cons _%L67380%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'with-procedure-signature)
                                                     (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L67379%_ (cons '#f '())))
                   (foldr (lambda (_%g6743867441%_ _%g6743967444%_)
                            (cons _%g6743867441%_ _%g6743967444%_))
                          '()
                          _%L67377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                            (_%__kont8127381274%_
                             (lambda (_%L67284%_ _%L67286%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67286%_)
                                   (_%clause-e66919%_
                                    (cons _%L67286%_
                                          (cons (gx#datum->syntax '#f '=>)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       ':t)
                                                      (foldr (lambda (_%g6730167304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6730267307%_)
                       (cons _%g6730167304%_ _%g6730267307%_))
                     '()
                     _%L67284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%clause67191%_))))
                        (let* ((_%__match8132181322%_
                                (lambda (_%e6722067244%_
                                         _%hd6722167248%_
                                         _%tl6722267251%_
                                         _%__splice8127581276%_
                                         _%target6722367254%_
                                         _%tl6722567257%_)
                                  (letrec ((_%loop6722667260%_
                                            (lambda (_%hd6722467264%_
                                                     _%body6723067267%_)
                                              (if (gx#stx-pair?
                                                   _%hd6722467264%_)
                                                  (let ((_%e6722767270%_
                                                         (gx#syntax-e
                                                          _%hd6722467264%_)))
                                                    (let ((_%lp-tl6722967277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6722767270%_)))
                                                          (_%lp-hd6722867274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6722767270%_))))
                                                      (_%loop6722667260%_
                                                       _%lp-tl6722967277%_
                                                       (cons _%lp-hd6722867274%_
                                                             _%body6723067267%_))))
                                                  (let ((_%body6723167280%_
                                                         (reverse _%body6723067267%_)))
                                                    (_%__kont8127381274%_
                                                     _%body6723167280%_
                                                     _%hd6722167248%_))))))
                                    (_%loop6722667260%_
                                     _%target6722367254%_
                                     '()))))
                               (_%__match8130781308%_
                                (lambda (_%e6720067317%_
                                         _%hd6720167321%_
                                         _%tl6720267324%_
                                         _%e6720367327%_
                                         _%hd6720467331%_
                                         _%tl6720567334%_
                                         _%e6720667337%_
                                         _%hd6720767341%_
                                         _%tl6720867344%_
                                         _%__splice8127181272%_
                                         _%target6720967347%_
                                         _%tl6721167350%_)
                                  (letrec ((_%loop6721267353%_
                                            (lambda (_%hd6721067357%_
                                                     _%body6721667360%_)
                                              (if (gx#stx-pair?
                                                   _%hd6721067357%_)
                                                  (let ((_%e6721367363%_
                                                         (gx#syntax-e
                                                          _%hd6721067357%_)))
                                                    (let ((_%lp-tl6721567370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6721367363%_)))
                                                          (_%lp-hd6721467367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6721367363%_))))
                                                      (_%loop6721267353%_
                                                       _%lp-tl6721567370%_
                                                       (cons _%lp-hd6721467367%_
                                                             _%body6721667360%_))))
                                                  (let ((_%body6721767373%_
                                                         (reverse _%body6721667360%_)))
                                                    (_%__kont8126981270%_
                                                     _%body6721767373%_
                                                     _%hd6720767341%_
                                                     _%hd6720167321%_))))))
                                    (_%loop6721267353%_
                                     _%target6720967347%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8126681267%_)
                              (let ((_%e6720067317%_
                                     (gx#syntax-e _%__stx8126681267%_)))
                                (let ((_%tl6720267324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6720067317%_)))
                                      (_%hd6720167321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6720067317%_))))
                                  (if (gx#stx-pair? _%tl6720267324%_)
                                      (let ((_%e6720367327%_
                                             (gx#syntax-e _%tl6720267324%_)))
                                        (let ((_%tl6720567334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6720367327%_)))
                                              (_%hd6720467331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6720367327%_))))
                                          (if (gx#identifier? _%hd6720467331%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82756_|
                                                   _%hd6720467331%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6720567334%_)
                                                      (let ((_%e6720667337%_
                                                             (gx#syntax-e
                                                              _%tl6720567334%_)))
                                                        (let ((_%tl6720867344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6720667337%_)))
                      (_%hd6720767341%_
                       (let () (declare (not safe)) (##car _%e6720667337%_))))
                  (if (gx#stx-pair/null? _%tl6720867344%_)
                      (let ((_%__splice8127181272%_
                             (gx#syntax-split-splice _%tl6720867344%_ '0)))
                        (let ((_%tl6721167350%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8127181272%_ '1)))
                              (_%target6720967347%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8127181272%_ '0))))
                          (if (gx#stx-null? _%tl6721167350%_)
                              (_%__match8130781308%_
                               _%e6720067317%_
                               _%hd6720167321%_
                               _%tl6720267324%_
                               _%e6720367327%_
                               _%hd6720467331%_
                               _%tl6720567334%_
                               _%e6720667337%_
                               _%hd6720767341%_
                               _%tl6720867344%_
                               _%__splice8127181272%_
                               _%target6720967347%_
                               _%tl6721167350%_)
                              (if (gx#stx-pair/null? _%tl6720267324%_)
                                  (let ((_%__splice8127581276%_
                                         (gx#syntax-split-splice
                                          _%tl6720267324%_
                                          '0)))
                                    (let ((_%tl6722567257%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8127581276%_
                                              '1)))
                                          (_%target6722367254%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8127581276%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6722567257%_)
                                          (_%__match8132181322%_
                                           _%e6720067317%_
                                           _%hd6720167321%_
                                           _%tl6720267324%_
                                           _%__splice8127581276%_
                                           _%target6722367254%_
                                           _%tl6722567257%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6719567237%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6719567237%_))))))
                      (if (gx#stx-pair/null? _%tl6720267324%_)
                          (let ((_%__splice8127581276%_
                                 (gx#syntax-split-splice _%tl6720267324%_ '0)))
                            (let ((_%tl6722567257%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8127581276%_ '1)))
                                  (_%target6722367254%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8127581276%_
                                      '0))))
                              (if (gx#stx-null? _%tl6722567257%_)
                                  (_%__match8132181322%_
                                   _%e6720067317%_
                                   _%hd6720167321%_
                                   _%tl6720267324%_
                                   _%__splice8127581276%_
                                   _%target6722367254%_
                                   _%tl6722567257%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6719567237%_)))))
                          (let () (declare (not safe)) (_%g6719567237%_))))))
              (if (gx#stx-pair/null? _%tl6720267324%_)
                  (let ((_%__splice8127581276%_
                         (gx#syntax-split-splice _%tl6720267324%_ '0)))
                    (let ((_%tl6722567257%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8127581276%_ '1)))
                          (_%target6722367254%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8127581276%_ '0))))
                      (if (gx#stx-null? _%tl6722567257%_)
                          (_%__match8132181322%_
                           _%e6720067317%_
                           _%hd6720167321%_
                           _%tl6720267324%_
                           _%__splice8127581276%_
                           _%target6722367254%_
                           _%tl6722567257%_)
                          (let () (declare (not safe)) (_%g6719567237%_)))))
                  (let () (declare (not safe)) (_%g6719567237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6720267324%_)
                                                      (let ((_%__splice8127581276%_
                                                             (gx#syntax-split-splice
                                                              _%tl6720267324%_
                                                              '0)))
                                                        (let ((_%tl6722567257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8127581276%_ '1)))
                      (_%target6722367254%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8127581276%_ '0))))
                  (if (gx#stx-null? _%tl6722567257%_)
                      (_%__match8132181322%_
                       _%e6720067317%_
                       _%hd6720167321%_
                       _%tl6720267324%_
                       _%__splice8127581276%_
                       _%target6722367254%_
                       _%tl6722567257%_)
                      (let () (declare (not safe)) (_%g6719567237%_)))))
              (let () (declare (not safe)) (_%g6719567237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6720267324%_)
                                                  (let ((_%__splice8127581276%_
                                                         (gx#syntax-split-splice
                                                          _%tl6720267324%_
                                                          '0)))
                                                    (let ((_%tl6722567257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8127581276%_
                                                              '1)))
                                                          (_%target6722367254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8127581276%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6722567257%_)
                                                          (_%__match8132181322%_
                                                           _%e6720067317%_
                                                           _%hd6720167321%_
                                                           _%tl6720267324%_
                                                           _%__splice8127581276%_
                                                           _%target6722367254%_
                                                           _%tl6722567257%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6719567237%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6719567237%_))))))
                                      (if (gx#stx-pair/null? _%tl6720267324%_)
                                          (let ((_%__splice8127581276%_
                                                 (gx#syntax-split-splice
                                                  _%tl6720267324%_
                                                  '0)))
                                            (let ((_%tl6722567257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8127581276%_
                                                      '1)))
                                                  (_%target6722367254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8127581276%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6722567257%_)
                                                  (_%__match8132181322%_
                                                   _%e6720067317%_
                                                   _%hd6720167321%_
                                                   _%tl6720267324%_
                                                   _%__splice8127581276%_
                                                   _%target6722367254%_
                                                   _%tl6722567257%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6719567237%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6719567237%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6719567237%_)))))))))
          (let* ((_%__stx8132481325%_ _%stx66914%_)
                 (_%g6692266955%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8132481325%_))))
            (let ((_%__kont8132781328%_
                   (lambda (_%L67074%_)
                     (let* ((_%g6709767114%_
                             (lambda (_%g6709867110%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6709867110%_)))
                            (_%g6709667175%_
                             (lambda (_%g6709867118%_)
                               (if (gx#stx-pair/null? _%g6709867118%_)
                                   (let ((_g82757_
                                          (gx#syntax-split-splice
                                           _%g6709867118%_
                                           '0)))
                                     (begin
                                       (let ((_g82758_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g82757_)
                                                    (##vector-length _g82757_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g82758_ 2)))
                                             (error "Context expects 2 values"
                                                    _g82758_)))
                                       (let ((_%target6710067121%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g82757_ 0)))
                                             (_%tl6710267124%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g82757_ 1))))
                                         (if (gx#stx-null? _%tl6710267124%_)
                                             (letrec ((_%loop6710367127%_
                                                       (lambda (_%hd6710167131%_
                                                                _%clause6710767134%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6710167131%_)
                                                             (let ((_%e6710467137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6710167131%_)))
                       (let ((_%lp-hd6710567141%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6710467137%_)))
                             (_%lp-tl6710667144%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6710467137%_))))
                         (_%loop6710367127%_
                          _%lp-tl6710667144%_
                          (cons _%lp-hd6710567141%_ _%clause6710767134%_))))
                     (let ((_%clause6710867147%_
                            (reverse _%clause6710767134%_)))
                       ((lambda (_%L67151%_)
                          (cons (gx#datum->syntax '#f 'case-lambda)
                                (foldr (lambda (_%g6716667169%_
                                                _%g6716767172%_)
                                         (cons _%g6716667169%_
                                               _%g6716767172%_))
                                       '()
                                       _%L67151%_)))
                        _%clause6710867147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6710367127%_
                                                _%target6710067121%_
                                                '()))
                                             (_%g6709767114%_
                                              _%g6709867118%_)))))
                                   (_%g6709767114%_ _%g6709867118%_)))))
                       (_%g6709667175%_
                        (map _%clause-e66919%_
                             (foldr (lambda (_%g6717867181%_ _%g6717967184%_)
                                      (cons _%g6717867181%_ _%g6717967184%_))
                                    '()
                                    _%L67074%_))))))
                  (_%__kont8133181332%_
                   (lambda (_%L67002%_)
                     (cons (gx#datum->syntax '#f 'case-lambda)
                           (foldr (lambda (_%g6701867021%_ _%g6701967024%_)
                                    (cons _%g6701867021%_ _%g6701967024%_))
                                  '()
                                  _%L67002%_)))))
              (let* ((_%__match8136381364%_
                      (lambda (_%e6693866962%_
                               _%hd6693966966%_
                               _%tl6694066969%_
                               _%__splice8133381334%_
                               _%target6694166972%_
                               _%tl6694366975%_)
                        (letrec ((_%loop6694466978%_
                                  (lambda (_%hd6694266982%_
                                           _%clause6694866985%_)
                                    (if (gx#stx-pair? _%hd6694266982%_)
                                        (let ((_%e6694566988%_
                                               (gx#syntax-e _%hd6694266982%_)))
                                          (let ((_%lp-tl6694766995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6694566988%_)))
                                                (_%lp-hd6694666992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6694566988%_))))
                                            (_%loop6694466978%_
                                             _%lp-tl6694766995%_
                                             (cons _%lp-hd6694666992%_
                                                   _%clause6694866985%_))))
                                        (let ((_%clause6694966998%_
                                               (reverse _%clause6694866985%_)))
                                          (_%__kont8133181332%_
                                           _%clause6694966998%_))))))
                          (_%loop6694466978%_ _%target6694166972%_ '()))))
                     (_%__match8134981350%_
                      (lambda (_%e6692567034%_
                               _%hd6692667038%_
                               _%tl6692767041%_
                               _%__splice8132981330%_
                               _%target6692867044%_
                               _%tl6693067047%_)
                        (letrec ((_%loop6693167050%_
                                  (lambda (_%hd6692967054%_
                                           _%clause6693567057%_)
                                    (if (gx#stx-pair? _%hd6692967054%_)
                                        (let ((_%e6693267060%_
                                               (gx#syntax-e _%hd6692967054%_)))
                                          (let ((_%lp-tl6693467067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6693267060%_)))
                                                (_%lp-hd6693367064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6693267060%_))))
                                            (_%loop6693167050%_
                                             _%lp-tl6693467067%_
                                             (cons _%lp-hd6693367064%_
                                                   _%clause6693567057%_))))
                                        (let* ((_%clause6693667070%_
                                                (reverse _%clause6693567057%_))
                                               (_%L67074%_
                                                _%clause6693667070%_))
                                          (if (ormap _%is-clause-signature?66917%_
                                                     (foldr (lambda (_%g6708867091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6708967094%_)
                      (cons _%g6708867091%_ _%g6708967094%_))
                    '()
                    _%L67074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8132781328%_ _%L67074%_)
                                              (_%__match8136381364%_
                                               _%e6692567034%_
                                               _%hd6692667038%_
                                               _%tl6692767041%_
                                               _%__splice8132981330%_
                                               _%target6692867044%_
                                               _%tl6693067047%_)))))))
                          (_%loop6693167050%_ _%target6692867044%_ '())))))
                (if (gx#stx-pair? _%__stx8132481325%_)
                    (let ((_%e6692567034%_ (gx#syntax-e _%__stx8132481325%_)))
                      (let ((_%tl6692767041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6692567034%_)))
                            (_%hd6692667038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6692567034%_))))
                        (if (gx#stx-pair/null? _%tl6692767041%_)
                            (let ((_%__splice8132981330%_
                                   (gx#syntax-split-splice
                                    _%tl6692767041%_
                                    '0)))
                              (let ((_%tl6693067047%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8132981330%_
                                        '1)))
                                    (_%target6692867044%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8132981330%_
                                        '0))))
                                (if (gx#stx-null? _%tl6693067047%_)
                                    (_%__match8134981350%_
                                     _%e6692567034%_
                                     _%hd6692667038%_
                                     _%tl6692767041%_
                                     _%__splice8132981330%_
                                     _%target6692867044%_
                                     _%tl6693067047%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6692266955%_)))))
                            (let () (declare (not safe)) (_%g6692266955%_)))))
                    (let () (declare (not safe)) (_%g6692266955%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#@method|
      (lambda (_%stx67663%_)
        (let* ((_%__stx8136681367%_ _%stx67663%_)
               (_%g6766767712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8136681367%_))))
          (let ((_%__kont8136981370%_
                 (lambda (_%L67868%_ _%L67870%_)
                   (let* ((_%str67887%_ (symbol->string (gx#stx-e _%L67870%_)))
                          (_%ix67890%_ (string-rindex _%str67887%_ '#\.))
                          (_%g6789567910%_
                           (lambda (_%g6789667906%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6789667906%_)))
                          (_%g6789467966%_
                           (lambda (_%g6789667914%_)
                             (if (gx#stx-pair? _%g6789667914%_)
                                 (let ((_%e6789967917%_
                                        (gx#syntax-e _%g6789667914%_)))
                                   (let ((_%hd6790067921%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e6789967917%_)))
                                         (_%tl6790167924%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e6789967917%_))))
                                     (if (gx#stx-pair? _%tl6790167924%_)
                                         (let ((_%e6790267927%_
                                                (gx#syntax-e
                                                 _%tl6790167924%_)))
                                           (let ((_%hd6790367931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e6790267927%_)))
                                                 (_%tl6790467934%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e6790267927%_))))
                                             (if (gx#stx-null?
                                                  _%tl6790467934%_)
                                                 ((lambda (_%L67937%_
                                                           _%L67939%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'call-method)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%%ref-dotted)
                              (cons _%L67939%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L67937%_ '()))
                              (foldr (lambda (_%g6795767960%_ _%g6795867963%_)
                                       (cons _%g6795767960%_ _%g6795867963%_))
                                     '()
                                     _%L67868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd6790367931%_
                                                  _%hd6790067921%_)
                                                 (_%g6789567910%_
                                                  _%g6789667914%_))))
                                         (_%g6789567910%_ _%g6789667914%_))))
                                 (_%g6789567910%_ _%g6789667914%_)))))
                     (_%g6789467966%_
                      (list (gx#stx-identifier
                             _%L67870%_
                             (substring _%str67887%_ '0 _%ix67890%_))
                            (let ((__tmp82759
                                   (substring
                                    _%str67887%_
                                    (fx1+ _%ix67890%_)
                                    (string-length _%str67887%_))))
                              (declare (not safe))
                              (##string->symbol __tmp82759)))))))
                (_%__kont8137381374%_
                 (lambda (_%L67779%_ _%L67781%_ _%L67782%_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _%L67781%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L67782%_ '()))
                                     (foldr (lambda (_%g6780267805%_
                                                     _%g6780367808%_)
                                              (cons _%g6780267805%_
                                                    _%g6780367808%_))
                                            '()
                                            _%L67779%_)))))))
            (let* ((_%__match8142381424%_
                    (lambda (_%e6768967719%_
                             _%hd6769067723%_
                             _%tl6769167726%_
                             _%e6769267729%_
                             _%hd6769367733%_
                             _%tl6769467736%_
                             _%e6769567739%_
                             _%hd6769667743%_
                             _%tl6769767746%_
                             _%__splice8137581376%_
                             _%target6769867749%_
                             _%tl6770067752%_)
                      (letrec ((_%loop6770167755%_
                                (lambda (_%hd6769967759%_ _%arg6770567762%_)
                                  (if (gx#stx-pair? _%hd6769967759%_)
                                      (let ((_%e6770267765%_
                                             (gx#syntax-e _%hd6769967759%_)))
                                        (let ((_%lp-tl6770467772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6770267765%_)))
                                              (_%lp-hd6770367769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6770267765%_))))
                                          (_%loop6770167755%_
                                           _%lp-tl6770467772%_
                                           (cons _%lp-hd6770367769%_
                                                 _%arg6770567762%_))))
                                      (let ((_%arg6770667775%_
                                             (reverse _%arg6770567762%_)))
                                        (_%__kont8137381374%_
                                         _%arg6770667775%_
                                         _%hd6769667743%_
                                         _%hd6769367733%_))))))
                        (_%loop6770167755%_ _%target6769867749%_ '()))))
                   (_%__match8140981410%_
                    (lambda (_%e6768967719%_
                             _%hd6769067723%_
                             _%tl6769167726%_
                             _%e6769267729%_
                             _%hd6769367733%_
                             _%tl6769467736%_)
                      (if (gx#stx-pair? _%tl6769467736%_)
                          (let ((_%e6769567739%_
                                 (gx#syntax-e _%tl6769467736%_)))
                            (let ((_%tl6769767746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6769567739%_)))
                                  (_%hd6769667743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6769567739%_))))
                              (if (gx#stx-pair/null? _%tl6769767746%_)
                                  (let ((_%__splice8137581376%_
                                         (gx#syntax-split-splice
                                          _%tl6769767746%_
                                          '0)))
                                    (let ((_%tl6770067752%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8137581376%_
                                              '1)))
                                          (_%target6769867749%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8137581376%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6770067752%_)
                                          (_%__match8142381424%_
                                           _%e6768967719%_
                                           _%hd6769067723%_
                                           _%tl6769167726%_
                                           _%e6769267729%_
                                           _%hd6769367733%_
                                           _%tl6769467736%_
                                           _%e6769567739%_
                                           _%hd6769667743%_
                                           _%tl6769767746%_
                                           _%__splice8137581376%_
                                           _%target6769867749%_
                                           _%tl6770067752%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6766767712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6766767712%_)))))
                          (let () (declare (not safe)) (_%g6766767712%_)))))
                   (_%__match8139781398%_
                    (lambda (_%e6767167818%_
                             _%hd6767267822%_
                             _%tl6767367825%_
                             _%e6767467828%_
                             _%hd6767567832%_
                             _%tl6767667835%_
                             _%__splice8137181372%_
                             _%target6767767838%_
                             _%tl6767967841%_)
                      (letrec ((_%loop6768067844%_
                                (lambda (_%hd6767867848%_ _%arg6768467851%_)
                                  (if (gx#stx-pair? _%hd6767867848%_)
                                      (let ((_%e6768167854%_
                                             (gx#syntax-e _%hd6767867848%_)))
                                        (let ((_%lp-tl6768367861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6768167854%_)))
                                              (_%lp-hd6768267858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6768167854%_))))
                                          (_%loop6768067844%_
                                           _%lp-tl6768367861%_
                                           (cons _%lp-hd6768267858%_
                                                 _%arg6768467851%_))))
                                      (let ((_%arg6768567864%_
                                             (reverse _%arg6768467851%_)))
                                        (let ((_%L67868%_ _%arg6768567864%_)
                                              (_%L67870%_ _%hd6767567832%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                 _%L67870%_))
                                              (_%__kont8136981370%_
                                               _%L67868%_
                                               _%L67870%_)
                                              (_%__match8140981410%_
                                               _%e6767167818%_
                                               _%hd6767267822%_
                                               _%tl6767367825%_
                                               _%e6767467828%_
                                               _%hd6767567832%_
                                               _%tl6767667835%_))))))))
                        (_%loop6768067844%_ _%target6767767838%_ '())))))
              (if (gx#stx-pair? _%__stx8136681367%_)
                  (let ((_%e6767167818%_ (gx#syntax-e _%__stx8136681367%_)))
                    (let ((_%tl6767367825%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6767167818%_)))
                          (_%hd6767267822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6767167818%_))))
                      (if (gx#stx-pair? _%tl6767367825%_)
                          (let ((_%e6767467828%_
                                 (gx#syntax-e _%tl6767367825%_)))
                            (let ((_%tl6767667835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6767467828%_)))
                                  (_%hd6767567832%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6767467828%_))))
                              (if (gx#stx-pair/null? _%tl6767667835%_)
                                  (let ((_%__splice8137181372%_
                                         (gx#syntax-split-splice
                                          _%tl6767667835%_
                                          '0)))
                                    (let ((_%tl6767967841%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8137181372%_
                                              '1)))
                                          (_%target6767767838%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8137181372%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6767967841%_)
                                          (_%__match8139781398%_
                                           _%e6767167818%_
                                           _%hd6767267822%_
                                           _%tl6767367825%_
                                           _%e6767467828%_
                                           _%hd6767567832%_
                                           _%tl6767667835%_
                                           _%__splice8137181372%_
                                           _%target6767767838%_
                                           _%tl6767967841%_)
                                          (if (gx#stx-pair? _%tl6767667835%_)
                                              (let ((_%e6769567739%_
                                                     (gx#syntax-e
                                                      _%tl6767667835%_)))
                                                (let ((_%tl6769767746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6769567739%_)))
                                                      (_%hd6769667743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6769567739%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6769767746%_)
                                                      (let ((_%__splice8137581376%_
                                                             (gx#syntax-split-splice
                                                              _%tl6769767746%_
                                                              '0)))
                                                        (let ((_%tl6770067752%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8137581376%_ '1)))
                      (_%target6769867749%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8137581376%_ '0))))
                  (if (gx#stx-null? _%tl6770067752%_)
                      (_%__match8142381424%_
                       _%e6767167818%_
                       _%hd6767267822%_
                       _%tl6767367825%_
                       _%e6767467828%_
                       _%hd6767567832%_
                       _%tl6767667835%_
                       _%e6769567739%_
                       _%hd6769667743%_
                       _%tl6769767746%_
                       _%__splice8137581376%_
                       _%target6769867749%_
                       _%tl6770067752%_)
                      (let () (declare (not safe)) (_%g6766767712%_)))))
              (let () (declare (not safe)) (_%g6766767712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6766767712%_))))))
                                  (if (gx#stx-pair? _%tl6767667835%_)
                                      (let ((_%e6769567739%_
                                             (gx#syntax-e _%tl6767667835%_)))
                                        (let ((_%tl6769767746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6769567739%_)))
                                              (_%hd6769667743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6769567739%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6769767746%_)
                                              (let ((_%__splice8137581376%_
                                                     (gx#syntax-split-splice
                                                      _%tl6769767746%_
                                                      '0)))
                                                (let ((_%tl6770067752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8137581376%_
                                                          '1)))
                                                      (_%target6769867749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8137581376%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6770067752%_)
                                                      (_%__match8142381424%_
                                                       _%e6767167818%_
                                                       _%hd6767267822%_
                                                       _%tl6767367825%_
                                                       _%e6767467828%_
                                                       _%hd6767567832%_
                                                       _%tl6767667835%_
                                                       _%e6769567739%_
                                                       _%hd6769667743%_
                                                       _%tl6769767746%_
                                                       _%__splice8137581376%_
                                                       _%target6769867749%_
                                                       _%tl6770067752%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6766767712%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6766767712%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6766767712%_))))))
                          (let () (declare (not safe)) (_%g6766767712%_)))))
                  (let () (declare (not safe)) (_%g6766767712%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmethod/c|
      (lambda (_%stx67976%_)
        (let* ((_%__stx8142681427%_ _%stx67976%_)
               (_%g6798168106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8142681427%_))))
          (let ((_%__kont8142981430%_
                 (lambda (_%L68675%_
                          _%L68677%_
                          _%L68678%_
                          _%L68679%_
                          _%L68680%_
                          _%L68681%_
                          _%L68682%_)
                   (let* ((_%g6871868726%_
                           (lambda (_%g6871968722%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6871968722%_)))
                          (_%g6871768787%_
                           (lambda (_%g6871968730%_)
                             ((lambda (_%L68733%_)
                                (let* ((_%g6874568753%_
                                        (lambda (_%g6874668749%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g6874668749%_)))
                                       (_%g6874468775%_
                                        (lambda (_%g6874668757%_)
                                          ((lambda (_%L68760%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defmethod)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '@method~)
                                                               (cons _%L68681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L68680%_ '())))
                 (cons _%L68760%_ _%L68675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g6874668757%_))))
                                  (_%g6874468775%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda/c)
                                          (cons (cons _%L68733%_ _%L68678%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L68679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L68733%_
                                      (cons (gx#datum->syntax '#f '::-)
                                            (cons _%L68680%_ '()))))
                          (cons (cons (gx#datum->syntax '#f 'with-receiver)
                                      (cons _%L68679%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6877868781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6877968784%_)
                               (cons _%g6877868781%_ _%g6877968784%_))
                             '()
                             _%L68677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx67976%_)))))
                              _%g6871968730%_))))
                     (_%g6871768787%_ (gx#genident _%L68679%_)))))
                (_%__kont8143381434%_
                 (lambda (_%L68354%_
                          _%L68356%_
                          _%L68357%_
                          _%L68358%_
                          _%L68359%_
                          _%L68360%_
                          _%L68361%_)
                   (let* ((_%g6840168418%_
                           (lambda (_%g6840268414%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6840268414%_)))
                          (_%g6840068536%_
                           (lambda (_%g6840268422%_)
                             (if (gx#stx-pair/null? _%g6840268422%_)
                                 (let ((_g82760_
                                        (gx#syntax-split-splice
                                         _%g6840268422%_
                                         '0)))
                                   (begin
                                     (let ((_g82761_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g82760_)
                                                  (##vector-length _g82760_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g82761_ 2)))
                                           (error "Context expects 2 values"
                                                  _g82761_)))
                                     (let ((_%target6840468425%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82760_ 0)))
                                           (_%tl6840668428%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82760_ 1))))
                                       (if (gx#stx-null? _%tl6840668428%_)
                                           (letrec ((_%loop6840768431%_
                                                     (lambda (_%hd6840568435%_
                                                              _%receiver6841168438%_)
                                                       (if (gx#stx-pair?
                                                            _%hd6840568435%_)
                                                           (let ((_%e6840868441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd6840568435%_)))
                     (let ((_%lp-hd6840968445%_
                            (let ()
                              (declare (not safe))
                              (##car _%e6840868441%_)))
                           (_%lp-tl6841068448%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e6840868441%_))))
                       (_%loop6840768431%_
                        _%lp-tl6841068448%_
                        (cons _%lp-hd6840968445%_ _%receiver6841168438%_))))
                   (let ((_%receiver6841268451%_
                          (reverse _%receiver6841168438%_)))
                     ((lambda (_%L68455%_)
                        (let* ((_%g6847168479%_
                                (lambda (_%g6847268475%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6847268475%_)))
                               (_%g6847068501%_
                                (lambda (_%g6847268483%_)
                                  ((lambda (_%L68486%_)
                                     (cons (gx#datum->syntax '#f 'defmethod)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@method~)
                                                       (cons _%L68360%_
                                                             (cons _%L68359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L68486%_
                                                       _%L68354%_))))
                                   _%g6847268483%_))))
                          (_%g6847068501%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda/c)
                                  (begin
                                    (gx#syntax-check-splice-targets
                                     _%L68356%_
                                     _%L68358%_
                                     _%L68455%_
                                     _%L68358%_
                                     _%L68357%_
                                     _%L68455%_)
                                    (foldr (lambda (_%g6850468514%_
                                                    _%g6850568517%_
                                                    _%g6850668519%_
                                                    _%g6850768521%_
                                                    _%g6850868523%_
                                                    _%g6850968525%_
                                                    _%g6851068527%_)
                                             (cons (cons (cons _%g6850668519%_
                                                               _%g6850868523%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'using)
                             (cons (cons _%g6850568517%_
                                         (cons _%g6850668519%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '::-)
                                                     (cons _%L68359%_ '()))))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'with-receiver)
                                               (cons _%g6850568517%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons '()
                               (foldr (lambda (_%g6851168530%_ _%g6851268533%_)
                                        (cons _%g6851168530%_ _%g6851268533%_))
                                      '()
                                      _%g6850468514%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g6851068527%_))
                                           '()
                                           _%L68356%_
                                           _%L68358%_
                                           _%L68455%_
                                           _%L68358%_
                                           _%L68357%_
                                           _%L68455%_)))
                            (gx#stx-source _%stx67976%_)))))
                      _%receiver6841268451%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop6840768431%_
                                              _%target6840468425%_
                                              '()))
                                           (_%g6840168418%_
                                            _%g6840268422%_)))))
                                 (_%g6840168418%_ _%g6840268422%_)))))
                     (_%g6840068536%_
                      (map gx#genident
                           (foldr (lambda (_%g6853968542%_ _%g6854068545%_)
                                    (cons _%g6853968542%_ _%g6854068545%_))
                                  '()
                                  _%L68358%_))))))
                (_%__kont8143781438%_
                 (lambda (_%L68163%_ _%L68165%_ _%L68166%_ _%L68167%_)
                   (cons (gx#datum->syntax '#f 'defmethod)
                         (cons (cons (gx#datum->syntax '#f '@method~)
                                     (cons _%L68166%_ (cons _%L68165%_ '())))
                               _%L68163%_)))))
            (let* ((_%g6798068189%_
                    (lambda ()
                      (let ((_%e6808668113%_
                             (gx#syntax-e _%__stx8142681427%_)))
                        (let ((_%tl6808868120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6808668113%_)))
                              (_%hd6808768117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6808668113%_))))
                          (if (gx#stx-pair? _%tl6808868120%_)
                              (let ((_%e6808968123%_
                                     (gx#syntax-e _%tl6808868120%_)))
                                (let ((_%tl6809168130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6808968123%_)))
                                      (_%hd6809068127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6808968123%_))))
                                  (if (gx#stx-pair? _%hd6809068127%_)
                                      (let ((_%e6809268133%_
                                             (gx#syntax-e _%hd6809068127%_)))
                                        (let ((_%tl6809468140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6809268133%_)))
                                              (_%hd6809368137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6809268133%_))))
                                          (if (gx#stx-pair? _%tl6809468140%_)
                                              (let ((_%e6809568143%_
                                                     (gx#syntax-e
                                                      _%tl6809468140%_)))
                                                (let ((_%tl6809768150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6809568143%_)))
                                                      (_%hd6809668147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6809568143%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6809768150%_)
                                                      (let ((_%e6809868153%_
                                                             (gx#syntax-e
                                                              _%tl6809768150%_)))
                                                        (let ((_%tl6810068160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6809868153%_)))
                      (_%hd6809968157%_
                       (let () (declare (not safe)) (##car _%e6809868153%_))))
                  (if (gx#stx-null? _%tl6810068160%_)
                      (_%__kont8143781438%_
                       _%tl6809168130%_
                       _%hd6809968157%_
                       _%hd6809668147%_
                       _%hd6809368137%_)
                      (let () (declare (not safe)) (_%g6798168106%_)))))
              (let () (declare (not safe)) (_%g6798168106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6798168106%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6798168106%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6798168106%_)))))))
                   (_%__match8156381564%_
                    (lambda (_%e6803368196%_
                             _%hd6803468200%_
                             _%tl6803568203%_
                             _%e6803668206%_
                             _%hd6803768210%_
                             _%tl6803868213%_
                             _%e6803968216%_
                             _%hd6804068220%_
                             _%tl6804168223%_
                             _%e6804268226%_
                             _%hd6804368230%_
                             _%tl6804468233%_
                             _%e6804568236%_
                             _%hd6804668240%_
                             _%tl6804768243%_
                             _%e6804868246%_
                             _%hd6804968250%_
                             _%tl6805068253%_
                             _%e6805168256%_
                             _%hd6805268260%_
                             _%tl6805368263%_
                             _%__splice8143581436%_
                             _%target6805468266%_
                             _%tl6805668269%_)
                      (letrec ((_%loop6805768272%_
                                (lambda (_%hd6805568276%_
                                         _%body6806168279%_
                                         _%args6806268281%_
                                         _%self6806368283%_)
                                  (if (gx#stx-pair? _%hd6805568276%_)
                                      (let ((_%e6805868286%_
                                             (gx#syntax-e _%hd6805568276%_)))
                                        (let ((_%lp-tl6806068293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6805868286%_)))
                                              (_%lp-hd6805968290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6805868286%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6805968290%_)
                                              (let ((_%e6806768296%_
                                                     (gx#syntax-e
                                                      _%lp-hd6805968290%_)))
                                                (let ((_%tl6806968303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6806768296%_)))
                                                      (_%hd6806868300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6806768296%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6806868300%_)
                                                      (let ((_%e6807068306%_
                                                             (gx#syntax-e
                                                              _%hd6806868300%_)))
                                                        (let ((_%tl6807268313%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6807068306%_)))
                      (_%hd6807168310%_
                       (let () (declare (not safe)) (##car _%e6807068306%_))))
                  (if (gx#stx-pair/null? _%tl6806968303%_)
                      (let ((_g82762_
                             (gx#syntax-split-splice _%tl6806968303%_ '0)))
                        (begin
                          (let ((_g82763_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g82762_)
                                       (##vector-length _g82762_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g82763_ 2)))
                                (error "Context expects 2 values" _g82763_)))
                          (let ((_%target6807368316%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82762_ 0)))
                                (_%tl6807568319%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82762_ 1))))
                            (if (gx#stx-null? _%tl6807568319%_)
                                (letrec ((_%loop6807668322%_
                                          (lambda (_%hd6807468326%_
                                                   _%body6808068329%_)
                                            (if (gx#stx-pair? _%hd6807468326%_)
                                                (let ((_%e6807768332%_
                                                       (gx#syntax-e
                                                        _%hd6807468326%_)))
                                                  (let ((_%lp-hd6807868336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6807768332%_)))
                                                        (_%lp-tl6807968339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6807768332%_))))
                                                    (_%loop6807668322%_
                                                     _%lp-tl6807968339%_
                                                     (cons _%lp-hd6807868336%_
                                                           _%body6808068329%_))))
                                                (let ((_%body6808168342%_
                                                       (reverse _%body6808068329%_)))
                                                  (_%loop6805768272%_
                                                   _%lp-tl6806068293%_
                                                   (cons _%body6808168342%_
                                                         _%body6806168279%_)
                                                   (cons _%tl6807268313%_
                                                         _%args6806268281%_)
                                                   (cons _%hd6807168310%_
                                                         _%self6806368283%_)))))))
                                  (_%loop6807668322%_
                                   _%target6807368316%_
                                   '()))
                                (let ()
                                  (declare (not safe))
                                  (_%g6798068189%_))))))
                      (_%__kont8143781438%_
                       _%tl6803868213%_
                       _%hd6804668240%_
                       _%hd6804368230%_
                       _%hd6804068220%_))))
              (_%__kont8143781438%_
               _%tl6803868213%_
               _%hd6804668240%_
               _%hd6804368230%_
               _%hd6804068220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8143781438%_
                                               _%tl6803868213%_
                                               _%hd6804668240%_
                                               _%hd6804368230%_
                                               _%hd6804068220%_))))
                                      (let ((_%self6806668351%_
                                             (reverse _%self6806368283%_))
                                            (_%args6806568349%_
                                             (reverse _%args6806268281%_))
                                            (_%body6806468346%_
                                             (reverse _%body6806168279%_)))
                                        (let ((_%L68354%_ _%tl6805068253%_)
                                              (_%L68356%_ _%body6806468346%_)
                                              (_%L68357%_ _%args6806568349%_)
                                              (_%L68358%_ _%self6806668351%_)
                                              (_%L68359%_ _%hd6804668240%_)
                                              (_%L68360%_ _%hd6804368230%_)
                                              (_%L68361%_ _%hd6804068220%_))
                                          (if (and (gx#identifier-list?
                                                    (foldr (lambda (_%g6839268395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6839368398%_)
                     (cons _%g6839268395%_ _%g6839368398%_))
                   '()
                   _%L68358%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#identifier? _%L68360%_))
                                              (_%__kont8143381434%_
                                               _%L68354%_
                                               _%L68356%_
                                               _%L68357%_
                                               _%L68358%_
                                               _%L68359%_
                                               _%L68360%_
                                               _%L68361%_)
                                              (_%__kont8143781438%_
                                               _%tl6803868213%_
                                               _%hd6804668240%_
                                               _%hd6804368230%_
                                               _%hd6804068220%_))))))))
                        (_%loop6805768272%_
                         _%target6805468266%_
                         '()
                         '()
                         '()))))
                   (_%__match8150781508%_
                    (lambda (_%e6799068555%_
                             _%hd6799168559%_
                             _%tl6799268562%_
                             _%e6799368565%_
                             _%hd6799468569%_
                             _%tl6799568572%_
                             _%e6799668575%_
                             _%hd6799768579%_
                             _%tl6799868582%_
                             _%e6799968585%_
                             _%hd6800068589%_
                             _%tl6800168592%_
                             _%e6800268595%_
                             _%hd6800368599%_
                             _%tl6800468602%_
                             _%e6800568605%_
                             _%hd6800668609%_
                             _%tl6800768612%_
                             _%e6800868615%_
                             _%hd6800968619%_
                             _%tl6801068622%_
                             _%e6801168625%_
                             _%hd6801268629%_
                             _%tl6801368632%_
                             _%e6801468635%_
                             _%hd6801568639%_
                             _%tl6801668642%_
                             _%__splice8143181432%_
                             _%target6801768645%_
                             _%tl6801968648%_)
                      (letrec ((_%loop6802068651%_
                                (lambda (_%hd6801868655%_ _%body6802468658%_)
                                  (if (gx#stx-pair? _%hd6801868655%_)
                                      (let ((_%e6802168661%_
                                             (gx#syntax-e _%hd6801868655%_)))
                                        (let ((_%lp-tl6802368668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6802168661%_)))
                                              (_%lp-hd6802268665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6802168661%_))))
                                          (_%loop6802068651%_
                                           _%lp-tl6802368668%_
                                           (cons _%lp-hd6802268665%_
                                                 _%body6802468658%_))))
                                      (let ((_%body6802568671%_
                                             (reverse _%body6802468658%_)))
                                        (let ((_%L68675%_ _%tl6800768612%_)
                                              (_%L68677%_ _%body6802568671%_)
                                              (_%L68678%_ _%tl6801668642%_)
                                              (_%L68679%_ _%hd6801568639%_)
                                              (_%L68680%_ _%hd6800368599%_)
                                              (_%L68681%_ _%hd6800068589%_)
                                              (_%L68682%_ _%hd6799768579%_))
                                          (if (and (gx#identifier? _%L68679%_)
                                                   (gx#identifier? _%L68681%_))
                                              (_%__kont8142981430%_
                                               _%L68675%_
                                               _%L68677%_
                                               _%L68678%_
                                               _%L68679%_
                                               _%L68680%_
                                               _%L68681%_
                                               _%L68682%_)
                                              (_%__kont8143781438%_
                                               _%tl6799568572%_
                                               _%hd6800368599%_
                                               _%hd6800068589%_
                                               _%hd6799768579%_))))))))
                        (_%loop6802068651%_ _%target6801768645%_ '())))))
              (if (gx#stx-pair? _%__stx8142681427%_)
                  (let ((_%e6799068555%_ (gx#syntax-e _%__stx8142681427%_)))
                    (let ((_%tl6799268562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6799068555%_)))
                          (_%hd6799168559%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6799068555%_))))
                      (if (gx#stx-pair? _%tl6799268562%_)
                          (let ((_%e6799368565%_
                                 (gx#syntax-e _%tl6799268562%_)))
                            (let ((_%tl6799568572%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6799368565%_)))
                                  (_%hd6799468569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6799368565%_))))
                              (if (gx#stx-pair? _%hd6799468569%_)
                                  (let ((_%e6799668575%_
                                         (gx#syntax-e _%hd6799468569%_)))
                                    (let ((_%tl6799868582%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6799668575%_)))
                                          (_%hd6799768579%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6799668575%_))))
                                      (if (gx#stx-pair? _%tl6799868582%_)
                                          (let ((_%e6799968585%_
                                                 (gx#syntax-e
                                                  _%tl6799868582%_)))
                                            (let ((_%tl6800168592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6799968585%_)))
                                                  (_%hd6800068589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6799968585%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6800168592%_)
                                                  (let ((_%e6800268595%_
                                                         (gx#syntax-e
                                                          _%tl6800168592%_)))
                                                    (let ((_%tl6800468602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6800268595%_)))
                                                          (_%hd6800368599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6800268595%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6800468602%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6799568572%_)
                                                              (let ((_%e6800568605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6799568572%_)))
                        (let ((_%tl6800768612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6800568605%_)))
                              (_%hd6800668609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6800568605%_))))
                          (if (gx#stx-pair? _%hd6800668609%_)
                              (let ((_%e6800868615%_
                                     (gx#syntax-e _%hd6800668609%_)))
                                (let ((_%tl6801068622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6800868615%_)))
                                      (_%hd6800968619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6800868615%_))))
                                  (if (gx#identifier? _%hd6800968619%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82764_|
                                           _%hd6800968619%_)
                                          (if (gx#stx-pair? _%tl6801068622%_)
                                              (let ((_%e6801168625%_
                                                     (gx#syntax-e
                                                      _%tl6801068622%_)))
                                                (let ((_%tl6801368632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6801168625%_)))
                                                      (_%hd6801268629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6801168625%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6801268629%_)
                                                      (let ((_%e6801468635%_
                                                             (gx#syntax-e
                                                              _%hd6801268629%_)))
                                                        (let ((_%tl6801668642%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6801468635%_)))
                      (_%hd6801568639%_
                       (let () (declare (not safe)) (##car _%e6801468635%_))))
                  (if (gx#stx-pair/null? _%tl6801368632%_)
                      (let ((_%__splice8143181432%_
                             (gx#syntax-split-splice _%tl6801368632%_ '0)))
                        (let ((_%tl6801968648%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8143181432%_ '1)))
                              (_%target6801768645%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8143181432%_ '0))))
                          (if (gx#stx-null? _%tl6801968648%_)
                              (_%__match8150781508%_
                               _%e6799068555%_
                               _%hd6799168559%_
                               _%tl6799268562%_
                               _%e6799368565%_
                               _%hd6799468569%_
                               _%tl6799568572%_
                               _%e6799668575%_
                               _%hd6799768579%_
                               _%tl6799868582%_
                               _%e6799968585%_
                               _%hd6800068589%_
                               _%tl6800168592%_
                               _%e6800268595%_
                               _%hd6800368599%_
                               _%tl6800468602%_
                               _%e6800568605%_
                               _%hd6800668609%_
                               _%tl6800768612%_
                               _%e6800868615%_
                               _%hd6800968619%_
                               _%tl6801068622%_
                               _%e6801168625%_
                               _%hd6801268629%_
                               _%tl6801368632%_
                               _%e6801468635%_
                               _%hd6801568639%_
                               _%tl6801668642%_
                               _%__splice8143181432%_
                               _%target6801768645%_
                               _%tl6801968648%_)
                              (_%__kont8143781438%_
                               _%tl6799568572%_
                               _%hd6800368599%_
                               _%hd6800068589%_
                               _%hd6799768579%_))))
                      (_%__kont8143781438%_
                       _%tl6799568572%_
                       _%hd6800368599%_
                       _%hd6800068589%_
                       _%hd6799768579%_))))
              (_%__kont8143781438%_
               _%tl6799568572%_
               _%hd6800368599%_
               _%hd6800068589%_
               _%hd6799768579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8143781438%_
                                               _%tl6799568572%_
                                               _%hd6800368599%_
                                               _%hd6800068589%_
                                               _%hd6799768579%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypedDefinitions[1]#_g82765_|
                                               _%hd6800968619%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl6801068622%_)
                                                  (let ((_%__splice8143581436%_
                                                         (gx#syntax-split-splice
                                                          _%tl6801068622%_
                                                          '0)))
                                                    (let ((_%tl6805668269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8143581436%_
                                                              '1)))
                                                          (_%target6805468266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8143581436%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6805668269%_)
                                                          (_%__match8156381564%_
                                                           _%e6799068555%_
                                                           _%hd6799168559%_
                                                           _%tl6799268562%_
                                                           _%e6799368565%_
                                                           _%hd6799468569%_
                                                           _%tl6799568572%_
                                                           _%e6799668575%_
                                                           _%hd6799768579%_
                                                           _%tl6799868582%_
                                                           _%e6799968585%_
                                                           _%hd6800068589%_
                                                           _%tl6800168592%_
                                                           _%e6800268595%_
                                                           _%hd6800368599%_
                                                           _%tl6800468602%_
                                                           _%e6800568605%_
                                                           _%hd6800668609%_
                                                           _%tl6800768612%_
                                                           _%e6800868615%_
                                                           _%hd6800968619%_
                                                           _%tl6801068622%_
                                                           _%__splice8143581436%_
                                                           _%target6805468266%_
                                                           _%tl6805668269%_)
                                                          (_%__kont8143781438%_
                                                           _%tl6799568572%_
                                                           _%hd6800368599%_
                                                           _%hd6800068589%_
                                                           _%hd6799768579%_))))
                                                  (_%__kont8143781438%_
                                                   _%tl6799568572%_
                                                   _%hd6800368599%_
                                                   _%hd6800068589%_
                                                   _%hd6799768579%_))
                                              (_%__kont8143781438%_
                                               _%tl6799568572%_
                                               _%hd6800368599%_
                                               _%hd6800068589%_
                                               _%hd6799768579%_)))
                                      (_%__kont8143781438%_
                                       _%tl6799568572%_
                                       _%hd6800368599%_
                                       _%hd6800068589%_
                                       _%hd6799768579%_))))
                              (_%__kont8143781438%_
                               _%tl6799568572%_
                               _%hd6800368599%_
                               _%hd6800068589%_
                               _%hd6799768579%_))))
                      (_%__kont8143781438%_
                       _%tl6799568572%_
                       _%hd6800368599%_
                       _%hd6800068589%_
                       _%hd6799768579%_))
                  (let () (declare (not safe)) (_%g6798168106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6798168106%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6798168106%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6798168106%_)))))
                          (let () (declare (not safe)) (_%g6798168106%_)))))
                  (let () (declare (not safe)) (_%g6798168106%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-receiver|
      (lambda (_%stx68799%_)
        (let* ((_%g6880268820%_
                (lambda (_%g6880368816%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6880368816%_)))
               (_%g6880168906%_
                (lambda (_%g6880368824%_)
                  (if (gx#stx-pair? _%g6880368824%_)
                      (let ((_%e6880668827%_ (gx#syntax-e _%g6880368824%_)))
                        (let ((_%hd6880768831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6880668827%_)))
                              (_%tl6880868834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6880668827%_))))
                          (if (gx#stx-pair? _%tl6880868834%_)
                              (let ((_%e6880968837%_
                                     (gx#syntax-e _%tl6880868834%_)))
                                (let ((_%hd6881068841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6880968837%_)))
                                      (_%tl6881168844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6880968837%_))))
                                  (if (gx#stx-pair? _%tl6881168844%_)
                                      (let ((_%e6881268847%_
                                             (gx#syntax-e _%tl6881168844%_)))
                                        (let ((_%hd6881368851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6881268847%_)))
                                              (_%tl6881468854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6881268847%_))))
                                          (if (gx#stx-null? _%tl6881468854%_)
                                              ((lambda (_%L68857%_ _%L68859%_)
                                                 (let* ((_%g6887568883%_
                                                         (lambda (_%g6887668879%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g6887668879%_)))
                                                        (_%g6887468902%_
                                                         (lambda (_%g6887668887%_)
                                                           ((lambda (_%L68890%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@receiver)
                                        (cons _%L68890%_ '()))
                                  (cons _%L68857%_ '()))))
                    _%g6887668887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g6887468902%_
                                                    (gx#core-quote-syntax
                                                     _%L68859%_))))
                                               _%hd6881368851%_
                                               _%hd6881068841%_)
                                              (_%g6880268820%_
                                               _%g6880368824%_))))
                                      (_%g6880268820%_ _%g6880368824%_))))
                              (_%g6880268820%_ _%g6880368824%_))))
                      (_%g6880268820%_ _%g6880368824%_)))))
          (_%g6880168906%_ _%stx68799%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#let/c|
      (lambda (_%stx68910%_)
        (let* ((_%__stx8160681607%_ _%stx68910%_)
               (_%g6891569011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8160681607%_))))
          (let ((_%__kont8160981610%_
                 (lambda (_%L69358%_
                          _%L69360%_
                          _%L69361%_
                          _%L69362%_
                          _%L69363%_)
                   (let* ((_%g6939369401%_
                           (lambda (_%g6939469397%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6939469397%_)))
                          (_%g6939269428%_
                           (lambda (_%g6939469405%_)
                             ((lambda (_%L69408%_)
                                (cons (cons (gx#datum->syntax '#f 'letrec)
                                            (cons (cons (cons _%L69363%_
                                                              (cons _%L69408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L69363%_ '())))
                                      (foldr (lambda (_%g6941969422%_
                                                      _%g6942069425%_)
                                               (cons _%g6941969422%_
                                                     _%g6942069425%_))
                                             '()
                                             _%L69361%_)))
                              _%g6939469405%_))))
                     (_%g6939269428%_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda/c)
                             (cons (foldr (lambda (_%g6943369436%_
                                                   _%g6943469439%_)
                                            (cons _%g6943369436%_
                                                  _%g6943469439%_))
                                          '()
                                          _%L69362%_)
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _%L69360%_
                                               (foldr (lambda (_%g6943169442%_
                                                               _%g6943269445%_)
                                                        (cons _%g6943169442%_
                                                              _%g6943269445%_))
                                                      '()
                                                      _%L69358%_)))))
                       (gx#stx-source _%stx68910%_))))))
                (_%__kont8161581616%_
                 (lambda (_%L69161%_ _%L69163%_ _%L69164%_ _%L69165%_)
                   (cons (gx#datum->syntax '#f 'let/c)
                         (cons _%L69165%_
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%L69163%_
                                        _%L69164%_)
                                       (foldr (lambda (_%g6919969203%_
                                                       _%g6920069206%_
                                                       _%g6920169208%_)
                                                (cons (cons _%g6920069206%_
                                                            (cons _%g6919969203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g6920169208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L69163%_
                                              _%L69164%_))
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6919769211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6919869214%_)
                  (cons _%g6919769211%_ _%g6919869214%_))
                '()
                _%L69161%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (_%__kont8162181622%_
                 (lambda (_%L69028%_)
                   (cons (gx#datum->syntax '#f 'let) _%L69028%_))))
            (let* ((_%__match8167581676%_
                    (lambda (_%e6896769047%_
                             _%hd6896869051%_
                             _%tl6896969054%_
                             _%e6897069057%_
                             _%hd6897169061%_
                             _%tl6897269064%_
                             _%e6897369067%_
                             _%hd6897469071%_
                             _%tl6897569074%_
                             _%__splice8161781618%_
                             _%target6897669077%_
                             _%tl6897869080%_)
                      (letrec ((_%loop6897969083%_
                                (lambda (_%hd6897769087%_
                                         _%init6898369090%_
                                         _%var6898469092%_)
                                  (if (gx#stx-pair? _%hd6897769087%_)
                                      (let ((_%e6898069095%_
                                             (gx#syntax-e _%hd6897769087%_)))
                                        (let ((_%lp-tl6898269102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6898069095%_)))
                                              (_%lp-hd6898169099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6898069095%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6898169099%_)
                                              (let ((_%e6899669105%_
                                                     (gx#syntax-e
                                                      _%lp-hd6898169099%_)))
                                                (let ((_%tl6899869112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6899669105%_)))
                                                      (_%hd6899769109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6899669105%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6899869112%_)
                                                      (let ((_%e6899969115%_
                                                             (gx#syntax-e
                                                              _%tl6899869112%_)))
                                                        (let ((_%tl6900169122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6899969115%_)))
                      (_%hd6900069119%_
                       (let () (declare (not safe)) (##car _%e6899969115%_))))
                  (if (gx#stx-null? _%tl6900169122%_)
                      (_%loop6897969083%_
                       _%lp-tl6898269102%_
                       (cons _%hd6900069119%_ _%init6898369090%_)
                       (cons _%hd6899769109%_ _%var6898469092%_))
                      (_%__kont8162181622%_ _%tl6896969054%_))))
              (_%__kont8162181622%_ _%tl6896969054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8162181622%_
                                               _%tl6896969054%_))))
                                      (let ((_%var6898669128%_
                                             (reverse _%var6898469092%_))
                                            (_%init6898569125%_
                                             (reverse _%init6898369090%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl6897569074%_)
                                            (let ((_%__splice8161981620%_
                                                   (gx#syntax-split-splice
                                                    _%tl6897569074%_
                                                    '0)))
                                              (let ((_%tl6898969134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8161981620%_
                                                        '1)))
                                                    (_%target6898769131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8161981620%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl6898969134%_)
                                                    (letrec ((_%loop6899069137%_
                                                              (lambda (_%hd6898869141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6899469144%_)
                        (if (gx#stx-pair? _%hd6898869141%_)
                            (let ((_%e6899169147%_
                                   (gx#syntax-e _%hd6898869141%_)))
                              (let ((_%lp-tl6899369154%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6899169147%_)))
                                    (_%lp-hd6899269151%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6899169147%_))))
                                (_%loop6899069137%_
                                 _%lp-tl6899369154%_
                                 (cons _%lp-hd6899269151%_
                                       _%body6899469144%_))))
                            (let ((_%body6899569157%_
                                   (reverse _%body6899469144%_)))
                              (let ((_%L69161%_ _%body6899569157%_)
                                    (_%L69163%_ _%init6898569125%_)
                                    (_%L69164%_ _%var6898669128%_)
                                    (_%L69165%_ _%hd6897169061%_))
                                (if (and (gx#identifier? _%L69165%_)
                                         (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                          (foldr (lambda (_%g6918969192%_
                                                          _%g6919069195%_)
                                                   (cons _%g6918969192%_
                                                         _%g6919069195%_))
                                                 '()
                                                 _%L69164%_)))
                                    (_%__kont8161581616%_
                                     _%L69161%_
                                     _%L69163%_
                                     _%L69164%_
                                     _%L69165%_)
                                    (_%__kont8162181622%_
                                     _%tl6896969054%_))))))))
              (_%loop6899069137%_ _%target6898769131%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8162181622%_
                                                     _%tl6896969054%_))))
                                            (_%__kont8162181622%_
                                             _%tl6896969054%_)))))))
                        (_%loop6897969083%_ _%target6897669077%_ '() '()))))
                   (_%__match8164981650%_
                    (lambda (_%e6892269224%_
                             _%hd6892369228%_
                             _%tl6892469231%_
                             _%e6892569234%_
                             _%hd6892669238%_
                             _%tl6892769241%_
                             _%e6892869244%_
                             _%hd6892969248%_
                             _%tl6893069251%_
                             _%__splice8161181612%_
                             _%target6893169254%_
                             _%tl6893369257%_)
                      (letrec ((_%loop6893469260%_
                                (lambda (_%hd6893269264%_
                                         _%init6893869267%_
                                         _%var6893969269%_)
                                  (if (gx#stx-pair? _%hd6893269264%_)
                                      (let ((_%e6893569272%_
                                             (gx#syntax-e _%hd6893269264%_)))
                                        (let ((_%lp-tl6893769279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6893569272%_)))
                                              (_%lp-hd6893669276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6893569272%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6893669276%_)
                                              (let ((_%e6895769282%_
                                                     (gx#syntax-e
                                                      _%lp-hd6893669276%_)))
                                                (let ((_%tl6895969289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6895769282%_)))
                                                      (_%hd6895869286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6895769282%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6895969289%_)
                                                      (let ((_%e6896069292%_
                                                             (gx#syntax-e
                                                              _%tl6895969289%_)))
                                                        (let ((_%tl6896269299%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6896069292%_)))
                      (_%hd6896169296%_
                       (let () (declare (not safe)) (##car _%e6896069292%_))))
                  (if (gx#stx-null? _%tl6896269299%_)
                      (_%loop6893469260%_
                       _%lp-tl6893769279%_
                       (cons _%hd6896169296%_ _%init6893869267%_)
                       (cons _%hd6895869286%_ _%var6893969269%_))
                      (_%__match8167581676%_
                       _%e6892269224%_
                       _%hd6892369228%_
                       _%tl6892469231%_
                       _%e6892569234%_
                       _%hd6892669238%_
                       _%tl6892769241%_
                       _%e6892869244%_
                       _%hd6892969248%_
                       _%tl6893069251%_
                       _%__splice8161181612%_
                       _%target6893169254%_
                       _%tl6893369257%_))))
              (_%__match8167581676%_
               _%e6892269224%_
               _%hd6892369228%_
               _%tl6892469231%_
               _%e6892569234%_
               _%hd6892669238%_
               _%tl6892769241%_
               _%e6892869244%_
               _%hd6892969248%_
               _%tl6893069251%_
               _%__splice8161181612%_
               _%target6893169254%_
               _%tl6893369257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match8167581676%_
                                               _%e6892269224%_
                                               _%hd6892369228%_
                                               _%tl6892469231%_
                                               _%e6892569234%_
                                               _%hd6892669238%_
                                               _%tl6892769241%_
                                               _%e6892869244%_
                                               _%hd6892969248%_
                                               _%tl6893069251%_
                                               _%__splice8161181612%_
                                               _%target6893169254%_
                                               _%tl6893369257%_))))
                                      (let ((_%var6894169305%_
                                             (reverse _%var6893969269%_))
                                            (_%init6894069302%_
                                             (reverse _%init6893869267%_)))
                                        (if (gx#stx-pair? _%tl6893069251%_)
                                            (let ((_%e6894269308%_
                                                   (gx#syntax-e
                                                    _%tl6893069251%_)))
                                              (let ((_%tl6894469315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6894269308%_)))
                                                    (_%hd6894369312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6894269308%_))))
                                                (if (gx#identifier?
                                                     _%hd6894369312%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82766_|
                                                         _%hd6894369312%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6894469315%_)
                                                            (let ((_%e6894569318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6894469315%_)))
                      (let ((_%tl6894769325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6894569318%_)))
                            (_%hd6894669322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6894569318%_))))
                        (if (gx#stx-pair/null? _%tl6894769325%_)
                            (let ((_%__splice8161381614%_
                                   (gx#syntax-split-splice
                                    _%tl6894769325%_
                                    '0)))
                              (let ((_%tl6895069331%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8161381614%_
                                        '1)))
                                    (_%target6894869328%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8161381614%_
                                        '0))))
                                (if (gx#stx-null? _%tl6895069331%_)
                                    (letrec ((_%loop6895169334%_
                                              (lambda (_%hd6894969338%_
                                                       _%body6895569341%_)
                                                (if (gx#stx-pair?
                                                     _%hd6894969338%_)
                                                    (let ((_%e6895269344%_
                                                           (gx#syntax-e
                                                            _%hd6894969338%_)))
                                                      (let ((_%lp-tl6895469351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6895269344%_)))
                    (_%lp-hd6895369348%_
                     (let () (declare (not safe)) (##car _%e6895269344%_))))
                (_%loop6895169334%_
                 _%lp-tl6895469351%_
                 (cons _%lp-hd6895369348%_ _%body6895569341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6895669354%_
                                                           (reverse _%body6895569341%_)))
                                                      (let ((_%L69358%_
                                                             _%body6895669354%_)
                                                            (_%L69360%_
                                                             _%hd6894669322%_)
                                                            (_%L69361%_
                                                             _%init6894069302%_)
                                                            (_%L69362%_
                                                             _%var6894169305%_)
                                                            (_%L69363%_
                                                             _%hd6892669238%_))
                                                        (if (gx#identifier?
                                                             _%L69363%_)
                                                            (_%__kont8160981610%_
                                                             _%L69358%_
                                                             _%L69360%_
                                                             _%L69361%_
                                                             _%L69362%_
                                                             _%L69363%_)
                                                            (_%__match8167581676%_
                                                             _%e6892269224%_
                                                             _%hd6892369228%_
                                                             _%tl6892469231%_
                                                             _%e6892569234%_
                                                             _%hd6892669238%_
                                                             _%tl6892769241%_
                                                             _%e6892869244%_
                                                             _%hd6892969248%_
                                                             _%tl6893069251%_
                                                             _%__splice8161181612%_
                                                             _%target6893169254%_
                                                             _%tl6893369257%_))))))))
                                      (_%loop6895169334%_
                                       _%target6894869328%_
                                       '()))
                                    (_%__match8167581676%_
                                     _%e6892269224%_
                                     _%hd6892369228%_
                                     _%tl6892469231%_
                                     _%e6892569234%_
                                     _%hd6892669238%_
                                     _%tl6892769241%_
                                     _%e6892869244%_
                                     _%hd6892969248%_
                                     _%tl6893069251%_
                                     _%__splice8161181612%_
                                     _%target6893169254%_
                                     _%tl6893369257%_))))
                            (_%__match8167581676%_
                             _%e6892269224%_
                             _%hd6892369228%_
                             _%tl6892469231%_
                             _%e6892569234%_
                             _%hd6892669238%_
                             _%tl6892769241%_
                             _%e6892869244%_
                             _%hd6892969248%_
                             _%tl6893069251%_
                             _%__splice8161181612%_
                             _%target6893169254%_
                             _%tl6893369257%_))))
                    (_%__match8167581676%_
                     _%e6892269224%_
                     _%hd6892369228%_
                     _%tl6892469231%_
                     _%e6892569234%_
                     _%hd6892669238%_
                     _%tl6892769241%_
                     _%e6892869244%_
                     _%hd6892969248%_
                     _%tl6893069251%_
                     _%__splice8161181612%_
                     _%target6893169254%_
                     _%tl6893369257%_))
                (_%__match8167581676%_
                 _%e6892269224%_
                 _%hd6892369228%_
                 _%tl6892469231%_
                 _%e6892569234%_
                 _%hd6892669238%_
                 _%tl6892769241%_
                 _%e6892869244%_
                 _%hd6892969248%_
                 _%tl6893069251%_
                 _%__splice8161181612%_
                 _%target6893169254%_
                 _%tl6893369257%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match8167581676%_
                                                     _%e6892269224%_
                                                     _%hd6892369228%_
                                                     _%tl6892469231%_
                                                     _%e6892569234%_
                                                     _%hd6892669238%_
                                                     _%tl6892769241%_
                                                     _%e6892869244%_
                                                     _%hd6892969248%_
                                                     _%tl6893069251%_
                                                     _%__splice8161181612%_
                                                     _%target6893169254%_
                                                     _%tl6893369257%_))))
                                            (_%__match8167581676%_
                                             _%e6892269224%_
                                             _%hd6892369228%_
                                             _%tl6892469231%_
                                             _%e6892569234%_
                                             _%hd6892669238%_
                                             _%tl6892769241%_
                                             _%e6892869244%_
                                             _%hd6892969248%_
                                             _%tl6893069251%_
                                             _%__splice8161181612%_
                                             _%target6893169254%_
                                             _%tl6893369257%_)))))))
                        (_%loop6893469260%_ _%target6893169254%_ '() '())))))
              (if (gx#stx-pair? _%__stx8160681607%_)
                  (let ((_%e6892269224%_ (gx#syntax-e _%__stx8160681607%_)))
                    (let ((_%tl6892469231%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6892269224%_)))
                          (_%hd6892369228%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6892269224%_))))
                      (if (gx#stx-pair? _%tl6892469231%_)
                          (let ((_%e6892569234%_
                                 (gx#syntax-e _%tl6892469231%_)))
                            (let ((_%tl6892769241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6892569234%_)))
                                  (_%hd6892669238%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6892569234%_))))
                              (if (gx#stx-pair? _%tl6892769241%_)
                                  (let ((_%e6892869244%_
                                         (gx#syntax-e _%tl6892769241%_)))
                                    (let ((_%tl6893069251%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6892869244%_)))
                                          (_%hd6892969248%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6892869244%_))))
                                      (if (gx#stx-pair/null? _%hd6892969248%_)
                                          (let ((_%__splice8161181612%_
                                                 (gx#syntax-split-splice
                                                  _%hd6892969248%_
                                                  '0)))
                                            (let ((_%tl6893369257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8161181612%_
                                                      '1)))
                                                  (_%target6893169254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8161181612%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6893369257%_)
                                                  (_%__match8164981650%_
                                                   _%e6892269224%_
                                                   _%hd6892369228%_
                                                   _%tl6892469231%_
                                                   _%e6892569234%_
                                                   _%hd6892669238%_
                                                   _%tl6892769241%_
                                                   _%e6892869244%_
                                                   _%hd6892969248%_
                                                   _%tl6893069251%_
                                                   _%__splice8161181612%_
                                                   _%target6893169254%_
                                                   _%tl6893369257%_)
                                                  (_%__kont8162181622%_
                                                   _%tl6892469231%_))))
                                          (_%__kont8162181622%_
                                           _%tl6892469231%_))))
                                  (_%__kont8162181622%_ _%tl6892469231%_))))
                          (_%__kont8162181622%_ _%tl6892469231%_))))
                  (let () (declare (not safe)) (_%g6891569011%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defclass/c|
      (lambda (_%stx69456%_)
        (letrec ((_%generate69459%_
                  (lambda (_%hd76630%_ _%slots76632%_ _%body76633%_)
                    (let* ((_%__stx8168481685%_ _%hd76630%_)
                           (_%g7663776659%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8168481685%_))))
                      (let ((_%__kont8168781688%_
                             (lambda (_%L76735%_ _%L76737%_)
                               (_%generate-defclass69480%_
                                _%L76737%_
                                (foldr (lambda (_%g7675976762%_
                                                _%g7676076765%_)
                                         (cons _%g7675976762%_
                                               _%g7676076765%_))
                                       '()
                                       _%L76735%_)
                                _%slots76632%_
                                _%body76633%_)))
                            (_%__kont8169181692%_
                             (lambda (_%L76677%_)
                               (_%generate-defclass69480%_
                                _%L76677%_
                                '()
                                _%slots76632%_
                                _%body76633%_)))
                            (_%__kont8169381694%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad class head"
                                _%stx69456%_
                                _%hd76630%_))))
                        (let* ((_%g7663576688%_
                                (lambda ()
                                  (let ((_%L76677%_ _%__stx8168481685%_))
                                    (if (gx#identifier? _%L76677%_)
                                        (_%__kont8169181692%_ _%L76677%_)
                                        (_%__kont8169381694%_)))))
                               (_%__match8170981710%_
                                (lambda (_%e7664176695%_
                                         _%hd7664276699%_
                                         _%tl7664376702%_
                                         _%__splice8168981690%_
                                         _%target7664476705%_
                                         _%tl7664676708%_)
                                  (letrec ((_%loop7664776711%_
                                            (lambda (_%hd7664576715%_
                                                     _%super7665176718%_)
                                              (if (gx#stx-pair?
                                                   _%hd7664576715%_)
                                                  (let ((_%e7664876721%_
                                                         (gx#syntax-e
                                                          _%hd7664576715%_)))
                                                    (let ((_%lp-tl7665076728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7664876721%_)))
                                                          (_%lp-hd7664976725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7664876721%_))))
                                                      (_%loop7664776711%_
                                                       _%lp-tl7665076728%_
                                                       (cons _%lp-hd7664976725%_
                                                             _%super7665176718%_))))
                                                  (let ((_%super7665276731%_
                                                         (reverse _%super7665176718%_)))
                                                    (let ((_%L76735%_
                                                           _%super7665276731%_)
                                                          (_%L76737%_
                                                           _%hd7664276699%_))
                                                      (if (and (gx#identifier?
                                                                _%L76737%_)
                                                               (andmap gerbil/core/mop~MOP-2#syntax-local-class-type-info?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr (lambda (_%g7675176754%_ _%g7675276757%_)
                                        (cons _%g7675176754%_ _%g7675276757%_))
                                      '()
                                      _%L76735%_)))
                  (_%__kont8168781688%_ _%L76735%_ _%L76737%_)
                  (let () (declare (not safe)) (_%g7663576688%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop7664776711%_
                                     _%target7664476705%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8168481685%_)
                              (let ((_%e7664176695%_
                                     (gx#syntax-e _%__stx8168481685%_)))
                                (let ((_%tl7664376702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7664176695%_)))
                                      (_%hd7664276699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7664176695%_))))
                                  (if (gx#stx-pair/null? _%tl7664376702%_)
                                      (let ((_%__splice8168981690%_
                                             (gx#syntax-split-splice
                                              _%tl7664376702%_
                                              '0)))
                                        (let ((_%tl7664676708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8168981690%_
                                                  '1)))
                                              (_%target7664476705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8168981690%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7664676708%_)
                                              (_%__match8170981710%_
                                               _%e7664176695%_
                                               _%hd7664276699%_
                                               _%tl7664376702%_
                                               _%__splice8168981690%_
                                               _%target7664476705%_
                                               _%tl7664676708%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7663576688%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7663576688%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7663576688%_))))))))
                 (_%check-typedef-body!69461%_
                  (lambda (_%body76621%_)
                    (letrec ((_%body-opt?76624%_
                              (lambda (_%key76627%_)
                                (let ((__tmp82767 (gx#stx-e _%key76627%_)))
                                  (declare (not safe))
                                  (##memq __tmp82767
                                          '(id:
                                            struct:
                                            name:
                                            constructor:
                                            transparent:
                                            final:
                                            print:
                                            equal:
                                            metaclass:))))))
                      (if (gx#stx-plist? _%body76621%_ _%body-opt?76624%_)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"invalid defclass body"
                           _%stx69456%_
                           _%body76621%_)))))
                 (_%slot-name69462%_
                  (lambda (_%slot-spec76618%_)
                    (gx#stx-e
                     (if (gx#identifier? _%slot-spec76618%_)
                         _%slot-spec76618%_
                         (gx#stx-car _%slot-spec76618%_)))))
                 (_%slot-contract69463%_
                  (lambda (_%slot-spec76499%_)
                    (let* ((_%__stx8171281713%_ _%slot-spec76499%_)
                           (_%g7650476525%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8171281713%_))))
                      (let ((_%__kont8171581716%_ (lambda (_%L76605%_) '#f))
                            (_%__kont8171781718%_
                             (lambda (_%L76583%_ _%L76585%_) '#f))
                            (_%__kont8171981720%_
                             (lambda (_%L76542%_ _%L76544%_) _%L76542%_)))
                        (let* ((_%g7650276598%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8171281713%_)
                                      (let ((_%e7650976563%_
                                             (gx#syntax-e
                                              _%__stx8171281713%_)))
                                        (let ((_%tl7651176570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7650976563%_)))
                                              (_%hd7651076567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7650976563%_))))
                                          (if (gx#stx-pair? _%tl7651176570%_)
                                              (let ((_%e7651276573%_
                                                     (gx#syntax-e
                                                      _%tl7651176570%_)))
                                                (let ((_%tl7651476580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7651276573%_)))
                                                      (_%hd7651376577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7651276573%_))))
                                                  (if (gx#stx-null?
                                                       _%tl7651476580%_)
                                                      (_%__kont8171781718%_
                                                       _%hd7651376577%_
                                                       _%hd7651076567%_)
                                                      (_%__kont8171981720%_
                                                       _%tl7651176570%_
                                                       _%hd7651076567%_))))
                                              (_%__kont8171981720%_
                                               _%tl7651176570%_
                                               _%hd7651076567%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7650476525%_)))))
                               (_%L76605%_ _%__stx8171281713%_))
                          (if (gx#identifier? _%L76605%_)
                              (_%__kont8171581716%_ _%L76605%_)
                              (let ()
                                (declare (not safe))
                                (_%g7650276598%_))))))))
                 (_%slot-contract-normalize69464%_
                  (lambda (_%slot-spec76488%_)
                    (let ((_%contract7649076492%_
                           (_%slot-contract69463%_ _%slot-spec76488%_)))
                      (if _%contract7649076492%_
                          (let ((_%contract76496%_ _%contract7649076492%_))
                            (_%contract-normalize69465%_ _%contract76496%_))
                          '#f))))
                 (_%contract-normalize69465%_
                  (lambda (_%contract76233%_)
                    (let* ((_%__stx8174481745%_ _%contract76233%_)
                           (_%g7623976283%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8174481745%_))))
                      (let ((_%__kont8174781748%_
                             (lambda (_%L76459%_)
                               (_%contract-normalize69465%_
                                (foldr (lambda (_%g7647576478%_
                                                _%g7647676481%_)
                                         (cons _%g7647576478%_
                                               _%g7647676481%_))
                                       '()
                                       _%L76459%_))))
                            (_%__kont8175181752%_
                             (lambda (_%L76383%_ _%L76385%_)
                               (cons (gx#datum->syntax '#f ':~)
                                     (cons (cons (gx#datum->syntax '#f '?)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'or)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'not)
                           (cons _%L76385%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f ':?)
                                                 (cons _%L76383%_ '()))))))
                            (_%__kont8175381754%_ (lambda (_%L76321%_) '#f))
                            (_%__kont8175581756%_
                             (lambda () _%contract76233%_)))
                        (let* ((_%g7623676402%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8174481745%_)
                                      (let ((_%e7625976343%_
                                             (gx#syntax-e
                                              _%__stx8174481745%_)))
                                        (let ((_%tl7626176350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7625976343%_)))
                                              (_%hd7626076347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7625976343%_))))
                                          (if (gx#identifier? _%hd7626076347%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g82768_|
                                                   _%hd7626076347%_)
                                                  (if (gx#stx-pair?
                                                       _%tl7626176350%_)
                                                      (let ((_%e7626276353%_
                                                             (gx#syntax-e
                                                              _%tl7626176350%_)))
                                                        (let ((_%tl7626476360%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7626276353%_)))
                      (_%hd7626376357%_
                       (let () (declare (not safe)) (##car _%e7626276353%_))))
                  (if (gx#stx-pair? _%tl7626476360%_)
                      (let ((_%e7626576363%_ (gx#syntax-e _%tl7626476360%_)))
                        (let ((_%tl7626776370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7626576363%_)))
                              (_%hd7626676367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7626576363%_))))
                          (if (gx#identifier? _%hd7626676367%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~TypedDefinitions[1]#_g82769_|
                                   _%hd7626676367%_)
                                  (if (gx#stx-pair? _%tl7626776370%_)
                                      (let ((_%e7626876373%_
                                             (gx#syntax-e _%tl7626776370%_)))
                                        (let ((_%tl7627076380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7626876373%_)))
                                              (_%hd7626976377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7626876373%_))))
                                          (if (gx#stx-null? _%tl7627076380%_)
                                              (_%__kont8175181752%_
                                               _%hd7626976377%_
                                               _%hd7626376357%_)
                                              (_%__kont8175581756%_))))
                                      (_%__kont8175581756%_))
                                  (_%__kont8175581756%_))
                              (_%__kont8175581756%_))))
                      (_%__kont8175581756%_))))
              (_%__kont8175581756%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82770_|
                                                       _%hd7626076347%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7626176350%_)
                                                          (let ((_%e7627576311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7626176350%_)))
                    (let ((_%tl7627776318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7627576311%_)))
                          (_%hd7627676315%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7627576311%_))))
                      (if (gx#stx-null? _%tl7627776318%_)
                          (_%__kont8175381754%_ _%hd7627676315%_)
                          (_%__kont8175581756%_))))
                  (_%__kont8175581756%_))
              (_%__kont8175581756%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8175581756%_))))
                                      (_%__kont8175581756%_))))
                               (_%__match8178381784%_
                                (lambda (_%__splice8174981750%_
                                         _%target7624276409%_
                                         _%tl7624476412%_
                                         _%e7625176415%_
                                         _%hd7625276419%_
                                         _%tl7625376422%_
                                         _%e7625476425%_
                                         _%hd7625576429%_
                                         _%tl7625676432%_)
                                  (letrec ((_%loop7624576435%_
                                            (lambda (_%hd7624376439%_
                                                     _%pre7624976442%_)
                                              (if (gx#stx-pair?
                                                   _%hd7624376439%_)
                                                  (let ((_%e7624676445%_
                                                         (gx#syntax-e
                                                          _%hd7624376439%_)))
                                                    (let ((_%lp-tl7624876452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7624676445%_)))
                                                          (_%lp-hd7624776449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7624676445%_))))
                                                      (_%loop7624576435%_
                                                       _%lp-tl7624876452%_
                                                       (cons _%lp-hd7624776449%_
                                                             _%pre7624976442%_))))
                                                  (let ((_%pre7625076455%_
                                                         (reverse _%pre7624976442%_)))
                                                    (_%__kont8174781748%_
                                                     _%pre7625076455%_))))))
                                    (_%loop7624576435%_
                                     _%target7624276409%_
                                     '())))))
                          (if (gx#stx-pair/null? _%__stx8174481745%_)
                              (if (let ((__tmp82771
                                         (gx#stx-length _%__stx8174481745%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp82771 '2))
                                  (let ((_%__splice8174981750%_
                                         (gx#syntax-split-splice
                                          _%__stx8174481745%_
                                          '2)))
                                    (let ((_%tl7624476412%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8174981750%_
                                              '1)))
                                          (_%target7624276409%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8174981750%_
                                              '0))))
                                      (if (gx#stx-pair? _%tl7624476412%_)
                                          (let ((_%e7625176415%_
                                                 (gx#syntax-e
                                                  _%tl7624476412%_)))
                                            (let ((_%tl7625376422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7625176415%_)))
                                                  (_%hd7625276419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7625176415%_))))
                                              (if (gx#identifier?
                                                   _%hd7625276419%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82772_|
                                                       _%hd7625276419%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7625376422%_)
                                                          (let ((_%e7625476425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7625376422%_)))
                    (let ((_%tl7625676432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7625476425%_)))
                          (_%hd7625576429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7625476425%_))))
                      (if (gx#stx-null? _%tl7625676432%_)
                          (_%__match8178381784%_
                           _%__splice8174981750%_
                           _%target7624276409%_
                           _%tl7624476412%_
                           _%e7625176415%_
                           _%hd7625276419%_
                           _%tl7625376422%_
                           _%e7625476425%_
                           _%hd7625576429%_
                           _%tl7625676432%_)
                          (let () (declare (not safe)) (_%g7623676402%_)))))
                  (let () (declare (not safe)) (_%g7623676402%_)))
              (let () (declare (not safe)) (_%g7623676402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7623676402%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7623676402%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7623676402%_)))
                              (let ()
                                (declare (not safe))
                                (_%g7623676402%_))))))))
                 (_%slot-contract-type69466%_
                  (lambda (_%slot-spec76222%_)
                    (let ((_%contract7622476226%_
                           (_%slot-contract69463%_ _%slot-spec76222%_)))
                      (if _%contract7622476226%_
                          (let ((_%contract76230%_ _%contract7622476226%_))
                            (_%contract-type69467%_ _%contract76230%_))
                          '#f))))
                 (_%contract-type69467%_
                  (lambda (_%contract76030%_)
                    (let* ((_%__stx8183881839%_ _%contract76030%_)
                           (_%g7603576067%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8183881839%_))))
                      (let ((_%__kont8184181842%_
                             (lambda (_%L76189%_ _%L76191%_ _%L76192%_)
                               _%L76191%_))
                            (_%__kont8184381844%_
                             (lambda (_%L76125%_
                                      _%L76127%_
                                      _%L76128%_
                                      _%L76129%_)
                               _%L76127%_))
                            (_%__kont8184581846%_ (lambda () '#f)))
                        (let* ((_%__match8188781888%_
                                (lambda (_%e7605076085%_
                                         _%hd7605176089%_
                                         _%tl7605276092%_
                                         _%e7605376095%_
                                         _%hd7605476099%_
                                         _%tl7605576102%_
                                         _%e7605676105%_
                                         _%hd7605776109%_
                                         _%tl7605876112%_
                                         _%e7605976115%_
                                         _%hd7606076119%_
                                         _%tl7606176122%_)
                                  (let ((_%L76125%_ _%tl7606176122%_)
                                        (_%L76127%_ _%hd7606076119%_)
                                        (_%L76128%_ _%hd7605776109%_)
                                        (_%L76129%_ _%hd7605476099%_))
                                    (if (and (gx#identifier? _%L76128%_)
                                             (or (gx#free-identifier=?
                                                  _%L76128%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76128%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76128%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76128%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8184381844%_
                                         _%L76125%_
                                         _%L76127%_
                                         _%L76128%_
                                         _%L76129%_)
                                        (_%__kont8184581846%_)))))
                               (_%__match8185981860%_
                                (lambda (_%e7604076169%_
                                         _%hd7604176173%_
                                         _%tl7604276176%_
                                         _%e7604376179%_
                                         _%hd7604476183%_
                                         _%tl7604576186%_)
                                  (let ((_%L76189%_ _%tl7604576186%_)
                                        (_%L76191%_ _%hd7604476183%_)
                                        (_%L76192%_ _%hd7604176173%_))
                                    (if (and (gx#identifier? _%L76192%_)
                                             (or (gx#free-identifier=?
                                                  _%L76192%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76192%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76192%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76192%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8184181842%_
                                         _%L76189%_
                                         _%L76191%_
                                         _%L76192%_)
                                        (if (gx#identifier? _%hd7604176173%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g82773_|
                                                 _%hd7604176173%_)
                                                (if (gx#stx-pair?
                                                     _%tl7604576186%_)
                                                    (let ((_%e7605676105%_
                                                           (gx#syntax-e
                                                            _%tl7604576186%_)))
                                                      (let ((_%tl7605876112%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e7605676105%_)))
                    (_%hd7605776109%_
                     (let () (declare (not safe)) (##car _%e7605676105%_))))
                (if (gx#stx-pair? _%tl7605876112%_)
                    (let ((_%e7605976115%_ (gx#syntax-e _%tl7605876112%_)))
                      (let ((_%tl7606176122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7605976115%_)))
                            (_%hd7606076119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7605976115%_))))
                        (_%__match8188781888%_
                         _%e7604076169%_
                         _%hd7604176173%_
                         _%tl7604276176%_
                         _%e7604376179%_
                         _%hd7604476183%_
                         _%tl7604576186%_
                         _%e7605676105%_
                         _%hd7605776109%_
                         _%tl7605876112%_
                         _%e7605976115%_
                         _%hd7606076119%_
                         _%tl7606176122%_)))
                    (_%__kont8184581846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8184581846%_))
                                                (_%__kont8184581846%_))
                                            (_%__kont8184581846%_)))))))
                          (if (gx#stx-pair? _%__stx8183881839%_)
                              (let ((_%e7604076169%_
                                     (gx#syntax-e _%__stx8183881839%_)))
                                (let ((_%tl7604276176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7604076169%_)))
                                      (_%hd7604176173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7604076169%_))))
                                  (if (gx#stx-pair? _%tl7604276176%_)
                                      (let ((_%e7604376179%_
                                             (gx#syntax-e _%tl7604276176%_)))
                                        (let ((_%tl7604576186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7604376179%_)))
                                              (_%hd7604476183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7604376179%_))))
                                          (_%__match8185981860%_
                                           _%e7604076169%_
                                           _%hd7604176173%_
                                           _%tl7604276176%_
                                           _%e7604376179%_
                                           _%hd7604476183%_
                                           _%tl7604576186%_)))
                                      (_%__kont8184581846%_))))
                              (_%__kont8184581846%_)))))))
                 (_%slot-contract-predicate69468%_
                  (lambda (_%slot-spec76019%_)
                    (let ((_%contract7602176023%_
                           (_%slot-contract69463%_ _%slot-spec76019%_)))
                      (if _%contract7602176023%_
                          (let ((_%contract76027%_ _%contract7602176023%_))
                            (_%contract-predicate69469%_ _%contract76027%_))
                          '#f))))
                 (_%contract-predicate69469%_
                  (lambda (_%contract75941%_)
                    (let* ((_%__stx8189081891%_ _%contract75941%_)
                           (_%g7594575960%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8189081891%_))))
                      (let ((_%__kont8189381894%_
                             (lambda (_%L75998%_ _%L76000%_) _%L76000%_))
                            (_%__kont8189581896%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx8189081891%_)
                            (let ((_%e7594975978%_
                                   (gx#syntax-e _%__stx8189081891%_)))
                              (let ((_%tl7595175985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7594975978%_)))
                                    (_%hd7595075982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7594975978%_))))
                                (if (gx#identifier? _%hd7595075982%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~TypedDefinitions[1]#_g82774_|
                                         _%hd7595075982%_)
                                        (if (gx#stx-pair? _%tl7595175985%_)
                                            (let ((_%e7595275988%_
                                                   (gx#syntax-e
                                                    _%tl7595175985%_)))
                                              (let ((_%tl7595475995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7595275988%_)))
                                                    (_%hd7595375992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7595275988%_))))
                                                (_%__kont8189381894%_
                                                 _%tl7595475995%_
                                                 _%hd7595375992%_)))
                                            (_%__kont8189581896%_))
                                        (_%__kont8189581896%_))
                                    (_%__kont8189581896%_))))
                            (_%__kont8189581896%_))))))
                 (_%slot-default69470%_
                  (lambda (_%slot-spec75769%_)
                    (let* ((_%__stx8191681917%_ _%slot-spec75769%_)
                           (_%g7577475806%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8191681917%_))))
                      (let ((_%__kont8191981920%_
                             (lambda (_%L75922%_ _%L75924%_) _%L75922%_))
                            (_%__kont8192181922%_
                             (lambda (_%L75874%_ _%L75876%_) _%L75874%_))
                            (_%__kont8192581926%_ (lambda () '#f)))
                        (let* ((_%__match8196781968%_
                                (lambda (_%__splice8192381924%_
                                         _%target7578675824%_
                                         _%tl7578875827%_
                                         _%e7579575830%_
                                         _%hd7579675834%_
                                         _%tl7579775837%_
                                         _%e7579875840%_
                                         _%hd7579975844%_
                                         _%tl7580075847%_)
                                  (letrec ((_%loop7578975850%_
                                            (lambda (_%hd7578775854%_
                                                     _%id7579375857%_)
                                              (if (gx#stx-pair?
                                                   _%hd7578775854%_)
                                                  (let ((_%e7579075860%_
                                                         (gx#syntax-e
                                                          _%hd7578775854%_)))
                                                    (let ((_%lp-tl7579275867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7579075860%_)))
                                                          (_%lp-hd7579175864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7579075860%_))))
                                                      (_%loop7578975850%_
                                                       _%lp-tl7579275867%_
                                                       (cons _%lp-hd7579175864%_
                                                             _%id7579375857%_))))
                                                  (let ((_%id7579475870%_
                                                         (reverse _%id7579375857%_)))
                                                    (_%__kont8192181922%_
                                                     _%hd7579975844%_
                                                     _%id7579475870%_))))))
                                    (_%loop7578975850%_
                                     _%target7578675824%_
                                     '()))))
                               (_%g7577275895%_
                                (lambda ()
                                  (if (gx#stx-pair/null? _%__stx8191681917%_)
                                      (if (let ((__tmp82775
                                                 (gx#stx-length
                                                  _%__stx8191681917%_)))
                                            (declare (not safe))
                                            (##fx>= __tmp82775 '2))
                                          (let ((_%__splice8192381924%_
                                                 (gx#syntax-split-splice
                                                  _%__stx8191681917%_
                                                  '2)))
                                            (let ((_%tl7578875827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8192381924%_
                                                      '1)))
                                                  (_%target7578675824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8192381924%_
                                                      '0))))
                                              (if (gx#stx-pair?
                                                   _%tl7578875827%_)
                                                  (let ((_%e7579575830%_
                                                         (gx#syntax-e
                                                          _%tl7578875827%_)))
                                                    (let ((_%tl7579775837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7579575830%_)))
                                                          (_%hd7579675834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7579575830%_))))
                                                      (if (gx#identifier?
                                                           _%hd7579675834%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~TypedDefinitions[1]#_g82776_|
                                                               _%hd7579675834%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl7579775837%_)
                          (let ((_%e7579875840%_
                                 (gx#syntax-e _%tl7579775837%_)))
                            (let ((_%tl7580075847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7579875840%_)))
                                  (_%hd7579975844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7579875840%_))))
                              (if (gx#stx-null? _%tl7580075847%_)
                                  (_%__match8196781968%_
                                   _%__splice8192381924%_
                                   _%target7578675824%_
                                   _%tl7578875827%_
                                   _%e7579575830%_
                                   _%hd7579675834%_
                                   _%tl7579775837%_
                                   _%e7579875840%_
                                   _%hd7579975844%_
                                   _%tl7580075847%_)
                                  (_%__kont8192581926%_))))
                          (_%__kont8192581926%_))
                      (_%__kont8192581926%_))
                  (_%__kont8192581926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8192581926%_))))
                                          (_%__kont8192581926%_))
                                      (_%__kont8192581926%_)))))
                          (if (gx#stx-pair? _%__stx8191681917%_)
                              (let ((_%e7577875902%_
                                     (gx#syntax-e _%__stx8191681917%_)))
                                (let ((_%tl7578075909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7577875902%_)))
                                      (_%hd7577975906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7577875902%_))))
                                  (if (gx#stx-pair? _%tl7578075909%_)
                                      (let ((_%e7578175912%_
                                             (gx#syntax-e _%tl7578075909%_)))
                                        (let ((_%tl7578375919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7578175912%_)))
                                              (_%hd7578275916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7578175912%_))))
                                          (if (gx#stx-null? _%tl7578375919%_)
                                              (_%__kont8191981920%_
                                               _%hd7578275916%_
                                               _%hd7577975906%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7577275895%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7577275895%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7577275895%_))))))))
                 (_%infer-slot-type69471%_
                  (lambda (_%slot75667%_ _%type-a75669%_ _%type-b75670%_)
                    (if (not _%type-a75669%_)
                        _%type-b75670%_
                        (if (not _%type-b75670%_)
                            _%type-a75669%_
                            (if (gx#free-identifier=?
                                 _%type-a75669%_
                                 _%type-b75670%_)
                                _%type-a75669%_
                                (let _%again75680%_ ((_%klass-a75683%_
                                                      (gx#syntax-local-value
                                                       _%type-a75669%_))
                                                     (_%klass-b75685%_
                                                      (gx#syntax-local-value
                                                       _%type-b75670%_)))
                                  (if (eq? _%klass-a75683%_ _%klass-b75685%_)
                                      _%type-a75669%_
                                      (if (let ()
                                            (declare (not safe))
                                            (class-instance?
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             _%klass-a75683%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 _%klass-b75685%_))
                                              (if (eq? (let ((__obj82505
                                                              _%klass-a75683%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj82505
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82505 '1 '#f '#f))
                     (unchecked-slot-ref __obj82505 'id)))
               (let ((__obj82506 _%klass-b75685%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82506
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82506 '1 '#f '#f))
                     (unchecked-slot-ref __obj82506 'id))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-a75669%_
                                                  (if (member _%type-a75669%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~ClassMeta#!class-precedence-list
                         _%klass-b75685%_))
                      gx#free-identifier=?)
              _%type-b75670%_
              (if (member _%type-b75670%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             _%klass-a75683%_))
                          gx#free-identifier=?)
                  _%type-a75669%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69456%_
                   _%slot75667%_
                   _%type-a75669%_
                   _%type-b75670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-b75685%_))
                                                  (let ((_%$e75703%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj82503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-b75685%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj82503
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj82503 '1 '#f '#f))
                        (unchecked-slot-ref __obj82503 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75703%_
                                                        ((lambda (_%klass-b75707%_)
                                                           (_%again75680%_
                                                            _%klass-a75683%_
                                                            _%klass-b75707%_))
                                                         _%$e75703%_)
                                                        (if (gx#free-identifier=?
                                                             _%type-a75669%_
                                                             (let ((__obj82504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%klass-b75685%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj82504
                              'gerbil/core/contract~TypeReference#type-reference::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref __obj82504 '1 '#f '#f))
                           (unchecked-slot-ref __obj82504 'identifier))))
                    _%type-a75669%_
                    (gx#raise-syntax-error
                     '#f
                     '"cannot resolve type reference to determine slot type compatibility"
                     _%stx69456%_
                     _%slot75667%_
                     _%type-a75669%_
                     _%type-b75670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"incompatible slot types"
                                                   _%stx69456%_
                                                   _%slot75667%_
                                                   _%type-a75669%_
                                                   _%type-b75670%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 _%klass-a75683%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                                     _%klass-b75685%_))
                                                  (if (member _%type-a75669%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                         _%klass-b75685%_)))
              _%type-b75670%_
              (if (member _%type-b75670%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                             _%klass-a75683%_)))
                  _%type-a75669%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69456%_
                   _%slot75667%_
                   _%type-a75669%_
                   _%type-b75670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                         _%klass-b75685%_))
                                                      (let ((_%$e75728%_
                                                             (gx#syntax-local-value
                                                              (let ((__obj82501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b75685%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj82501
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj82501
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj82501 'identifier)))
                      false)))
                (if _%$e75728%_
                    ((lambda (_%klass-b75732%_)
                       (_%again75680%_ _%klass-a75683%_ _%klass-b75732%_))
                     _%$e75728%_)
                    (if (gx#free-identifier=?
                         _%type-a75669%_
                         (let ((__obj82502 _%klass-b75685%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj82502
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj82502
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj82502 'identifier))))
                        _%type-a75669%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69456%_
                         _%slot75667%_
                         _%type-a75669%_
                         _%type-b75670%_))))
              (gx#raise-syntax-error
               '#f
               '"incompatible slot types"
               _%stx69456%_
               _%slot75667%_
               _%type-a75669%_
               _%type-b75670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-a75683%_))
                                                  (let ((_%$e75743%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj82496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-a75683%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj82496
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj82496 '1 '#f '#f))
                        (unchecked-slot-ref __obj82496 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75743%_
                                                        ((lambda (_%klass-a75747%_)
                                                           (_%again75680%_
                                                            _%klass-a75747%_
                                                            _%klass-b75685%_))
                                                         _%$e75743%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (class-instance?
                                                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                               _%klass-b75685%_))
                                                            (let ((_%$e75752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-local-value
                            (let ((__obj82498 _%klass-b75685%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82498
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82498
                                     '1
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref __obj82498 'identifier)))
                            false)))
                      (if _%$e75752%_
                          ((lambda (_%klass-b75756%_)
                             (_%again75680%_
                              _%klass-a75683%_
                              _%klass-b75756%_))
                           _%$e75752%_)
                          (if (gx#free-identifier=?
                               (let ((__obj82499 _%klass-a75683%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82499
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82499
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj82499
                                      'identifier)))
                               (let ((__obj82500 _%klass-b75685%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82500
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82500
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj82500
                                      'identifier))))
                              _%type-a75669%_
                              (gx#raise-syntax-error
                               '#f
                               '"cannot resolve type reference to determine slot type compatibility"
                               _%stx69456%_
                               _%slot75667%_
                               _%type-a75669%_
                               _%type-b75670%_))))
                    (if (gx#free-identifier=?
                         _%type-b75670%_
                         (let ((__obj82497 _%klass-a75683%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj82497
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj82497
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj82497 'identifier))))
                        _%type-b75670%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69456%_
                         _%slot75667%_
                         _%type-a75669%_
                         _%type-b75670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"unexpected slot type"
                                                   _%stx69456%_
                                                   _%slot75667%_
                                                   _%type-a75669%_
                                                   _%klass-a75683%_)))))))))))
                 (_%get-mixin-slots69472%_
                  (lambda (_%super75538%_)
                    (letrec* ((_%tab75541%_ (make-hash-table-eq)))
                      (let _%loop75544%_ ((_%rest75547%_ _%super75538%_)
                                          (_%result75549%_ '()))
                        (let* ((_%rest7555075558%_ _%rest75547%_)
                               (_%else7555275570%_
                                (lambda ()
                                  (values (reverse! _%result75549%_)
                                          _%tab75541%_)))
                               (_%K7555475651%_
                                (lambda (_%rest75574%_ _%type-id75576%_)
                                  (let* ((_%klass75578%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                             _%stx69456%_
                                             _%type-id75576%_)))
                                         (_%slots75581%_
                                          (let ((__obj82507 _%klass75578%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj82507
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj82507
                                                   '4
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj82507
                                                 'slots)))))
                                    (let _%loop-inner75586%_ ((_%rest-slots75589%_
                                                               _%slots75581%_)
                                                              (_%result75591%_
                                                               _%result75549%_))
                                      (let* ((_%rest-slots7559275600%_
                                              _%rest-slots75589%_)
                                             (_%else7559475612%_
                                              (lambda ()
                                                (_%loop75544%_
                                                 (foldr cons
                                                        _%rest75574%_
                                                        (let ((__obj82508
                                                               _%klass75578%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj82508
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82508 '3 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj82508
                       'super))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%result75591%_)))
                                             (_%K7559675635%_
                                              (lambda (_%rest-slots75616%_
                                                       _%slot75618%_)
                                                (let ((_%slot-type75620%_
                                                       (hash-ref
                                                        _%tab75541%_
                                                        _%slot75618%_
                                                        absent-value)))
                                                  (if (eq? _%slot-type75620%_
                                                           absent-value)
                                                      (let ()
                                                        (hash-put!
                                                         _%tab75541%_
                                                         _%slot75618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                            _%klass75578%_
                                                            _%slot75618%_)))
                                                        (_%loop-inner75586%_
                                                         _%rest-slots75616%_
                                                         (cons _%slot75618%_
                                                               _%result75591%_)))
                                                      (if (not _%slot-type75620%_)
                                                          (let ()
                                                            (hash-put!
                                                             _%tab75541%_
                                                             _%slot75618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%klass75578%_
                        _%slot75618%_)))
                    (_%loop-inner75586%_ _%rest-slots75616%_ _%result75591%_))
                  (let* ((_%other-slot-type75629%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%klass75578%_
                             _%slot75618%_)))
                         (_%slot-type75632%_
                          (_%infer-slot-type69471%_
                           _%slot75618%_
                           _%other-slot-type75629%_
                           _%slot-type75620%_)))
                    (hash-put! _%tab75541%_ _%slot75618%_ _%slot-type75632%_)
                    (_%loop-inner75586%_
                     _%rest-slots75616%_
                     _%result75591%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-slots7559275600%_))
                                            (let ((_%hd7559775639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-slots7559275600%_)))
                                                  (_%tl7559875642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-slots7559275600%_))))
                                              (let* ((_%slot75645%_
                                                      _%hd7559775639%_)
                                                     (_%rest-slots75648%_
                                                      _%tl7559875642%_))
                                                (_%K7559675635%_
                                                 _%rest-slots75648%_
                                                 _%slot75645%_)))
                                            (_%else7559475612%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest7555075558%_))
                              (let ((_%hd7555575655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest7555075558%_)))
                                    (_%tl7555675658%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest7555075558%_))))
                                (let* ((_%type-id75661%_ _%hd7555575655%_)
                                       (_%rest75664%_ _%tl7555675658%_))
                                  (_%K7555475651%_
                                   _%rest75664%_
                                   _%type-id75661%_)))
                              (_%else7555275570%_)))))))
                 (_%get-slot-table69473%_
                  (lambda (_%slots75481%_
                           _%mixin-slots75483%_
                           _%super75484%_
                           _%contract-e75485%_
                           _%getf75486%_
                           _%mixf75487%_)
                    (letrec* ((_%tab75489%_ (make-hash-table-eq)))
                      (for-each
                       (lambda (_%slot75492%_)
                         (for-each
                          (lambda (_%super-type75495%_)
                            (let* ((_%klass75498%_
                                    (gx#syntax-local-value
                                     _%super-type75495%_))
                                   (_%$e75501%_
                                    (hash-get _%tab75489%_ _%slot75492%_)))
                              (if _%$e75501%_
                                  ((lambda (_%a75505%_)
                                     (let ((_%$e75508%_
                                            (_%getf75486%_
                                             _%klass75498%_
                                             _%slot75492%_)))
                                       (if _%$e75508%_
                                           ((lambda (_%b75512%_)
                                              (hash-put!
                                               _%tab75489%_
                                               _%slot75492%_
                                               (_%mixf75487%_
                                                _%slot75492%_
                                                _%a75505%_
                                                _%b75512%_)))
                                            _%$e75508%_)
                                           '#!void)))
                                   _%$e75501%_)
                                  (let ((_%$e75515%_
                                         (_%getf75486%_
                                          _%klass75498%_
                                          _%slot75492%_)))
                                    (if _%$e75515%_
                                        ((lambda (_%a75519%_)
                                           (hash-put!
                                            _%tab75489%_
                                            _%slot75492%_
                                            _%a75519%_))
                                         _%$e75515%_)
                                        '#!void)))))
                          _%super75484%_))
                       _%mixin-slots75483%_)
                      (for-each
                       (lambda (_%slot-spec75522%_)
                         (let ((_%slot75525%_
                                (_%slot-name69462%_ _%slot-spec75522%_))
                               (_%a75527%_
                                (_%contract-e75485%_ _%slot-spec75522%_)))
                           (if _%a75527%_
                               (let ((_%$e75529%_
                                      (hash-get _%tab75489%_ _%slot75525%_)))
                                 (if _%$e75529%_
                                     ((lambda (_%b75533%_)
                                        (hash-put!
                                         _%tab75489%_
                                         _%slot75525%_
                                         (_%mixf75487%_
                                          _%slot75525%_
                                          _%a75527%_
                                          _%b75533%_)))
                                      _%$e75529%_)
                                     (hash-put!
                                      _%tab75489%_
                                      _%slot75525%_
                                      _%a75527%_)))
                               '#!void)))
                       _%slots75481%_)
                      _%tab75489%_)))
                 (_%get-slot-contracts69474%_
                  (lambda (_%slots73917%_
                           _%mixin-slots73919%_
                           _%super73920%_
                           _%slot-type-table73921%_)
                    (_%get-slot-table69473%_
                     _%slots73917%_
                     _%mixin-slots73919%_
                     _%super73920%_
                     _%slot-contract-normalize69464%_
                     |gerbil/core/contract~Using[1]#!class-slot-contract|
                     (lambda (_%slot73923%_ _%a73925%_ _%b73926%_)
                       (let* ((_%__stx8223882239%_ _%a73925%_)
                              (_%g7398874041%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx8223882239%_))))
                         (let ((_%__kont8224182242%_
                                (lambda ()
                                  (let* ((_%__stx8220682207%_ _%b73926%_)
                                         (_%g7531175329%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8220682207%_))))
                                    (let ((_%__kont8220982210%_
                                           (lambda (_%L75423%_)
                                             (let* ((_%g7544275450%_
                                                     (lambda (_%g7544375446%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7544375446%_)))
                                                    (_%g7544175469%_
                                                     (lambda (_%g7544375454%_)
                                                       ((lambda (_%L75457%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':)
                        (cons _%L75457%_ '())))
                _%g7544375454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7544175469%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8221182212%_
                                           (lambda (_%L75356%_)
                                             (let* ((_%g7537575383%_
                                                     (lambda (_%g7537675379%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7537675379%_)))
                                                    (_%g7537475402%_
                                                     (lambda (_%g7537675387%_)
                                                       ((lambda (_%L75390%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75356%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75390%_ '())))))
                _%g7537675387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7537475402%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_))))))
                                      (let ((_%__match8221982220%_
                                             (lambda (_%e7531475413%_
                                                      _%hd7531575417%_
                                                      _%tl7531675420%_)
                                               (let ((_%L75423%_
                                                      _%hd7531575417%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75423%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75423%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75423%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8220982210%_
                                                      _%L75423%_)
                                                     (if (gx#identifier?
                                                          _%hd7531575417%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g82777_|
                                                              _%hd7531575417%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7531675420%_)
                         (let ((_%e7532175346%_
                                (gx#syntax-e _%tl7531675420%_)))
                           (let ((_%tl7532375353%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7532175346%_)))
                                 (_%hd7532275350%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7532175346%_))))
                             (_%__kont8221182212%_ _%hd7532275350%_)))
                         (let () (declare (not safe)) (_%g7531175329%_)))
                     (let () (declare (not safe)) (_%g7531175329%_)))
                 (let () (declare (not safe)) (_%g7531175329%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8220682207%_)
                                            (let ((_%e7531475413%_
                                                   (gx#syntax-e
                                                    _%__stx8220682207%_)))
                                              (let ((_%tl7531675420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7531475413%_)))
                                                    (_%hd7531575417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7531475413%_))))
                                                (_%__match8221982220%_
                                                 _%e7531475413%_
                                                 _%hd7531575417%_
                                                 _%tl7531675420%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7531175329%_))))))))
                               (_%__kont8224382244%_
                                (lambda ()
                                  (let* ((_%__stx8215882159%_ _%b73926%_)
                                         (_%g7510775127%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8215882159%_))))
                                    (let ((_%__kont8216182162%_
                                           (lambda ()
                                             (let* ((_%g7524975257%_
                                                     (lambda (_%g7525075253%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7525075253%_)))
                                                    (_%g7524875281%_
                                                     (lambda (_%g7525075261%_)
                                                       ((lambda (_%L75264%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':?)
                        (cons _%L75264%_ '())))
                _%g7525075261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7524875281%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8216382164%_
                                           (lambda (_%L75175%_)
                                             (let* ((_%g7519775205%_
                                                     (lambda (_%g7519875201%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7519875201%_)))
                                                    (_%g7519675224%_
                                                     (lambda (_%g7519875209%_)
                                                       ((lambda (_%L75212%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75175%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75212%_ '())))))
                _%g7519875209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7519675224%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8216582166%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69456%_
                                              _%slot73923%_
                                              _%a73925%_
                                              _%b73926%_))))
                                      (if (gx#stx-pair? _%__stx8215882159%_)
                                          (let ((_%e7510975235%_
                                                 (gx#syntax-e
                                                  _%__stx8215882159%_)))
                                            (let ((_%tl7511175242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7510975235%_)))
                                                  (_%hd7511075239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7510975235%_))))
                                              (if (gx#identifier?
                                                   _%hd7511075239%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82778_|
                                                       _%hd7511075239%_)
                                                      (_%__kont8216182162%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g82779_|
                                                           _%hd7511075239%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7511175242%_)
                                                              (let ((_%e7511675155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7511175242%_)))
                        (let ((_%tl7511875162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7511675155%_)))
                              (_%hd7511775159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7511675155%_))))
                          (if (gx#stx-pair? _%tl7511875162%_)
                              (let ((_%e7511975165%_
                                     (gx#syntax-e _%tl7511875162%_)))
                                (let ((_%tl7512175172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7511975165%_)))
                                      (_%hd7512075169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7511975165%_))))
                                  (if (gx#identifier? _%hd7512075169%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82780_|
                                           _%hd7512075169%_)
                                          (_%__kont8216382164%_
                                           _%hd7511775159%_)
                                          (_%__kont8216582166%_))
                                      (_%__kont8216582166%_))))
                              (_%__kont8216582166%_))))
                      (_%__kont8216582166%_))
                  (_%__kont8216582166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8216582166%_))))
                                          (_%__kont8216582166%_))))))
                               (_%__kont8224582246%_
                                (lambda ()
                                  (let* ((_%__stx8212682127%_ _%b73926%_)
                                         (_%g7491574934%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8212682127%_))))
                                    (let ((_%__kont8212982130%_
                                           (lambda (_%L75030%_)
                                             (let* ((_%g7504975057%_
                                                     (lambda (_%g7505075053%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7505075053%_)))
                                                    (_%g7504875076%_
                                                     (lambda (_%g7505075061%_)
                                                       ((lambda (_%L75064%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':-)
                        (cons _%L75064%_ '())))
                _%g7505075061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7504875076%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8213182132%_
                                           (lambda (_%L74961%_ _%L74963%_)
                                             (let* ((_%g7498274990%_
                                                     (lambda (_%g7498374986%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7498374986%_)))
                                                    (_%g7498175009%_
                                                     (lambda (_%g7498374994%_)
                                                       ((lambda (_%L74997%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74963%_
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74997%_ '())))))
                _%g7498374994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7498175009%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_))))))
                                      (let ((_%__match8213982140%_
                                             (lambda (_%e7491875020%_
                                                      _%hd7491975024%_
                                                      _%tl7492075027%_)
                                               (let ((_%L75030%_
                                                      _%hd7491975024%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75030%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75030%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75030%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8212982130%_
                                                      _%L75030%_)
                                                     (if (gx#identifier?
                                                          _%hd7491975024%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g82781_|
                                                              _%hd7491975024%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7492075027%_)
                         (let ((_%e7492674951%_
                                (gx#syntax-e _%tl7492075027%_)))
                           (let ((_%tl7492874958%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7492674951%_)))
                                 (_%hd7492774955%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7492674951%_))))
                             (_%__kont8213182132%_
                              _%tl7492874958%_
                              _%hd7492774955%_)))
                         (let () (declare (not safe)) (_%g7491574934%_)))
                     (let () (declare (not safe)) (_%g7491574934%_)))
                 (let () (declare (not safe)) (_%g7491574934%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8212682127%_)
                                            (let ((_%e7491875020%_
                                                   (gx#syntax-e
                                                    _%__stx8212682127%_)))
                                              (let ((_%tl7492075027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7491875020%_)))
                                                    (_%hd7491975024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7491875020%_))))
                                                (_%__match8213982140%_
                                                 _%e7491875020%_
                                                 _%hd7491975024%_
                                                 _%tl7492075027%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7491574934%_))))))))
                               (_%__kont8224782248%_
                                (lambda (_%L74742%_)
                                  (let* ((_%__stx8210082101%_ _%b73926%_)
                                         (_%g7475874772%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8210082101%_))))
                                    (let ((_%__kont8210382104%_
                                           (lambda (_%L74845%_)
                                             (let* ((_%g7485874866%_
                                                     (lambda (_%g7485974862%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7485974862%_)))
                                                    (_%g7485774885%_
                                                     (lambda (_%g7485974870%_)
                                                       ((lambda (_%L74873%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74742%_
                                                      (cons _%L74845%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74873%_ '())))))
                _%g7485974870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7485774885%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8210582106%_
                                           (lambda ()
                                             (let* ((_%g7478374791%_
                                                     (lambda (_%g7478474787%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7478474787%_)))
                                                    (_%g7478274814%_
                                                     (lambda (_%g7478474795%_)
                                                       ((lambda (_%L74798%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74742%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74798%_ '())))))
                _%g7478474795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7478274814%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_))))))
                                      (if (gx#stx-pair? _%__stx8210082101%_)
                                          (let ((_%e7476174825%_
                                                 (gx#syntax-e
                                                  _%__stx8210082101%_)))
                                            (let ((_%tl7476374832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7476174825%_)))
                                                  (_%hd7476274829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7476174825%_))))
                                              (if (gx#identifier?
                                                   _%hd7476274829%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82782_|
                                                       _%hd7476274829%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7476374832%_)
                                                          (let ((_%e7476474835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7476374832%_)))
                    (let ((_%tl7476674842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7476474835%_)))
                          (_%hd7476574839%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7476474835%_))))
                      (_%__kont8210382104%_ _%hd7476574839%_)))
                  (_%__kont8210582106%_))
              (_%__kont8210582106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8210582106%_))))
                                          (_%__kont8210582106%_))))))
                               (_%__kont8224982250%_
                                (lambda (_%L74463%_)
                                  (let* ((_%__stx8203482035%_ _%b73926%_)
                                         (_%g7448174508%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8203482035%_))))
                                    (let ((_%__kont8203782038%_
                                           (lambda ()
                                             (let* ((_%g7466574673%_
                                                     (lambda (_%g7466674669%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7466674669%_)))
                                                    (_%g7466474697%_
                                                     (lambda (_%g7466674677%_)
                                                       ((lambda (_%L74680%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74463%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74680%_ '())))))
                _%g7466674677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7466474697%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8203982040%_
                                           (lambda (_%L74598%_)
                                             (let* ((_%g7461374621%_
                                                     (lambda (_%g7461474617%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7461474617%_)))
                                                    (_%g7461274640%_
                                                     (lambda (_%g7461474625%_)
                                                       ((lambda (_%L74628%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74463%_
                                                      (cons _%L74598%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74628%_ '())))))
                _%g7461474625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7461274640%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8204182042%_
                                           (lambda (_%L74546%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69456%_
                                              _%slot73923%_
                                              _%a73925%_
                                              _%b73926%_)))
                                          (_%__kont8204382044%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69456%_
                                              _%slot73923%_
                                              _%a73925%_
                                              _%b73926%_))))
                                      (if (gx#stx-pair? _%__stx8203482035%_)
                                          (let ((_%e7448374651%_
                                                 (gx#syntax-e
                                                  _%__stx8203482035%_)))
                                            (let ((_%tl7448574658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7448374651%_)))
                                                  (_%hd7448474655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7448374651%_))))
                                              (if (gx#identifier?
                                                   _%hd7448474655%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g82783_|
                                                       _%hd7448474655%_)
                                                      (_%__kont8203782038%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g82784_|
                                                           _%hd7448474655%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7448574658%_)
                                                              (let ((_%e7449074578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7448574658%_)))
                        (let ((_%tl7449274585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7449074578%_)))
                              (_%hd7449174582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7449074578%_))))
                          (if (gx#stx-pair? _%tl7449274585%_)
                              (let ((_%e7449374588%_
                                     (gx#syntax-e _%tl7449274585%_)))
                                (let ((_%tl7449574595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7449374588%_)))
                                      (_%hd7449474592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7449374588%_))))
                                  (if (gx#identifier? _%hd7449474592%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g82785_|
                                           _%hd7449474592%_)
                                          (_%__kont8203982040%_
                                           _%hd7449174582%_)
                                          (_%__kont8204182042%_
                                           _%hd7449174582%_))
                                      (_%__kont8204182042%_
                                       _%hd7449174582%_))))
                              (_%__kont8204182042%_ _%hd7449174582%_))))
                      (_%__kont8204382044%_))
                  (_%__kont8204382044%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8204382044%_))))
                                          (_%__kont8204382044%_))))))
                               (_%__kont8225182252%_
                                (lambda (_%L74280%_)
                                  (let* ((_%__stx8200282003%_ _%b73926%_)
                                         (_%g7429674314%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8200282003%_))))
                                    (let ((_%__kont8200582006%_
                                           (lambda (_%L74403%_)
                                             (let ((_%$e74414%_
                                                    (gx#free-identifier=?
                                                     _%L74403%_
                                                     (gx#datum->syntax
                                                      '#f
                                                      ':))))
                                               (if _%$e74414%_
                                                   _%$e74414%_
                                                   (let ((_%$e74418%_
                                                          (gx#free-identifier=?
                                                           _%L74403%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            ':?))))
                                                     (if _%$e74418%_
                                                         _%$e74418%_
                                                         (gx#free-identifier=?
                                                          _%L74403%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-))))))))
                                          (_%__kont8200782008%_
                                           (lambda (_%L74341%_)
                                             (let* ((_%g7435574363%_
                                                     (lambda (_%g7435674359%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7435674359%_)))
                                                    (_%g7435474382%_
                                                     (lambda (_%g7435674367%_)
                                                       ((lambda (_%L74370%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74280%_
                                                      (cons _%L74341%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74370%_ '())))))
                _%g7435674367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7435474382%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_))))))
                                      (if (gx#stx-pair? _%__stx8200282003%_)
                                          (let ((_%e7429974393%_
                                                 (gx#syntax-e
                                                  _%__stx8200282003%_)))
                                            (let ((_%tl7430174400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7429974393%_)))
                                                  (_%hd7430074397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7429974393%_))))
                                              (_%__kont8200582006%_
                                               _%hd7430074397%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7429674314%_)))))))
                               (_%__kont8225382254%_
                                (lambda (_%L74068%_)
                                  (let* ((_%__stx8197081971%_ _%b73926%_)
                                         (_%g7408274100%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8197081971%_))))
                                    (let ((_%__kont8197381974%_
                                           (lambda (_%L74183%_ _%L74185%_)
                                             (let* ((_%g7420874216%_
                                                     (lambda (_%g7420974212%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7420974212%_)))
                                                    (_%g7420774235%_
                                                     (lambda (_%g7420974220%_)
                                                       ((lambda (_%L74223%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74068%_
                                                      (cons _%L74185%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74223%_ '())))))
                _%g7420974220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7420774235%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_)))))
                                          (_%__kont8197581976%_
                                           (lambda ()
                                             (let* ((_%g7411174119%_
                                                     (lambda (_%g7411274115%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7411274115%_)))
                                                    (_%g7411074142%_
                                                     (lambda (_%g7411274123%_)
                                                       ((lambda (_%L74126%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74068%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74126%_ '())))))
                _%g7411274123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7411074142%_
                                                (hash-ref
                                                 _%slot-type-table73921%_
                                                 _%slot73923%_))))))
                                      (let ((_%__match8199982000%_
                                             (lambda (_%e7408674153%_
                                                      _%hd7408774157%_
                                                      _%tl7408874160%_
                                                      _%e7408974163%_
                                                      _%hd7409074167%_
                                                      _%tl7409174170%_
                                                      _%e7409274173%_
                                                      _%hd7409374177%_
                                                      _%tl7409474180%_)
                                               (let ((_%L74183%_
                                                      _%hd7409374177%_)
                                                     (_%L74185%_
                                                      _%hd7409074167%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L74183%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L74183%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L74183%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8197381974%_
                                                      _%L74183%_
                                                      _%L74185%_)
                                                     (_%__kont8197581976%_))))))
                                        (if (gx#stx-pair? _%__stx8197081971%_)
                                            (let ((_%e7408674153%_
                                                   (gx#syntax-e
                                                    _%__stx8197081971%_)))
                                              (let ((_%tl7408874160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7408674153%_)))
                                                    (_%hd7408774157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7408674153%_))))
                                                (if (gx#identifier?
                                                     _%hd7408774157%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g82786_|
                                                         _%hd7408774157%_)
                                                        (if (gx#stx-pair?
                                                             _%tl7408874160%_)
                                                            (let ((_%e7408974163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl7408874160%_)))
                      (let ((_%tl7409174170%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7408974163%_)))
                            (_%hd7409074167%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7408974163%_))))
                        (if (gx#stx-pair? _%tl7409174170%_)
                            (let ((_%e7409274173%_
                                   (gx#syntax-e _%tl7409174170%_)))
                              (let ((_%tl7409474180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7409274173%_)))
                                    (_%hd7409374177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7409274173%_))))
                                (_%__match8199982000%_
                                 _%e7408674153%_
                                 _%hd7408774157%_
                                 _%tl7408874160%_
                                 _%e7408974163%_
                                 _%hd7409074167%_
                                 _%tl7409174170%_
                                 _%e7409274173%_
                                 _%hd7409374177%_
                                 _%tl7409474180%_)))
                            (_%__kont8197581976%_))))
                    (_%__kont8197581976%_))
                (_%__kont8197581976%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8197581976%_))))
                                            (_%__kont8197581976%_))))))))
                           (if (gx#stx-pair? _%__stx8223882239%_)
                               (let ((_%e7399075296%_
                                      (gx#syntax-e _%__stx8223882239%_)))
                                 (let ((_%tl7399275303%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7399075296%_)))
                                       (_%hd7399175300%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7399075296%_))))
                                   (if (gx#identifier? _%hd7399175300%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g82787_|
                                            _%hd7399175300%_)
                                           (_%__kont8224182242%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g82788_|
                                                _%hd7399175300%_)
                                               (_%__kont8224382244%_)
                                               (if (gx#free-identifier=?
                                                    |gerbil/core/contract~TypedDefinitions[1]#_g82789_|
                                                    _%hd7399175300%_)
                                                   (_%__kont8224582246%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/contract~TypedDefinitions[1]#_g82790_|
                                                        _%hd7399175300%_)
                                                       (if (gx#stx-pair?
                                                            _%tl7399275303%_)
                                                           (let ((_%e7400374722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl7399275303%_)))
                     (let ((_%tl7400574729%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7400374722%_)))
                           (_%hd7400474726%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7400374722%_))))
                       (if (gx#stx-pair? _%tl7400574729%_)
                           (let ((_%e7400674732%_
                                  (gx#syntax-e _%tl7400574729%_)))
                             (let ((_%tl7400874739%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7400674732%_)))
                                   (_%hd7400774736%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7400674732%_))))
                               (if (gx#identifier? _%hd7400774736%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/contract~TypedDefinitions[1]#_g82791_|
                                        _%hd7400774736%_)
                                       (_%__kont8224782248%_ _%hd7400474726%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g82792_|
                                            _%hd7400774736%_)
                                           (_%__kont8224982250%_
                                            _%hd7400474726%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g82793_|
                                                _%hd7400774736%_)
                                               (_%__kont8225182252%_
                                                _%hd7400474726%_)
                                               (_%__kont8225382254%_
                                                _%hd7400474726%_))))
                                   (_%__kont8225382254%_ _%hd7400474726%_))))
                           (_%__kont8225382254%_ _%hd7400474726%_))))
                   (let () (declare (not safe)) (_%g7398874041%_)))
               (let () (declare (not safe)) (_%g7398874041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ()
                                         (declare (not safe))
                                         (_%g7398874041%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g7398874041%_)))))))))
                 (_%get-slot-defaults69475%_
                  (lambda (_%slots73907%_ _%mixin-slots73909%_ _%super73910%_)
                    (_%get-slot-table69473%_
                     _%slots73907%_
                     _%mixin-slots73909%_
                     _%super73910%_
                     _%slot-default69470%_
                     |gerbil/core/contract~Using[1]#!class-slot-default|
                     (lambda (_%slot73912%_ _%a73914%_ _%b73915%_)
                       _%a73914%_))))
                 (_%update-slot-types!69476%_
                  (lambda (_%slots73877%_ _%slot-type-table73879%_)
                    (for-each
                     (lambda (_%slot-spec73881%_)
                       (let* ((_%slot73884%_
                               (_%slot-name69462%_ _%slot-spec73881%_))
                              (_%slot-type7388673888%_
                               (_%slot-contract-type69466%_
                                _%slot-spec73881%_)))
                         (if _%slot-type7388673888%_
                             (let* ((_%slot-type73892%_
                                     _%slot-type7388673888%_)
                                    (_%$e73895%_
                                     (hash-get
                                      _%slot-type-table73879%_
                                      _%slot73884%_)))
                               (if _%$e73895%_
                                   ((lambda (_%other-slot-type73899%_)
                                      (let ((_%slot-type73902%_
                                             (_%infer-slot-type69471%_
                                              _%slot73884%_
                                              _%other-slot-type73899%_
                                              _%slot-type73892%_)))
                                        (hash-put!
                                         _%slot-type-table73879%_
                                         _%slot73884%_
                                         _%slot-type73902%_)))
                                    _%$e73895%_)
                                   (hash-put!
                                    _%slot-type-table73879%_
                                    _%slot73884%_
                                    _%slot-type73892%_)))
                             '#f)))
                     _%slots73877%_)))
                 (_%syntax-local-value/context69477%_
                  (lambda (_%id73871%_)
                    (gx#syntax-local-value
                     _%id73871%_
                     (lambda (_%id73874%_)
                       (gx#raise-syntax-error
                        '#f
                        '"not a class meta type binding"
                        _%stx69456%_
                        _%id73874%_)))))
                 (_%order-slots69478%_
                  (lambda (_%slots73802%_ _%super73804%_)
                    (let ((_g82794_
                           (c4-linearize
                            '()
                            _%super73804%_
                            'get-precedence-list:
                            (lambda (_%klass-id73806%_)
                              (cons _%klass-id73806%_
                                    (let ((__tmp82796
                                           (_%syntax-local-value/context69477%_
                                            _%klass-id73806%_)))
                                      (declare (not safe))
                                      (gerbil/core/contract~ClassMeta#!class-precedence-list
                                       __tmp82796))))
                            'struct:
                            (lambda (_%klass-id73809%_)
                              (let ((__obj82509
                                     (_%syntax-local-value/context69477%_
                                      _%klass-id73809%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj82509
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj82509
                                       '7
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj82509
                                     'struct?))))
                            'eq:
                            gx#free-identifier=?
                            'get-name:
                            gx#stx-e)))
                      (begin
                        (let ((_g82795_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g82794_)
                                     (##vector-length _g82794_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g82795_ 2)))
                              (error "Context expects 2 values" _g82795_)))
                        (let ((_%precedence-list73812%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g82794_ 0)))
                              (_%base-struct73814%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g82794_ 1))))
                          (let* ((_%base-fields73828%_
                                  (if _%base-struct73814%_
                                      (let* ((_%klass73816%_
                                              (gx#syntax-local-value
                                               _%base-struct73814%_))
                                             (_%$e73819%_
                                              (let ((__obj82510
                                                     _%klass73816%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj82510
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj82510
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj82510
                                                     'ordered-slots)))))
                                        (if _%$e73819%_
                                            _%$e73819%_
                                            (let ((_%ordered73825%_
                                                   (_%order-slots69478%_
                                                    (let ((__obj82511
                                                           _%klass73816%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj82511
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj82511
                                                             '4
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj82511
                                                           'slots)))
                                                    (let ((__obj82512
                                                           _%klass73816%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj82512
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj82512
                                                             '3
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj82512
                                                           'super))))))
                                              (let ((__obj82513
                                                     _%klass73816%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj82513
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       __obj82513
                                                       _%ordered73825%_
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-set!
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj82513
                                                     'ordered-slots
                                                     _%ordered73825%_)))
                                              _%ordered73825%_)))
                                      '()))
                                 (_%r-fields73831%_
                                  (reverse _%base-fields73828%_))
                                 (_%seen-slots73842%_
                                  (let ((_%tab73834%_ (make-hash-table-eq)))
                                    (for-each
                                     (lambda (_%g7383673838%_)
                                       (hash-put!
                                        _%tab73834%_
                                        _%g7383673838%_
                                        '#t))
                                     _%base-fields73828%_)
                                    _%tab73834%_))
                                 (_%process-slot73848%_
                                  (lambda (_%slot73845%_)
                                    (if (hash-get
                                         _%seen-slots73842%_
                                         _%slot73845%_)
                                        '#!void
                                        (begin
                                          (hash-put!
                                           _%seen-slots73842%_
                                           _%slot73845%_
                                           '#t)
                                          (set! _%r-fields73831%_
                                                (cons _%slot73845%_
                                                      _%r-fields73831%_)))))))
                            (for-each
                             (lambda (_%mixin73853%_)
                               (let ((_%klass73856%_
                                      (gx#syntax-local-value _%mixin73853%_)))
                                 (if (let ((__obj82514 _%klass73856%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj82514
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj82514
                                              '7
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj82514
                                            'struct?)))
                                     '#!void
                                     (let ((_%$e73859%_
                                            (let ((__obj82515 _%klass73856%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj82515
                                                     'gerbil.core#class-type-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj82515
                                                     '6
                                                     '#f
                                                     '#f))
                                                  (class-slot-ref
                                                   gerbil/core/mop~MOP-2#class-type-info::t
                                                   __obj82515
                                                   'ordered-slots)))))
                                       (if _%$e73859%_
                                           ((lambda (_%ordered73863%_)
                                              (for-each
                                               _%process-slot73848%_
                                               _%ordered73863%_))
                                            _%$e73859%_)
                                           (let ((_%ordered73868%_
                                                  (_%order-slots69478%_
                                                   (let ((__obj82516
                                                          _%klass73856%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj82516
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj82516
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj82516
                                                          'slots)))
                                                   (let ((__obj82517
                                                          _%klass73856%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj82517
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj82517
                                                            '3
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj82517
                                                          'super))))))
                                             (let ((__obj82518 _%klass73856%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj82518
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-set!
                                                      __obj82518
                                                      _%ordered73868%_
                                                      '6
                                                      '#f
                                                      '#f))
                                                   (class-slot-set!
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj82518
                                                    'ordered-slots
                                                    _%ordered73868%_)))
                                             (for-each
                                              _%process-slot73848%_
                                              _%ordered73868%_)))))))
                             _%precedence-list73812%_)
                            (for-each _%process-slot73848%_ _%slots73802%_)
                            (reverse _%r-fields73831%_)))))))
                 (_%wrap69479%_
                  (lambda (_%e-stx73799%_)
                    (gx#stx-wrap-source
                     _%e-stx73799%_
                     (gx#stx-source _%stx69456%_))))
                 (_%generate-defclass69480%_
                  (lambda (_%id69614%_
                           _%super-ref69616%_
                           _%slots69617%_
                           _%body69618%_)
                    (letrec ((_%make-id69620%_
                              (lambda _%args73796%_
                                (apply gx#stx-identifier
                                       _%id69614%_
                                       _%args73796%_))))
                      (gx#check-duplicate-identifiers
                       (map _%slot-name69462%_ _%slots69617%_)
                       _%stx69456%_)
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#check-signature-spec!__%|
                         '#f
                         absent-value
                         '#f
                         _%stx69456%_
                         _%slots69617%_))
                      (_%check-typedef-body!69461%_ _%body69618%_)
                      (let ((_g82797_
                             (_%get-mixin-slots69472%_ _%super-ref69616%_)))
                        (begin
                          (let ((_g82798_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g82797_)
                                       (##vector-length _g82797_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g82798_ 2)))
                                (error "Context expects 2 values" _g82798_)))
                          (let ((_%mixin-slots69623%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82797_ 0)))
                                (_%slot-type-table69625%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g82797_ 1))))
                            (let* ((_%slot-contract-table69627%_
                                    (_%get-slot-contracts69474%_
                                     _%slots69617%_
                                     _%mixin-slots69623%_
                                     _%super-ref69616%_
                                     _%slot-type-table69625%_))
                                   (_%slot-default-table69630%_
                                    (_%get-slot-defaults69475%_
                                     _%slots69617%_
                                     _%mixin-slots69623%_
                                     _%super-ref69616%_))
                                   (_%ordered-slots69633%_
                                    (_%order-slots69478%_
                                     (map _%slot-name69462%_ _%slots69617%_)
                                     _%super-ref69616%_)))
                              (_%update-slot-types!69476%_
                               _%slots69617%_
                               _%slot-type-table69625%_)
                              (let* ((_%slots69638%_
                                      (map _%slot-name69462%_ _%slots69617%_))
                                     (_%mixin-slots69644%_
                                      (filter (lambda (_%slot69641%_)
                                                (not (memq _%slot69641%_
                                                           _%slots69638%_)))
                                              _%mixin-slots69623%_))
                                     (_%name69647%_
                                      (symbol->string (gx#stx-e _%id69614%_)))
                                     (_%super69650%_
                                      (map gx#syntax-local-value
                                           _%super-ref69616%_))
                                     (_%struct?69653%_
                                      (gx#stx-getq 'struct: _%body69618%_))
                                     (_%g6965669664%_
                                      (lambda (_%g6965769660%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g6965769660%_)))
                                     (_%g6965573792%_
                                      (lambda (_%g6965769668%_)
                                        ((lambda (_%L69671%_)
                                           (let* ((_%g6969469702%_
                                                   (lambda (_%g6969569698%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g6969569698%_)))
                                                  (_%g6969373788%_
                                                   (lambda (_%g6969569706%_)
                                                     ((lambda (_%L69709%_)
                                                        (let* ((_%g6972269730%_
                                                                (lambda (_%g6972369726%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g6972369726%_)))
                       (_%g6972173784%_
                        (lambda (_%g6972369734%_)
                          ((lambda (_%L69737%_)
                             (let* ((_%g6975069758%_
                                     (lambda (_%g6975169754%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6975169754%_)))
                                    (_%g6974973780%_
                                     (lambda (_%g6975169762%_)
                                       ((lambda (_%L69765%_)
                                          (let* ((_%g6977869786%_
                                                  (lambda (_%g6977969782%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g6977969782%_)))
                                                 (_%g6977773776%_
                                                  (lambda (_%g6977969790%_)
                                                    ((lambda (_%L69793%_)
                                                       (let* ((_%g6980669823%_
                                                               (lambda (_%g6980769819%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g6980769819%_)))
                      (_%g6980573772%_
                       (lambda (_%g6980769827%_)
                         (if (gx#stx-pair/null? _%g6980769827%_)
                             (let ((_g82799_
                                    (gx#syntax-split-splice
                                     _%g6980769827%_
                                     '0)))
                               (begin
                                 (let ((_g82800_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g82799_)
                                              (##vector-length _g82799_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g82800_ 2)))
                                       (error "Context expects 2 values"
                                              _g82800_)))
                                 (let ((_%target6980969830%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82799_ 0)))
                                       (_%tl6981169833%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82799_ 1))))
                                   (if (gx#stx-null? _%tl6981169833%_)
                                       (letrec ((_%loop6981269836%_
                                                 (lambda (_%hd6981069840%_
                                                          _%slot6981669843%_)
                                                   (if (gx#stx-pair?
                                                        _%hd6981069840%_)
                                                       (let ((_%e6981369846%_
                                                              (gx#syntax-e
                                                               _%hd6981069840%_)))
                                                         (let ((_%lp-hd6981469850%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6981369846%_)))
                       (_%lp-tl6981569853%_
                        (let () (declare (not safe)) (##cdr _%e6981369846%_))))
                   (_%loop6981269836%_
                    _%lp-tl6981569853%_
                    (cons _%lp-hd6981469850%_ _%slot6981669843%_))))
               (let ((_%slot6981769856%_ (reverse _%slot6981669843%_)))
                 ((lambda (_%L69860%_)
                    (let* ((_%g6987769894%_
                            (lambda (_%g6987869890%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6987869890%_)))
                           (_%g6987673768%_
                            (lambda (_%g6987869898%_)
                              (if (gx#stx-pair/null? _%g6987869898%_)
                                  (let ((_g82801_
                                         (gx#syntax-split-splice
                                          _%g6987869898%_
                                          '0)))
                                    (begin
                                      (let ((_g82802_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82801_)
                                                   (##vector-length _g82801_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82802_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82802_)))
                                      (let ((_%target6988069901%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82801_ 0)))
                                            (_%tl6988269904%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82801_ 1))))
                                        (if (gx#stx-null? _%tl6988269904%_)
                                            (letrec ((_%loop6988369907%_
                                                      (lambda (_%hd6988169911%_
                                                               _%ordered-slot6988769914%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6988169911%_)
                                                            (let ((_%e6988469917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6988169911%_)))
                      (let ((_%lp-hd6988569921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6988469917%_)))
                            (_%lp-tl6988669924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6988469917%_))))
                        (_%loop6988369907%_
                         _%lp-tl6988669924%_
                         (cons _%lp-hd6988569921%_
                               _%ordered-slot6988769914%_))))
                    (let ((_%ordered-slot6988869927%_
                           (reverse _%ordered-slot6988769914%_)))
                      ((lambda (_%L69931%_)
                         (let* ((_%g6994869965%_
                                 (lambda (_%g6994969961%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g6994969961%_)))
                                (_%g6994773759%_
                                 (lambda (_%g6994969969%_)
                                   (if (gx#stx-pair/null? _%g6994969969%_)
                                       (let ((_g82803_
                                              (gx#syntax-split-splice
                                               _%g6994969969%_
                                               '0)))
                                         (begin
                                           (let ((_g82804_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82803_)
                                                        (##vector-length
                                                         _g82803_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82804_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82804_)))
                                           (let ((_%target6995169972%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82803_ 0)))
                                                 (_%tl6995369975%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82803_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl6995369975%_)
                                                 (letrec ((_%loop6995469978%_
                                                           (lambda (_%hd6995269982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%getf6995869985%_)
                     (if (gx#stx-pair? _%hd6995269982%_)
                         (let ((_%e6995569988%_
                                (gx#syntax-e _%hd6995269982%_)))
                           (let ((_%lp-hd6995669992%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e6995569988%_)))
                                 (_%lp-tl6995769995%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e6995569988%_))))
                             (_%loop6995469978%_
                              _%lp-tl6995769995%_
                              (cons _%lp-hd6995669992%_ _%getf6995869985%_))))
                         (let ((_%getf6995969998%_
                                (reverse _%getf6995869985%_)))
                           ((lambda (_%L70002%_)
                              (let* ((_%g7001970036%_
                                      (lambda (_%g7002070032%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7002070032%_)))
                                     (_%g7001873750%_
                                      (lambda (_%g7002070040%_)
                                        (if (gx#stx-pair/null? _%g7002070040%_)
                                            (let ((_g82805_
                                                   (gx#syntax-split-splice
                                                    _%g7002070040%_
                                                    '0)))
                                              (begin
                                                (let ((_g82806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g82805_)
                                                             (##vector-length
                                                              _g82805_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g82806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g82806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7002270043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82805_
                                                          0)))
                                                      (_%tl7002470046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82805_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7002470046%_)
                                                      (letrec ((_%loop7002570049%_
                                                                (lambda (_%hd7002370053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%setf7002970056%_)
                          (if (gx#stx-pair? _%hd7002370053%_)
                              (let ((_%e7002670059%_
                                     (gx#syntax-e _%hd7002370053%_)))
                                (let ((_%lp-hd7002770063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7002670059%_)))
                                      (_%lp-tl7002870066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7002670059%_))))
                                  (_%loop7002570049%_
                                   _%lp-tl7002870066%_
                                   (cons _%lp-hd7002770063%_
                                         _%setf7002970056%_))))
                              (let ((_%setf7003070069%_
                                     (reverse _%setf7002970056%_)))
                                ((lambda (_%L70073%_)
                                   (let* ((_%g7009070107%_
                                           (lambda (_%g7009170103%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7009170103%_)))
                                          (_%g7008973741%_
                                           (lambda (_%g7009170111%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7009170111%_)
                                                 (let ((_g82807_
                                                        (gx#syntax-split-splice
                                                         _%g7009170111%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g82808_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82807_)
                          (##vector-length _g82807_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g82808_ 2)))
                   (error "Context expects 2 values" _g82808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7009370114%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82807_
                                                               0)))
                                                           (_%tl7009570117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82807_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7009570117%_)
                                                           (letrec ((_%loop7009670120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7009470124%_ _%rawsetf7010070127%_)
                               (if (gx#stx-pair? _%hd7009470124%_)
                                   (let ((_%e7009770130%_
                                          (gx#syntax-e _%hd7009470124%_)))
                                     (let ((_%lp-hd7009870134%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7009770130%_)))
                                           (_%lp-tl7009970137%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7009770130%_))))
                                       (_%loop7009670120%_
                                        _%lp-tl7009970137%_
                                        (cons _%lp-hd7009870134%_
                                              _%rawsetf7010070127%_))))
                                   (let ((_%rawsetf7010170140%_
                                          (reverse _%rawsetf7010070127%_)))
                                     ((lambda (_%L70144%_)
                                        (let* ((_%g7016170178%_
                                                (lambda (_%g7016270174%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7016270174%_)))
                                               (_%g7016073737%_
                                                (lambda (_%g7016270182%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7016270182%_)
                                                      (let ((_g82809_
                                                             (gx#syntax-split-splice
                                                              _%g7016270182%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g82810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g82809_)
                               (##vector-length _g82809_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g82810_ 2)))
                        (error "Context expects 2 values" _g82810_)))
                  (let ((_%target7016470185%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82809_ 0)))
                        (_%tl7016670188%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82809_ 1))))
                    (if (gx#stx-null? _%tl7016670188%_)
                        (letrec ((_%loop7016770191%_
                                  (lambda (_%hd7016570195%_
                                           _%mixin-slot7017170198%_)
                                    (if (gx#stx-pair? _%hd7016570195%_)
                                        (let ((_%e7016870201%_
                                               (gx#syntax-e _%hd7016570195%_)))
                                          (let ((_%lp-hd7016970205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7016870201%_)))
                                                (_%lp-tl7017070208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7016870201%_))))
                                            (_%loop7016770191%_
                                             _%lp-tl7017070208%_
                                             (cons _%lp-hd7016970205%_
                                                   _%mixin-slot7017170198%_))))
                                        (let ((_%mixin-slot7017270211%_
                                               (reverse _%mixin-slot7017170198%_)))
                                          ((lambda (_%L70215%_)
                                             (let* ((_%g7023270249%_
                                                     (lambda (_%g7023370245%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7023370245%_)))
                                                    (_%g7023173728%_
                                                     (lambda (_%g7023370253%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7023370253%_)
                                                           (let ((_g82811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7023370253%_ '0)))
                     (begin
                       (let ((_g82812_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g82811_)
                                    (##vector-length _g82811_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g82812_ 2)))
                             (error "Context expects 2 values" _g82812_)))
                       (let ((_%target7023570256%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82811_ 0)))
                             (_%tl7023770259%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82811_ 1))))
                         (if (gx#stx-null? _%tl7023770259%_)
                             (letrec ((_%loop7023870262%_
                                       (lambda (_%hd7023670266%_
                                                _%mixin-getf7024270269%_)
                                         (if (gx#stx-pair? _%hd7023670266%_)
                                             (let ((_%e7023970272%_
                                                    (gx#syntax-e
                                                     _%hd7023670266%_)))
                                               (let ((_%lp-hd7024070276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7023970272%_)))
                                                     (_%lp-tl7024170279%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7023970272%_))))
                                                 (_%loop7023870262%_
                                                  _%lp-tl7024170279%_
                                                  (cons _%lp-hd7024070276%_
                                                        _%mixin-getf7024270269%_))))
                                             (let ((_%mixin-getf7024370282%_
                                                    (reverse _%mixin-getf7024270269%_)))
                                               ((lambda (_%L70286%_)
                                                  (let* ((_%g7030370320%_
                                                          (lambda (_%g7030470316%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g7030470316%_)))
                                                         (_%g7030273719%_
                                                          (lambda (_%g7030470324%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7030470324%_)
                        (let ((_g82813_
                               (gx#syntax-split-splice _%g7030470324%_ '0)))
                          (begin
                            (let ((_g82814_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g82813_)
                                         (##vector-length _g82813_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g82814_ 2)))
                                  (error "Context expects 2 values" _g82814_)))
                            (let ((_%target7030670327%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g82813_ 0)))
                                  (_%tl7030870330%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g82813_ 1))))
                              (if (gx#stx-null? _%tl7030870330%_)
                                  (letrec ((_%loop7030970333%_
                                            (lambda (_%hd7030770337%_
                                                     _%mixin-setf7031370340%_)
                                              (if (gx#stx-pair?
                                                   _%hd7030770337%_)
                                                  (let ((_%e7031070343%_
                                                         (gx#syntax-e
                                                          _%hd7030770337%_)))
                                                    (let ((_%lp-hd7031170347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7031070343%_)))
                                                          (_%lp-tl7031270350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7031070343%_))))
                                                      (_%loop7030970333%_
                                                       _%lp-tl7031270350%_
                                                       (cons _%lp-hd7031170347%_
                                                             _%mixin-setf7031370340%_))))
                                                  (let ((_%mixin-setf7031470353%_
                                                         (reverse _%mixin-setf7031370340%_)))
                                                    ((lambda (_%L70357%_)
                                                       (let* ((_%g7037470391%_
                                                               (lambda (_%g7037570387%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7037570387%_)))
                      (_%g7037373710%_
                       (lambda (_%g7037570395%_)
                         (if (gx#stx-pair/null? _%g7037570395%_)
                             (let ((_g82815_
                                    (gx#syntax-split-splice
                                     _%g7037570395%_
                                     '0)))
                               (begin
                                 (let ((_g82816_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g82815_)
                                              (##vector-length _g82815_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g82816_ 2)))
                                       (error "Context expects 2 values"
                                              _g82816_)))
                                 (let ((_%target7037770398%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82815_ 0)))
                                       (_%tl7037970401%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g82815_ 1))))
                                   (if (gx#stx-null? _%tl7037970401%_)
                                       (letrec ((_%loop7038070404%_
                                                 (lambda (_%hd7037870408%_
                                                          _%mixin-rawsetf7038470411%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7037870408%_)
                                                       (let ((_%e7038170414%_
                                                              (gx#syntax-e
                                                               _%hd7037870408%_)))
                                                         (let ((_%lp-hd7038270418%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7038170414%_)))
                       (_%lp-tl7038370421%_
                        (let () (declare (not safe)) (##cdr _%e7038170414%_))))
                   (_%loop7038070404%_
                    _%lp-tl7038370421%_
                    (cons _%lp-hd7038270418%_ _%mixin-rawsetf7038470411%_))))
               (let ((_%mixin-rawsetf7038570424%_
                      (reverse _%mixin-rawsetf7038470411%_)))
                 ((lambda (_%L70428%_)
                    (let* ((_%g7044570462%_
                            (lambda (_%g7044670458%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7044670458%_)))
                           (_%g7044473693%_
                            (lambda (_%g7044670466%_)
                              (if (gx#stx-pair/null? _%g7044670466%_)
                                  (let ((_g82817_
                                         (gx#syntax-split-splice
                                          _%g7044670466%_
                                          '0)))
                                    (begin
                                      (let ((_g82818_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82817_)
                                                   (##vector-length _g82817_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82818_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82818_)))
                                      (let ((_%target7044870469%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82817_ 0)))
                                            (_%tl7045070472%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82817_ 1))))
                                        (if (gx#stx-null? _%tl7045070472%_)
                                            (letrec ((_%loop7045170475%_
                                                      (lambda (_%hd7044970479%_
                                                               _%ugetf7045570482%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7044970479%_)
                                                            (let ((_%e7045270485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7044970479%_)))
                      (let ((_%lp-hd7045370489%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7045270485%_)))
                            (_%lp-tl7045470492%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7045270485%_))))
                        (_%loop7045170475%_
                         _%lp-tl7045470492%_
                         (cons _%lp-hd7045370489%_ _%ugetf7045570482%_))))
                    (let ((_%ugetf7045670495%_ (reverse _%ugetf7045570482%_)))
                      ((lambda (_%L70499%_)
                         (let* ((_%g7051670533%_
                                 (lambda (_%g7051770529%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7051770529%_)))
                                (_%g7051573676%_
                                 (lambda (_%g7051770537%_)
                                   (if (gx#stx-pair/null? _%g7051770537%_)
                                       (let ((_g82819_
                                              (gx#syntax-split-splice
                                               _%g7051770537%_
                                               '0)))
                                         (begin
                                           (let ((_g82820_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82819_)
                                                        (##vector-length
                                                         _g82819_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82820_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82820_)))
                                           (let ((_%target7051970540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82819_ 0)))
                                                 (_%tl7052170543%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82819_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7052170543%_)
                                                 (letrec ((_%loop7052270546%_
                                                           (lambda (_%hd7052070550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%usetf7052670553%_)
                     (if (gx#stx-pair? _%hd7052070550%_)
                         (let ((_%e7052370556%_
                                (gx#syntax-e _%hd7052070550%_)))
                           (let ((_%lp-hd7052470560%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7052370556%_)))
                                 (_%lp-tl7052570563%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7052370556%_))))
                             (_%loop7052270546%_
                              _%lp-tl7052570563%_
                              (cons _%lp-hd7052470560%_ _%usetf7052670553%_))))
                         (let ((_%usetf7052770566%_
                                (reverse _%usetf7052670553%_)))
                           ((lambda (_%L70570%_)
                              (let* ((_%g7058770604%_
                                      (lambda (_%g7058870600%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7058870600%_)))
                                     (_%g7058673659%_
                                      (lambda (_%g7058870608%_)
                                        (if (gx#stx-pair/null? _%g7058870608%_)
                                            (let ((_g82821_
                                                   (gx#syntax-split-splice
                                                    _%g7058870608%_
                                                    '0)))
                                              (begin
                                                (let ((_g82822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g82821_)
                                                             (##vector-length
                                                              _g82821_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g82822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g82822_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7059070611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82821_
                                                          0)))
                                                      (_%tl7059270614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g82821_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7059270614%_)
                                                      (letrec ((_%loop7059370617%_
                                                                (lambda (_%hd7059170621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%mixin-ugetf7059770624%_)
                          (if (gx#stx-pair? _%hd7059170621%_)
                              (let ((_%e7059470627%_
                                     (gx#syntax-e _%hd7059170621%_)))
                                (let ((_%lp-hd7059570631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7059470627%_)))
                                      (_%lp-tl7059670634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7059470627%_))))
                                  (_%loop7059370617%_
                                   _%lp-tl7059670634%_
                                   (cons _%lp-hd7059570631%_
                                         _%mixin-ugetf7059770624%_))))
                              (let ((_%mixin-ugetf7059870637%_
                                     (reverse _%mixin-ugetf7059770624%_)))
                                ((lambda (_%L70641%_)
                                   (let* ((_%g7065870675%_
                                           (lambda (_%g7065970671%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7065970671%_)))
                                          (_%g7065773642%_
                                           (lambda (_%g7065970679%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7065970679%_)
                                                 (let ((_g82823_
                                                        (gx#syntax-split-splice
                                                         _%g7065970679%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g82824_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g82823_)
                          (##vector-length _g82823_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g82824_ 2)))
                   (error "Context expects 2 values" _g82824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7066170682%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82823_
                                                               0)))
                                                           (_%tl7066370685%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g82823_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7066370685%_)
                                                           (letrec ((_%loop7066470688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7066270692%_
                                      _%mixin-usetf7066870695%_)
                               (if (gx#stx-pair? _%hd7066270692%_)
                                   (let ((_%e7066570698%_
                                          (gx#syntax-e _%hd7066270692%_)))
                                     (let ((_%lp-hd7066670702%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7066570698%_)))
                                           (_%lp-tl7066770705%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7066570698%_))))
                                       (_%loop7066470688%_
                                        _%lp-tl7066770705%_
                                        (cons _%lp-hd7066670702%_
                                              _%mixin-usetf7066870695%_))))
                                   (let ((_%mixin-usetf7066970708%_
                                          (reverse _%mixin-usetf7066870695%_)))
                                     ((lambda (_%L70712%_)
                                        (let* ((_%type-slots70874%_
                                                (if (gx#stx-null?
                                                     _%slots69638%_)
                                                    '()
                                                    (cons 'slots:
                                                          (cons (map (lambda (_%slot70733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70735%_
                                      _%setf70736%_
                                      _%rawsetf70737%_)
                               (let* ((_%g7073970762%_
                                       (lambda (_%g7074070758%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7074070758%_)))
                                      (_%g7073870838%_
                                       (lambda (_%g7074070766%_)
                                         (if (gx#stx-pair? _%g7074070766%_)
                                             (let ((_%e7074570769%_
                                                    (gx#syntax-e
                                                     _%g7074070766%_)))
                                               (let ((_%hd7074670773%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7074570769%_)))
                                                     (_%tl7074770776%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7074570769%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7074770776%_)
                                                     (let ((_%e7074870779%_
                                                            (gx#syntax-e
                                                             _%tl7074770776%_)))
                                                       (let ((_%hd7074970783%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7074870779%_)))
                     (_%tl7075070786%_
                      (let () (declare (not safe)) (##cdr _%e7074870779%_))))
                 (if (gx#stx-pair? _%tl7075070786%_)
                     (let ((_%e7075170789%_ (gx#syntax-e _%tl7075070786%_)))
                       (let ((_%hd7075270793%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7075170789%_)))
                             (_%tl7075370796%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7075170789%_))))
                         (if (gx#stx-pair? _%tl7075370796%_)
                             (let ((_%e7075470799%_
                                    (gx#syntax-e _%tl7075370796%_)))
                               (let ((_%hd7075570803%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7075470799%_)))
                                     (_%tl7075670806%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7075470799%_))))
                                 (if (gx#stx-null? _%tl7075670806%_)
                                     ((lambda (_%L70809%_
                                               _%L70811%_
                                               _%L70812%_
                                               _%L70813%_)
                                        (if (hash-get
                                             _%slot-contract-table69627%_
                                             (gx#stx-e _%L70813%_))
                                            (cons _%L70813%_
                                                  (cons _%L70812%_
                                                        (cons _%L70809%_ '())))
                                            (cons _%L70813%_
                                                  (cons _%L70812%_
                                                        (cons _%L70811%_
                                                              '())))))
                                      _%hd7075570803%_
                                      _%hd7075270793%_
                                      _%hd7074970783%_
                                      _%hd7074670773%_)
                                     (_%g7073970762%_ _%g7074070766%_))))
                             (_%g7073970762%_ _%g7074070766%_))))
                     (_%g7073970762%_ _%g7074070766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7073970762%_
                                                      _%g7074070766%_))))
                                             (_%g7073970762%_
                                              _%g7074070766%_)))))
                                 (_%g7073870838%_
                                  (list _%slot70733%_
                                        _%getf70735%_
                                        _%setf70736%_
                                        _%rawsetf70737%_))))
                             (foldr (lambda (_%g7084170844%_ _%g7084270847%_)
                                      (cons _%g7084170844%_ _%g7084270847%_))
                                    '()
                                    _%L69860%_)
                             (foldr (lambda (_%g7084970852%_ _%g7085070855%_)
                                      (cons _%g7084970852%_ _%g7085070855%_))
                                    '()
                                    _%L70002%_)
                             (foldr (lambda (_%g7085770860%_ _%g7085870863%_)
                                      (cons _%g7085770860%_ _%g7085870863%_))
                                    '()
                                    _%L70073%_)
                             (foldr (lambda (_%g7086570868%_ _%g7086670871%_)
                                      (cons _%g7086570868%_ _%g7086670871%_))
                                    '()
                                    _%L70144%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-mixin-slots71021%_
                                                (if (gx#stx-null?
                                                     _%mixin-slots69644%_)
                                                    '()
                                                    (cons 'mixin:
                                                          (cons (map (lambda (_%slot70881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70883%_
                                      _%setf70884%_
                                      _%rawsetf70885%_)
                               (let* ((_%g7088770910%_
                                       (lambda (_%g7088870906%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7088870906%_)))
                                      (_%g7088670985%_
                                       (lambda (_%g7088870914%_)
                                         (if (gx#stx-pair? _%g7088870914%_)
                                             (let ((_%e7089370917%_
                                                    (gx#syntax-e
                                                     _%g7088870914%_)))
                                               (let ((_%hd7089470921%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7089370917%_)))
                                                     (_%tl7089570924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7089370917%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7089570924%_)
                                                     (let ((_%e7089670927%_
                                                            (gx#syntax-e
                                                             _%tl7089570924%_)))
                                                       (let ((_%hd7089770931%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7089670927%_)))
                     (_%tl7089870934%_
                      (let () (declare (not safe)) (##cdr _%e7089670927%_))))
                 (if (gx#stx-pair? _%tl7089870934%_)
                     (let ((_%e7089970937%_ (gx#syntax-e _%tl7089870934%_)))
                       (let ((_%hd7090070941%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7089970937%_)))
                             (_%tl7090170944%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7089970937%_))))
                         (if (gx#stx-pair? _%tl7090170944%_)
                             (let ((_%e7090270947%_
                                    (gx#syntax-e _%tl7090170944%_)))
                               (let ((_%hd7090370951%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7090270947%_)))
                                     (_%tl7090470954%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7090270947%_))))
                                 (if (gx#stx-null? _%tl7090470954%_)
                                     ((lambda (_%L70957%_
                                               _%L70959%_
                                               _%L70960%_
                                               _%L70961%_)
                                        (if (hash-get
                                             _%slot-contract-table69627%_
                                             (gx#stx-e _%L70961%_))
                                            (cons _%L70961%_
                                                  (cons _%L70960%_
                                                        (cons _%L70957%_ '())))
                                            (cons _%L70961%_
                                                  (cons _%L70960%_
                                                        (cons _%L70959%_
                                                              '())))))
                                      _%hd7090370951%_
                                      _%hd7090070941%_
                                      _%hd7089770931%_
                                      _%hd7089470921%_)
                                     (_%g7088770910%_ _%g7088870914%_))))
                             (_%g7088770910%_ _%g7088870914%_))))
                     (_%g7088770910%_ _%g7088870914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7088770910%_
                                                      _%g7088870914%_))))
                                             (_%g7088770910%_
                                              _%g7088870914%_)))))
                                 (_%g7088670985%_
                                  (list _%slot70881%_
                                        _%getf70883%_
                                        _%setf70884%_
                                        _%rawsetf70885%_))))
                             (foldr (lambda (_%g7098870991%_ _%g7098970994%_)
                                      (cons _%g7098870991%_ _%g7098970994%_))
                                    '()
                                    _%L70215%_)
                             (foldr (lambda (_%g7099670999%_ _%g7099771002%_)
                                      (cons _%g7099670999%_ _%g7099771002%_))
                                    '()
                                    _%L70286%_)
                             (foldr (lambda (_%g7100471007%_ _%g7100571010%_)
                                      (cons _%g7100471007%_ _%g7100571010%_))
                                    '()
                                    _%L70357%_)
                             (foldr (lambda (_%g7101271015%_ _%g7101371018%_)
                                      (cons _%g7101271015%_ _%g7101371018%_))
                                    '()
                                    _%L70428%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-name71028%_
                                                (cons 'name:
                                                      (cons (let ((_%$e71024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'name: _%body69618%_)))
                      (if _%$e71024%_ _%$e71024%_ _%id69614%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-id71035%_
                                                (cons 'id:
                                                      (cons (let ((_%$e71031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'id: _%body69618%_)))
                      (if _%$e71031%_
                          _%$e71031%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                             _%L69671%_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-constructor71050%_
                                                (let ((_%$e71046%_
                                                       (let ((_%e7103771039%_
                                                              (gx#stx-getq
                                                               'constructor:
                                                               _%body69618%_)))
                                                         (if _%e7103771039%_
                                                             (let ((_%e71043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e7103771039%_))
                       (cons 'constructor: (cons _%e71043%_ '())))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e71046%_
                                                      _%$e71046%_
                                                      '())))
                                               (_%properties71104%_
                                                (let* ((_%properties71053%_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'transparent:
                                                              _%body69618%_))
                                                            (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          '())
                    '()))
               (_%properties71076%_
                (let ((_%$e71056%_
                       (gx#stx-e (gx#stx-getq 'print: _%body69618%_))))
                  (if _%$e71056%_
                      ((lambda (_%print71060%_)
                         (let ((_%print71071%_
                                (if (eq? _%print71060%_ '#t)
                                    (foldr (lambda (_%g7106271065%_
                                                    _%g7106371068%_)
                                             (cons _%g7106271065%_
                                                   _%g7106371068%_))
                                           '()
                                           _%L69860%_)
                                    _%print71060%_)))
                           (cons (cons 'print: _%print71071%_)
                                 _%properties71053%_)))
                       _%$e71056%_)
                      _%properties71053%_)))
               (_%properties71099%_
                (let ((_%$e71079%_
                       (gx#stx-e (gx#stx-getq 'equal: _%body69618%_))))
                  (if _%$e71079%_
                      ((lambda (_%equal71083%_)
                         (let ((_%equal71094%_
                                (if (eq? _%equal71083%_ '#t)
                                    (foldr (lambda (_%g7108571088%_
                                                    _%g7108671091%_)
                                             (cons _%g7108571088%_
                                                   _%g7108671091%_))
                                           '()
                                           _%L69860%_)
                                    _%equal71083%_)))
                           (cons (cons 'equal: _%equal71094%_)
                                 _%properties71076%_)))
                       _%$e71079%_)
                      _%properties71076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%properties71099%_))
                                               (_%type-properties71142%_
                                                (if (null? _%properties71104%_)
                                                    '()
                                                    (let* ((_%g7110771115%_
                                                            (lambda (_%g7110871111%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7110871111%_)))
                                                           (_%g7110671138%_
                                                            (lambda (_%g7110871119%_)
                                                              ((lambda (_%L71122%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'properties:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L71122%_ '()))
                                     '())))
                       _%g7110871119%_))))
              (_%g7110671138%_ _%properties71104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%metaclass71154%_
                                                (let ((_%$e71145%_
                                                       (gx#stx-getq
                                                        'metaclass:
                                                        _%body69618%_)))
                                                  (if _%$e71145%_
                                                      ((lambda (_%metaclass71149%_)
                                                         (if (gx#identifier?
                                                              _%metaclass71149%_)
                                                             _%metaclass71149%_
                                                             '#f))
                                                       _%$e71145%_)
                                                      '#f)))
                                               (_%final?71157%_
                                                (gx#stx-e
                                                 (gx#stx-getq
                                                  'final:
                                                  _%body69618%_)))
                                               (_%type-struct71160%_
                                                (cons 'struct:
                                                      (cons _%struct?69653%_
                                                            '())))
                                               (_%type-final71163%_
                                                (cons 'final:
                                                      (cons _%final?71157%_
                                                            '())))
                                               (_%type-metaclass71166%_
                                                (if _%metaclass71154%_
                                                    (cons 'metaclass:
                                                          (cons _%metaclass71154%_
                                                                '()))
                                                    '()))
                                               (_%g7116971186%_
                                                (lambda (_%g7117071182%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7117071182%_)))
                                               (_%g7116873638%_
                                                (lambda (_%g7117071190%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7117071190%_)
                                                      (let ((_g82825_
                                                             (gx#syntax-split-splice
                                                              _%g7117071190%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g82826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g82825_)
                               (##vector-length _g82825_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g82826_ 2)))
                        (error "Context expects 2 values" _g82826_)))
                  (let ((_%target7117271193%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82825_ 0)))
                        (_%tl7117471196%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g82825_ 1))))
                    (if (gx#stx-null? _%tl7117471196%_)
                        (letrec ((_%loop7117571199%_
                                  (lambda (_%hd7117371203%_
                                           _%type-body7117971206%_)
                                    (if (gx#stx-pair? _%hd7117371203%_)
                                        (let ((_%e7117671209%_
                                               (gx#syntax-e _%hd7117371203%_)))
                                          (let ((_%lp-hd7117771213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7117671209%_)))
                                                (_%lp-tl7117871216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7117671209%_))))
                                            (_%loop7117571199%_
                                             _%lp-tl7117871216%_
                                             (cons _%lp-hd7117771213%_
                                                   _%type-body7117971206%_))))
                                        (let ((_%type-body7118071219%_
                                               (reverse _%type-body7117971206%_)))
                                          ((lambda (_%L71223%_)
                                             (let* ((_%g7124471252%_
                                                     (lambda (_%g7124571248%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7124571248%_)))
                                                    (_%g7124373626%_
                                                     (lambda (_%g7124571256%_)
                                                       ((lambda (_%L71259%_)
                                                          (let* ((_%g7127271280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g7127371276%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g7127371276%_)))
                         (_%g7127173614%_
                          (lambda (_%g7127371284%_)
                            ((lambda (_%L71287%_)
                               (let* ((_%g7130071308%_
                                       (lambda (_%g7130171304%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7130171304%_)))
                                      (_%g7129973543%_
                                       (lambda (_%g7130171312%_)
                                         ((lambda (_%L71315%_)
                                            (let* ((_%g7132871336%_
                                                    (lambda (_%g7132971332%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g7132971332%_)))
                                                   (_%g7132773508%_
                                                    (lambda (_%g7132971340%_)
                                                      ((lambda (_%L71343%_)
                                                         (let* ((_%g7135671364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g7135771360%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g7135771360%_)))
                        (_%g7135573422%_
                         (lambda (_%g7135771368%_)
                           ((lambda (_%L71371%_)
                              (let* ((_%g7138471392%_
                                      (lambda (_%g7138571388%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7138571388%_)))
                                     (_%g7138373410%_
                                      (lambda (_%g7138571396%_)
                                        ((lambda (_%L71399%_)
                                           (let* ((_%g7141271420%_
                                                   (lambda (_%g7141371416%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7141371416%_)))
                                                  (_%g7141173398%_
                                                   (lambda (_%g7141371424%_)
                                                     ((lambda (_%L71427%_)
                                                        (let* ((_%g7144071448%_
                                                                (lambda (_%g7144171444%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7144171444%_)))
                       (_%g7143973284%_
                        (lambda (_%g7144171452%_)
                          ((lambda (_%L71455%_)
                             (let* ((_%g7146871476%_
                                     (lambda (_%g7146971472%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7146971472%_)))
                                    (_%g7146773173%_
                                     (lambda (_%g7146971480%_)
                                       ((lambda (_%L71483%_)
                                          (let* ((_%g7149671504%_
                                                  (lambda (_%g7149771500%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7149771500%_)))
                                                 (_%g7149573062%_
                                                  (lambda (_%g7149771508%_)
                                                    ((lambda (_%L71511%_)
                                                       (let* ((_%g7152471532%_
                                                               (lambda (_%g7152571528%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7152571528%_)))
                      (_%g7152373058%_
                       (lambda (_%g7152571536%_)
                         ((lambda (_%L71539%_)
                            (let* ((_%g7155271560%_
                                    (lambda (_%g7155371556%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7155371556%_)))
                                   (_%g7155173054%_
                                    (lambda (_%g7155371564%_)
                                      ((lambda (_%L71567%_)
                                         (let* ((_%g7158071588%_
                                                 (lambda (_%g7158171584%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g7158171584%_)))
                                                (_%g7157973019%_
                                                 (lambda (_%g7158171592%_)
                                                   ((lambda (_%L71595%_)
                                                      (let* ((_%g7160871616%_
                                                              (lambda (_%g7160971612%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g7160971612%_)))
                     (_%g7160772948%_
                      (lambda (_%g7160971620%_)
                        ((lambda (_%L71623%_)
                           (let* ((_%g7163671644%_
                                   (lambda (_%g7163771640%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g7163771640%_)))
                                  (_%g7163572944%_
                                   (lambda (_%g7163771648%_)
                                     ((lambda (_%L71651%_)
                                        (let* ((_%g7166471672%_
                                                (lambda (_%g7166571668%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7166571668%_)))
                                               (_%g7166372940%_
                                                (lambda (_%g7166571676%_)
                                                  ((lambda (_%L71679%_)
                                                     (let* ((_%g7169271700%_
                                                             (lambda (_%g7169371696%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g7169371696%_)))
                                                            (_%g7169172936%_
                                                             (lambda (_%g7169371704%_)
                                                               ((lambda (_%L71707%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g7172071728%_
                                  (lambda (_%g7172171724%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g7172171724%_)))
                                 (_%g7171972910%_
                                  (lambda (_%g7172171732%_)
                                    ((lambda (_%L71735%_)
                                       (let* ((_%g7174871756%_
                                               (lambda (_%g7174971752%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g7174971752%_)))
                                              (_%g7174772884%_
                                               (lambda (_%g7174971760%_)
                                                 ((lambda (_%L71763%_)
                                                    (let* ((_%g7177671784%_
                                                            (lambda (_%g7177771780%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7177771780%_)))
                                                           (_%g7177572858%_
                                                            (lambda (_%g7177771788%_)
                                                              ((lambda (_%L71791%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%map-slot-usetf71809%_
                                 (lambda (_%slot71804%_
                                          _%setf71806%_
                                          _%rawsetf71807%_)
                                   (cons 'cons
                                         (cons (cons 'quote
                                                     (cons _%slot71804%_ '()))
                                               (cons (if (hash-get
                                                          _%slot-contract-table69627%_
                                                          (gx#stx-e
                                                           _%slot71804%_))
                                                         (cons 'quote-syntax
                                                               (cons (gx#stx-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rawsetf71807%_
                              '"&"
                              _%rawsetf71807%_)
                             '()))
                 (cons 'quote-syntax (cons _%setf71806%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                                (_%g7181271820%_
                                 (lambda (_%g7181371816%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7181371816%_)))
                                (_%g7181172640%_
                                 (lambda (_%g7181371824%_)
                                   ((lambda (_%L71827%_)
                                      (let* ((_%g7184171849%_
                                              (lambda (_%g7184271845%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g7184271845%_)))
                                             (_%g7184072636%_
                                              (lambda (_%g7184271853%_)
                                                ((lambda (_%L71856%_)
                                                   (let* ((_%g7186971877%_
                                                           (lambda (_%g7187071873%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g7187071873%_)))
                                                          (_%g7186872122%_
                                                           (lambda (_%g7187071881%_)
                                                             ((lambda (_%L71884%_)
                                                                (let* ((_%g7189771914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g7189871910%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g7189871910%_)))
                               (_%g7189671978%_
                                (lambda (_%g7189871918%_)
                                  (if (gx#stx-pair/null? _%g7189871918%_)
                                      (let ((_g82827_
                                             (gx#syntax-split-splice
                                              _%g7189871918%_
                                              '0)))
                                        (begin
                                          (let ((_g82828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g82827_)
                                                       (##vector-length
                                                        _g82827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g82828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g82828_)))
                                          (let ((_%target7190071921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82827_ 0)))
                                                (_%tl7190271924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g82827_ 1))))
                                            (if (gx#stx-null? _%tl7190271924%_)
                                                (letrec ((_%loop7190371927%_
                                                          (lambda (_%hd7190171931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%defsetf7190771934%_)
                    (if (gx#stx-pair? _%hd7190171931%_)
                        (let ((_%e7190471937%_ (gx#syntax-e _%hd7190171931%_)))
                          (let ((_%lp-hd7190571941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7190471937%_)))
                                (_%lp-tl7190671944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7190471937%_))))
                            (_%loop7190371927%_
                             _%lp-tl7190671944%_
                             (cons _%lp-hd7190571941%_
                                   _%defsetf7190771934%_))))
                        (let ((_%defsetf7190871947%_
                               (reverse _%defsetf7190771934%_)))
                          ((lambda (_%L71951%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _%L71287%_
                                         (cons _%L71856%_
                                               (cons _%L71884%_
                                                     (foldr (lambda (_%g7196971972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g7197071975%_)
                      (cons _%g7196971972%_ _%g7197071975%_))
                    '()
                    _%L71951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _%defsetf7190871947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7190371927%_
                                                   _%target7190071921%_
                                                   '()))
                                                (_%g7189771914%_
                                                 _%g7189871918%_)))))
                                      (_%g7189771914%_ _%g7189871918%_)))))
                          (_%g7189671978%_
                           (let ((__tmp82829
                                  (map (lambda (_%slot71982%_
                                                _%setf71984%_
                                                _%rawsetf71985%_)
                                         (let ((_%contract7198671988%_
                                                (hash-get
                                                 _%slot-contract-table69627%_
                                                 (gx#stx-e _%slot71982%_))))
                                           (if _%contract7198671988%_
                                               (let* ((_%contract71992%_
                                                       _%contract7198671988%_)
                                                      (_%g7199572018%_
                                                       (lambda (_%g7199672014%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7199672014%_)))
                                                      (_%g7199472094%_
                                                       (lambda (_%g7199672022%_)
                                                         (if (gx#stx-pair?
                                                              _%g7199672022%_)
                                                             (let ((_%e7200172025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g7199672022%_)))
                       (let ((_%hd7200272029%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7200172025%_)))
                             (_%tl7200372032%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7200172025%_))))
                         (if (gx#stx-pair? _%tl7200372032%_)
                             (let ((_%e7200472035%_
                                    (gx#syntax-e _%tl7200372032%_)))
                               (let ((_%hd7200572039%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7200472035%_)))
                                     (_%tl7200672042%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7200472035%_))))
                                 (if (gx#stx-pair? _%tl7200672042%_)
                                     (let ((_%e7200772045%_
                                            (gx#syntax-e _%tl7200672042%_)))
                                       (let ((_%hd7200872049%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7200772045%_)))
                                             (_%tl7200972052%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7200772045%_))))
                                         (if (gx#stx-pair? _%tl7200972052%_)
                                             (let ((_%e7201072055%_
                                                    (gx#syntax-e
                                                     _%tl7200972052%_)))
                                               (let ((_%hd7201172059%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7201072055%_)))
                                                     (_%tl7201272062%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7201072055%_))))
                                                 (if (gx#stx-null?
                                                      _%tl7201272062%_)
                                                     ((lambda (_%L72065%_
                                                               _%L72067%_
                                                               _%L72068%_
                                                               _%L72069%_)
                                                        (_%wrap69479%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def/c)
                                                               (cons (cons _%L72067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons (gx#datum->syntax '#f ':)
                                                     (cons _%L69671%_ '())))
                                         (cons _%L72069%_ '())))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons (gx#datum->syntax '#f ':void)
                                         (cons (cons _%L72065%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%L72068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
              _%hd7201172059%_
              _%hd7200872049%_
              _%hd7200572039%_
              _%hd7200272029%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7199572018%_
                                                      _%g7199672022%_))))
                                             (_%g7199572018%_
                                              _%g7199672022%_))))
                                     (_%g7199572018%_ _%g7199672022%_))))
                             (_%g7199572018%_ _%g7199672022%_))))
                     (_%g7199572018%_ _%g7199672022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7199472094%_
                                                  (list (cons _%slot71982%_
                                                              _%contract71992%_)
                                                        _%slot71982%_
                                                        _%setf71984%_
                                                        (gx#stx-identifier
                                                         _%rawsetf71985%_
                                                         '"&"
                                                         _%rawsetf71985%_))))
                                               '#f)))
                                       (foldr (lambda (_%g7209772100%_
                                                       _%g7209872103%_)
                                                (cons _%g7209772100%_
                                                      _%g7209872103%_))
                                              '()
                                              _%L69860%_)
                                       (foldr (lambda (_%g7210572108%_
                                                       _%g7210672111%_)
                                                (cons _%g7210572108%_
                                                      _%g7210672111%_))
                                              '()
                                              _%L70073%_)
                                       (foldr (lambda (_%g7211372116%_
                                                       _%g7211472119%_)
                                                (cons _%g7211372116%_
                                                      _%g7211472119%_))
                                              '()
                                              _%L70144%_))))
                             (declare (not safe))
                             (##filter identity __tmp82829)))))
                      _%g7187071881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7186872122%_
                                                      (if (or (not (null? _%type-constructor71050%_))
                                                              (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%slot-contract-table69627%_))
                           (zero? (hash-length _%slot-default-table69630%_)))
                      _%metaclass71154%_)
                  (cons (gx#datum->syntax '#f 'begin) '())
                  (if (and _%struct?69653%_
                           (zero? (hash-length _%slot-default-table69630%_)))
                      (let* ((_%g7213872153%_
                              (lambda (_%g7213972149%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7213972149%_)))
                             (_%g7213772207%_
                              (lambda (_%g7213972157%_)
                                (if (gx#stx-pair? _%g7213972157%_)
                                    (let ((_%e7214272160%_
                                           (gx#syntax-e _%g7213972157%_)))
                                      (let ((_%hd7214372164%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7214272160%_)))
                                            (_%tl7214472167%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7214272160%_))))
                                        (if (gx#stx-pair? _%tl7214472167%_)
                                            (let ((_%e7214572170%_
                                                   (gx#syntax-e
                                                    _%tl7214472167%_)))
                                              (let ((_%hd7214672174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7214572170%_)))
                                                    (_%tl7214772177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7214572170%_))))
                                                (if (gx#stx-null?
                                                     _%tl7214772177%_)
                                                    ((lambda (_%L72180%_
                                                              _%L72182%_)
                                                       (_%wrap69479%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72182%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69671%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72180%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72180%_
                                    (foldr (lambda (_%g7219872201%_
                                                    _%g7219972204%_)
                                             (cons _%g7219872201%_
                                                   _%g7219972204%_))
                                           '()
                                           _%L69931%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7214672174%_
                                                     _%hd7214372164%_)
                                                    (_%g7213872153%_
                                                     _%g7213972157%_))))
                                            (_%g7213872153%_
                                             _%g7213972157%_))))
                                    (_%g7213872153%_ _%g7213972157%_)))))
                        (_%g7213772207%_
                         (list (foldr (lambda (_%slot72211%_ _%r72213%_)
                                        (let ((_%$e72215%_
                                               (hash-get
                                                _%slot-contract-table69627%_
                                                (gx#stx-e _%slot72211%_))))
                                          (if _%$e72215%_
                                              ((lambda (_%contract72219%_)
                                                 (let* ((_%g7222272246%_
                                                         (lambda (_%g7222372242%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7222372242%_)))
                                                        (_%g7222172336%_
                                                         (lambda (_%g7222372250%_)
                                                           (if (gx#stx-pair?
                                                                _%g7222372250%_)
                                                               (let ((_%e7222672253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7222372250%_)))
                         (let ((_%hd7222772257%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7222672253%_)))
                               (_%tl7222872260%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7222672253%_))))
                           (if (gx#stx-pair? _%tl7222872260%_)
                               (let ((_%e7222972263%_
                                      (gx#syntax-e _%tl7222872260%_)))
                                 (let ((_%hd7223072267%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7222972263%_)))
                                       (_%tl7223172270%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7222972263%_))))
                                   (if (gx#stx-pair/null? _%hd7223072267%_)
                                       (let ((_g82830_
                                              (gx#syntax-split-splice
                                               _%hd7223072267%_
                                               '0)))
                                         (begin
                                           (let ((_g82831_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82830_)
                                                        (##vector-length
                                                         _g82830_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82831_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82831_)))
                                           (let ((_%target7223272273%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82830_ 0)))
                                                 (_%tl7223472276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82830_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7223472276%_)
                                                 (letrec ((_%loop7223572279%_
                                                           (lambda (_%hd7223372283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7223972286%_)
                     (if (gx#stx-pair? _%hd7223372283%_)
                         (let ((_%e7223672289%_
                                (gx#syntax-e _%hd7223372283%_)))
                           (let ((_%lp-hd7223772293%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7223672289%_)))
                                 (_%lp-tl7223872296%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7223672289%_))))
                             (_%loop7223572279%_
                              _%lp-tl7223872296%_
                              (cons _%lp-hd7223772293%_
                                    _%contract7223972286%_))))
                         (let ((_%contract7224072299%_
                                (reverse _%contract7223972286%_)))
                           (if (gx#stx-null? _%tl7223172270%_)
                               ((lambda (_%L72303%_ _%L72305%_)
                                  (cons (cons _%L72305%_
                                              (foldr (lambda (_%g7232772330%_
                                                              _%g7232872333%_)
                                                       (cons _%g7232772330%_
                                                             _%g7232872333%_))
                                                     '()
                                                     _%L72303%_))
                                        _%r72213%_))
                                _%contract7224072299%_
                                _%hd7222772257%_)
                               (_%g7222272246%_ _%g7222372250%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7223572279%_
                                                    _%target7223272273%_
                                                    '()))
                                                 (_%g7222272246%_
                                                  _%g7222372250%_)))))
                                       (_%g7222272246%_ _%g7222372250%_))))
                               (_%g7222272246%_ _%g7222372250%_))))
                       (_%g7222272246%_ _%g7222372250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7222172336%_
                                                    (list _%slot72211%_
                                                          _%contract72219%_))))
                                               _%$e72215%_)
                                              (cons _%slot72211%_
                                                    _%r72213%_))))
                                      '()
                                      (foldr (lambda (_%g7234172344%_
                                                      _%g7234272347%_)
                                               (cons _%g7234172344%_
                                                     _%g7234272347%_))
                                             '()
                                             _%L69931%_))
                               (gx#core-quote-syntax _%L69709%_))))
                      (let* ((_%g7235272367%_
                              (lambda (_%g7235372363%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7235372363%_)))
                             (_%g7235172420%_
                              (lambda (_%g7235372371%_)
                                (if (gx#stx-pair? _%g7235372371%_)
                                    (let ((_%e7235672374%_
                                           (gx#syntax-e _%g7235372371%_)))
                                      (let ((_%hd7235772378%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7235672374%_)))
                                            (_%tl7235872381%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7235672374%_))))
                                        (if (gx#stx-pair? _%tl7235872381%_)
                                            (let ((_%e7235972384%_
                                                   (gx#syntax-e
                                                    _%tl7235872381%_)))
                                              (let ((_%hd7236072388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7235972384%_)))
                                                    (_%tl7236172391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7235972384%_))))
                                                (if (gx#stx-null?
                                                     _%tl7236172391%_)
                                                    ((lambda (_%L72394%_
                                                              _%L72396%_)
                                                       (_%wrap69479%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72396%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69671%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72394%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72394%_
                                    (foldr (lambda (_%g7241172414%_
                                                    _%g7241272417%_)
                                             (cons _%g7241172414%_
                                                   _%g7241272417%_))
                                           '()
                                           _%L69931%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7236072388%_
                                                     _%hd7235772378%_)
                                                    (_%g7235272367%_
                                                     _%g7235372371%_))))
                                            (_%g7235272367%_
                                             _%g7235372371%_))))
                                    (_%g7235272367%_ _%g7235372371%_)))))
                        (_%g7235172420%_
                         (list (foldr (lambda (_%slot72424%_ _%r72426%_)
                                        (let* ((_%default72428%_
                                                (hash-get
                                                 _%slot-default-table69630%_
                                                 (gx#stx-e _%slot72424%_)))
                                               (_%$e72431%_
                                                (hash-get
                                                 _%slot-contract-table69627%_
                                                 (gx#stx-e _%slot72424%_))))
                                          (if _%$e72431%_
                                              ((lambda (_%contract72435%_)
                                                 (let* ((_%g7243872475%_
                                                         (lambda (_%g7243972471%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7243972471%_)))
                                                        (_%g7243772622%_
                                                         (lambda (_%g7243972479%_)
                                                           (if (gx#stx-pair?
                                                                _%g7243972479%_)
                                                               (let ((_%e7244372482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7243972479%_)))
                         (let ((_%hd7244472486%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7244372482%_)))
                               (_%tl7244572489%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7244372482%_))))
                           (if (gx#stx-pair? _%tl7244572489%_)
                               (let ((_%e7244672492%_
                                      (gx#syntax-e _%tl7244572489%_)))
                                 (let ((_%hd7244772496%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7244672492%_)))
                                       (_%tl7244872499%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7244672492%_))))
                                   (if (gx#stx-pair/null? _%hd7244772496%_)
                                       (let ((_g82832_
                                              (gx#syntax-split-splice
                                               _%hd7244772496%_
                                               '0)))
                                         (begin
                                           (let ((_g82833_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82832_)
                                                        (##vector-length
                                                         _g82832_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82833_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82833_)))
                                           (let ((_%target7244972502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82832_ 0)))
                                                 (_%tl7245172505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82832_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7245172505%_)
                                                 (letrec ((_%loop7245272508%_
                                                           (lambda (_%hd7245072512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7245672515%_)
                     (if (gx#stx-pair? _%hd7245072512%_)
                         (let ((_%e7245372518%_
                                (gx#syntax-e _%hd7245072512%_)))
                           (let ((_%lp-hd7245472522%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7245372518%_)))
                                 (_%lp-tl7245572525%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7245372518%_))))
                             (_%loop7245272508%_
                              _%lp-tl7245572525%_
                              (cons _%lp-hd7245472522%_
                                    _%contract7245672515%_))))
                         (let ((_%contract7245772528%_
                                (reverse _%contract7245672515%_)))
                           (if (gx#stx-pair? _%tl7244872499%_)
                               (let ((_%e7245872532%_
                                      (gx#syntax-e _%tl7244872499%_)))
                                 (let ((_%hd7245972536%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7245872532%_)))
                                       (_%tl7246072539%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7245872532%_))))
                                   (if (gx#stx-pair/null? _%hd7245972536%_)
                                       (let ((_g82834_
                                              (gx#syntax-split-splice
                                               _%hd7245972536%_
                                               '0)))
                                         (begin
                                           (let ((_g82835_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g82834_)
                                                        (##vector-length
                                                         _g82834_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g82835_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g82835_)))
                                           (let ((_%target7246172542%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g82834_ 0)))
                                                 (_%tl7246372545%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g82834_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7246372545%_)
                                                 (letrec ((_%loop7246472548%_
                                                           (lambda (_%hd7246272552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%default7246872555%_)
                     (if (gx#stx-pair? _%hd7246272552%_)
                         (let ((_%e7246572558%_
                                (gx#syntax-e _%hd7246272552%_)))
                           (let ((_%lp-hd7246672562%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7246572558%_)))
                                 (_%lp-tl7246772565%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7246572558%_))))
                             (_%loop7246472548%_
                              _%lp-tl7246772565%_
                              (cons _%lp-hd7246672562%_
                                    _%default7246872555%_))))
                         (let ((_%default7246972568%_
                                (reverse _%default7246872555%_)))
                           (if (gx#stx-null? _%tl7246072539%_)
                               ((lambda (_%L72572%_ _%L72574%_ _%L72575%_)
                                  (cons (symbol->keyword (gx#stx-e _%L72575%_))
                                        (cons (cons _%L72575%_
                                                    (foldr (lambda (_%g7260572610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7260672613%_)
                     (cons _%g7260572610%_ _%g7260672613%_))
                   (foldr (lambda (_%g7260772616%_ _%g7260872619%_)
                            (cons _%g7260772616%_ _%g7260872619%_))
                          '()
                          _%L72572%_)
                   _%L72574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r72426%_)))
                                _%default7246972568%_
                                _%contract7245772528%_
                                _%hd7244472486%_)
                               (_%g7243872475%_ _%g7243972479%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7246472548%_
                                                    _%target7246172542%_
                                                    '()))
                                                 (_%g7243872475%_
                                                  _%g7243972479%_)))))
                                       (_%g7243872475%_ _%g7243972479%_))))
                               (_%g7243872475%_ _%g7243972479%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7245272508%_
                                                    _%target7244972502%_
                                                    '()))
                                                 (_%g7243872475%_
                                                  _%g7243972479%_)))))
                                       (_%g7243872475%_ _%g7243972479%_))))
                               (_%g7243872475%_ _%g7243972479%_))))
                       (_%g7243872475%_ _%g7243972479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7243772622%_
                                                    (list _%slot72424%_
                                                          _%contract72435%_
                                                          (if _%default72428%_
                                                              (cons ':=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%default72428%_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$e72431%_)
                                              (cons (symbol->keyword
                                                     (gx#stx-e _%slot72424%_))
                                                    (cons (cons _%slot72424%_
                                                                (cons _%default72428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%r72426%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()
                                      (foldr (lambda (_%g7262772630%_
                                                      _%g7262872633%_)
                                               (cons _%g7262772630%_
                                                     _%g7262872633%_))
                                             '()
                                             _%L69931%_))
                               (gx#core-quote-syntax _%L69709%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g7184271853%_))))
                                        (_%g7184072636%_
                                         (_%wrap69479%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%L69671%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'make-class-type-info)
                          (cons 'id:
                                (cons _%L71315%_
                                      (cons 'name:
                                            (cons _%L71343%_
                                                  (cons 'slots:
                                                        (cons _%L71399%_
                                                              (cons 'ordered-slots:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71427%_
                                  (cons 'super:
                                        (cons _%L71371%_
                                              (cons 'struct?:
                                                    (cons _%L71539%_
                                                          (cons 'final?:
                                                                (cons _%L71567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'metaclass:
                                    (cons _%L71595%_
                                          (cons 'constructor-method:
                                                (cons _%L71623%_
                                                      (cons 'type-descriptor:
                                                            (cons _%L71651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'constructor:
                                (cons _%L71679%_
                                      (cons 'predicate:
                                            (cons _%L71707%_
                                                  (cons 'accessors:
                                                        (cons _%L71735%_
                                                              (cons 'mutators:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71791%_
                                  (cons 'unchecked-accessors:
                                        (cons _%L71763%_
                                              (cons 'unchecked-mutators:
                                                    (cons _%L71827%_
                                                          (cons 'slot-types:
                                                                (cons _%L71455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slot-contracts:
                                    (cons _%L71483%_
                                          (cons 'slot-defaults:
                                                (cons _%L71511%_
                                                      '())))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g7181371824%_))))
                           (_%g7181172640%_
                            (let* ((_%g7264472677%_
                                    (lambda (_%g7264572673%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7264572673%_)))
                                   (_%g7264372806%_
                                    (lambda (_%g7264572681%_)
                                      (if (gx#stx-pair? _%g7264572681%_)
                                          (let ((_%e7264872684%_
                                                 (gx#syntax-e
                                                  _%g7264572681%_)))
                                            (let ((_%hd7264972688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7264872684%_)))
                                                  (_%tl7265072691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7264872684%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7264972688%_)
                                                  (let ((_g82836_
                                                         (gx#syntax-split-splice
                                                          _%hd7264972688%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82836_)
                           (##vector-length _g82836_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82837_ 2)))
                    (error "Context expects 2 values" _g82837_)))
              (let ((_%target7265172694%_
                     (let () (declare (not safe)) (##vector-ref _g82836_ 0)))
                    (_%tl7265372697%_
                     (let () (declare (not safe)) (##vector-ref _g82836_ 1))))
                (if (gx#stx-null? _%tl7265372697%_)
                    (letrec ((_%loop7265472700%_
                              (lambda (_%hd7265272704%_
                                       _%slot-usetf7265872707%_)
                                (if (gx#stx-pair? _%hd7265272704%_)
                                    (let ((_%e7265572710%_
                                           (gx#syntax-e _%hd7265272704%_)))
                                      (let ((_%lp-hd7265672714%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7265572710%_)))
                                            (_%lp-tl7265772717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7265572710%_))))
                                        (_%loop7265472700%_
                                         _%lp-tl7265772717%_
                                         (cons _%lp-hd7265672714%_
                                               _%slot-usetf7265872707%_))))
                                    (let ((_%slot-usetf7265972720%_
                                           (reverse _%slot-usetf7265872707%_)))
                                      (if (gx#stx-pair? _%tl7265072691%_)
                                          (let ((_%e7266072724%_
                                                 (gx#syntax-e
                                                  _%tl7265072691%_)))
                                            (let ((_%hd7266172728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7266072724%_)))
                                                  (_%tl7266272731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7266072724%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7266172728%_)
                                                  (let ((_g82838_
                                                         (gx#syntax-split-splice
                                                          _%hd7266172728%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82839_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82838_)
                           (##vector-length _g82838_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82839_ 2)))
                    (error "Context expects 2 values" _g82839_)))
              (let ((_%target7266372734%_
                     (let () (declare (not safe)) (##vector-ref _g82838_ 0)))
                    (_%tl7266572737%_
                     (let () (declare (not safe)) (##vector-ref _g82838_ 1))))
                (if (gx#stx-null? _%tl7266572737%_)
                    (letrec ((_%loop7266672740%_
                              (lambda (_%hd7266472744%_
                                       _%mixin-slot-usetf7267072747%_)
                                (if (gx#stx-pair? _%hd7266472744%_)
                                    (let ((_%e7266772750%_
                                           (gx#syntax-e _%hd7266472744%_)))
                                      (let ((_%lp-hd7266872754%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7266772750%_)))
                                            (_%lp-tl7266972757%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7266772750%_))))
                                        (_%loop7266672740%_
                                         _%lp-tl7266972757%_
                                         (cons _%lp-hd7266872754%_
                                               _%mixin-slot-usetf7267072747%_))))
                                    (let ((_%mixin-slot-usetf7267172760%_
                                           (reverse _%mixin-slot-usetf7267072747%_)))
                                      (if (gx#stx-null? _%tl7266272731%_)
                                          ((lambda (_%L72764%_ _%L72766%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (foldr (lambda (_%g7278972794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g7279072797%_)
                    (cons _%g7278972794%_ _%g7279072797%_))
                  (foldr (lambda (_%g7279172800%_ _%g7279272803%_)
                           (cons _%g7279172800%_ _%g7279272803%_))
                         '()
                         _%L72764%_)
                  _%L72766%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-slot-usetf7267172760%_
                                           _%slot-usetf7265972720%_)
                                          (_%g7264472677%_
                                           _%g7264572681%_)))))))
                      (_%loop7266672740%_ _%target7266372734%_ '()))
                    (_%g7264472677%_ _%g7264572681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7264472677%_
                                                   _%g7264572681%_))))
                                          (_%g7264472677%_
                                           _%g7264572681%_)))))))
                      (_%loop7265472700%_ _%target7265172694%_ '()))
                    (_%g7264472677%_ _%g7264572681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7264472677%_
                                                   _%g7264572681%_))))
                                          (_%g7264472677%_ _%g7264572681%_)))))
                              (_%g7264372806%_
                               (list (map _%map-slot-usetf71809%_
                                          (foldr (lambda (_%g7280972812%_
                                                          _%g7281072815%_)
                                                   (cons _%g7280972812%_
                                                         _%g7281072815%_))
                                                 '()
                                                 _%L69860%_)
                                          (foldr (lambda (_%g7281772820%_
                                                          _%g7281872823%_)
                                                   (cons _%g7281772820%_
                                                         _%g7281872823%_))
                                                 '()
                                                 _%L70570%_)
                                          (foldr (lambda (_%g7282572828%_
                                                          _%g7282672831%_)
                                                   (cons _%g7282572828%_
                                                         _%g7282672831%_))
                                                 '()
                                                 _%L70144%_))
                                     (map _%map-slot-usetf71809%_
                                          (foldr (lambda (_%g7283372836%_
                                                          _%g7283472839%_)
                                                   (cons _%g7283372836%_
                                                         _%g7283472839%_))
                                                 '()
                                                 _%L70215%_)
                                          (foldr (lambda (_%g7284172844%_
                                                          _%g7284272847%_)
                                                   (cons _%g7284172844%_
                                                         _%g7284272847%_))
                                                 '()
                                                 _%L70712%_)
                                          (foldr (lambda (_%g7284972852%_
                                                          _%g7285072855%_)
                                                   (cons _%g7284972852%_
                                                         _%g7285072855%_))
                                                 '()
                                                 _%L70428%_))))))))
                       _%g7177771788%_))))
              (_%g7177572858%_
               (cons (gx#datum->syntax '#f '@list)
                     (begin
                       (gx#syntax-check-splice-targets _%L70073%_ _%L69860%_)
                       (foldr (lambda (_%g7286172868%_
                                       _%g7286272871%_
                                       _%g7286372873%_)
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g7286272871%_
                                                              '()))
                                                  (cons '::
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%g7286172868%_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g7286372873%_))
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L70357%_
                                 _%L70215%_)
                                (foldr (lambda (_%g7286472876%_
                                                _%g7286572879%_
                                                _%g7286672881%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7286572879%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7286472876%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7286672881%_))
                                       '()
                                       _%L70357%_
                                       _%L70215%_))
                              _%L70073%_
                              _%L69860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7174971760%_))))
                                         (_%g7174772884%_
                                          (cons (gx#datum->syntax '#f '@list)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L70499%_
                                                   _%L69860%_)
                                                  (foldr (lambda (_%g7288772894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g7288872897%_
                          _%g7288972899%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g7288872897%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%g7288772894%_
                                                             '()))
                                                 '()))))
                         _%g7288972899%_))
                 (begin
                   (gx#syntax-check-splice-targets _%L70641%_ _%L70215%_)
                   (foldr (lambda (_%g7289072902%_
                                   _%g7289172905%_
                                   _%g7289272907%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g7289172905%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g7289072902%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g7289272907%_))
                          '()
                          _%L70641%_
                          _%L70215%_))
                 _%L70499%_
                 _%L69860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g7172171732%_))))
                            (_%g7171972910%_
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L70002%_
                                      _%L69860%_)
                                     (foldr (lambda (_%g7291372920%_
                                                     _%g7291472923%_
                                                     _%g7291572925%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g7291472923%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g7291372920%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7291572925%_))
                                            (begin
                                              (gx#syntax-check-splice-targets
                                               _%L70286%_
                                               _%L70215%_)
                                              (foldr (lambda (_%g7291672928%_
                                                              _%g7291772931%_
                                                              _%g7291872933%_)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g7291772931%_ '()))
                                 (cons '::
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g7291672928%_ '()))
                                             '()))))
                     _%g7291872933%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%L70286%_
                                                     _%L70215%_))
                                            _%L70002%_
                                            _%L69860%_))))))
                        _%g7169371704%_))))
               (_%g7169172936%_
                (cons (gx#datum->syntax '#f 'quote-syntax)
                      (cons _%L69765%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g7166571676%_))))
                                          (_%g7166372940%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%L69737%_ '())))))
                                      _%g7163771648%_))))
                             (_%g7163572944%_
                              (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%L69709%_ '())))))
                         _%g7160971620%_))))
                (_%g7160772948%_
                 (if (null? _%type-constructor71050%_)
                     '#f
                     (let* ((_%g7295272967%_
                             (lambda (_%g7295372963%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g7295372963%_)))
                            (_%g7295173015%_
                             (lambda (_%g7295372971%_)
                               (if (gx#stx-pair? _%g7295372971%_)
                                   (let ((_%e7295572974%_
                                          (gx#syntax-e _%g7295372971%_)))
                                     (let ((_%hd7295672978%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7295572974%_)))
                                           (_%tl7295772981%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7295572974%_))))
                                       (if (gx#stx-datum? _%hd7295672978%_)
                                           (let ((_%e7295872984%_
                                                  (gx#stx-e _%hd7295672978%_)))
                                             (if (equal? _%e7295872984%_
                                                         'constructor:)
                                                 (if (gx#stx-pair?
                                                      _%tl7295772981%_)
                                                     (let ((_%e7295972988%_
                                                            (gx#syntax-e
                                                             _%tl7295772981%_)))
                                                       (let ((_%hd7296072992%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7295972988%_)))
                     (_%tl7296172995%_
                      (let () (declare (not safe)) (##cdr _%e7295972988%_))))
                 (if (gx#stx-null? _%tl7296172995%_)
                     ((lambda (_%L72998%_)
                        (cons (gx#datum->syntax '#f 'quote)
                              (cons _%L72998%_ '())))
                      _%hd7296072992%_)
                     (_%g7295272967%_ _%g7295372971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7295272967%_
                                                      _%g7295372971%_))
                                                 (_%g7295272967%_
                                                  _%g7295372971%_)))
                                           (_%g7295272967%_ _%g7295372971%_))))
                                   (_%g7295272967%_ _%g7295372971%_)))))
                       (_%g7295173015%_ _%type-constructor71050%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7158171592%_))))
                                           (_%g7157973019%_
                                            (if _%metaclass71154%_
                                                (let* ((_%g7302373031%_
                                                        (lambda (_%g7302473027%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g7302473027%_)))
                                                       (_%g7302273050%_
                                                        (lambda (_%g7302473035%_)
                                                          ((lambda (_%L73038%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%L73038%_ '())))
                   _%g7302473035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7302273050%_
                                                   _%metaclass71154%_))
                                                '#f))))
                                       _%g7155371564%_))))
                              (_%g7155173054%_ _%final?71157%_)))
                          _%g7152571536%_))))
                 (_%g7152373058%_ _%struct?69653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7149771508%_))))
                                            (_%g7149573062%_
                                             (let* ((_%g7306673089%_
                                                     (lambda (_%g7306773085%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7306773085%_)))
                                                    (_%g7306573169%_
                                                     (lambda (_%g7306773093%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7306773093%_)
                                                           (let ((_g82840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7306773093%_ '0)))
                     (begin
                       (let ((_g82841_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g82840_)
                                    (##vector-length _g82840_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g82841_ 2)))
                             (error "Context expects 2 values" _g82841_)))
                       (let ((_%target7307073096%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82840_ 0)))
                             (_%tl7307273099%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g82840_ 1))))
                         (if (gx#stx-null? _%tl7307273099%_)
                             (letrec ((_%loop7307373102%_
                                       (lambda (_%hd7307173106%_
                                                _%default7307773109%_
                                                _%slot7307873111%_)
                                         (if (gx#stx-pair? _%hd7307173106%_)
                                             (let ((_%e7307473114%_
                                                    (gx#syntax-e
                                                     _%hd7307173106%_)))
                                               (let ((_%lp-hd7307573118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7307473114%_)))
                                                     (_%lp-tl7307673121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7307473114%_))))
                                                 (if (gx#stx-pair?
                                                      _%lp-hd7307573118%_)
                                                     (let ((_%e7308173124%_
                                                            (gx#syntax-e
                                                             _%lp-hd7307573118%_)))
                                                       (let ((_%hd7308273128%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7308173124%_)))
                     (_%tl7308373131%_
                      (let () (declare (not safe)) (##cdr _%e7308173124%_))))
                 (_%loop7307373102%_
                  _%lp-tl7307673121%_
                  (cons _%tl7308373131%_ _%default7307773109%_)
                  (cons _%hd7308273128%_ _%slot7307873111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7306673089%_
                                                      _%g7306773093%_))))
                                             (let ((_%default7307973134%_
                                                    (reverse _%default7307773109%_))
                                                   (_%slot7308073137%_
                                                    (reverse _%slot7307873111%_)))
                                               ((lambda (_%L73140%_ _%L73142%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          (gx#syntax-check-splice-targets
                                                           _%L73140%_
                                                           _%L73142%_)
                                                          (foldr (lambda (_%g7315773161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7315873164%_
                                  _%g7315973166%_)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g7315873164%_ '()))
                                             (cons '::
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g7315773161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%g7315973166%_))
                         '()
                         _%L73140%_
                         _%L73142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%default7307973134%_
                                                _%slot7308073137%_))))))
                               (_%loop7307373102%_
                                _%target7307073096%_
                                '()
                                '()))
                             (_%g7306673089%_ _%g7306773093%_)))))
                   (_%g7306673089%_ _%g7306773093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7306573169%_
                                                (hash->list
                                                 _%slot-default-table69630%_))))))
                                        _%g7146971480%_))))
                               (_%g7146773173%_
                                (let* ((_%g7317773200%_
                                        (lambda (_%g7317873196%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g7317873196%_)))
                                       (_%g7317673280%_
                                        (lambda (_%g7317873204%_)
                                          (if (gx#stx-pair/null?
                                               _%g7317873204%_)
                                              (let ((_g82842_
                                                     (gx#syntax-split-splice
                                                      _%g7317873204%_
                                                      '0)))
                                                (begin
                                                  (let ((_g82843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g82842_)
                                                               (##vector-length
                                                                _g82842_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g82843_ 2)))
                (error "Context expects 2 values" _g82843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7318173207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g82842_
                                                            0)))
                                                        (_%tl7318373210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g82842_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7318373210%_)
                                                        (letrec ((_%loop7318473213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7318273217%_
                                   _%contract7318873220%_
                                   _%slot7318973222%_)
                            (if (gx#stx-pair? _%hd7318273217%_)
                                (let ((_%e7318573225%_
                                       (gx#syntax-e _%hd7318273217%_)))
                                  (let ((_%lp-hd7318673229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7318573225%_)))
                                        (_%lp-tl7318773232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7318573225%_))))
                                    (if (gx#stx-pair? _%lp-hd7318673229%_)
                                        (let ((_%e7319273235%_
                                               (gx#syntax-e
                                                _%lp-hd7318673229%_)))
                                          (let ((_%hd7319373239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7319273235%_)))
                                                (_%tl7319473242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7319273235%_))))
                                            (_%loop7318473213%_
                                             _%lp-tl7318773232%_
                                             (cons _%tl7319473242%_
                                                   _%contract7318873220%_)
                                             (cons _%hd7319373239%_
                                                   _%slot7318973222%_))))
                                        (_%g7317773200%_ _%g7317873204%_))))
                                (let ((_%contract7319073245%_
                                       (reverse _%contract7318873220%_))
                                      (_%slot7319173248%_
                                       (reverse _%slot7318973222%_)))
                                  ((lambda (_%L73251%_ _%L73253%_)
                                     (cons (gx#datum->syntax '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _%L73251%_
                                              _%L73253%_)
                                             (foldr (lambda (_%g7326873272%_
                                                             _%g7326973275%_
                                                             _%g7327073277%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@list)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g7326973275%_ '()))
                                (cons '::
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g7326873272%_ '()))
                                            '()))))
                    _%g7327073277%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _%L73251%_
                                                    _%L73253%_))))
                                   _%contract7319073245%_
                                   _%slot7319173248%_))))))
                  (_%loop7318473213%_ _%target7318173207%_ '() '()))
                (_%g7317773200%_ _%g7317873204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7317773200%_
                                               _%g7317873204%_)))))
                                  (_%g7317673280%_
                                   (hash->list
                                    _%slot-contract-table69627%_))))))
                           _%g7144171452%_))))
                  (_%g7143973284%_
                   (let* ((_%g7328873311%_
                           (lambda (_%g7328973307%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7328973307%_)))
                          (_%g7328773391%_
                           (lambda (_%g7328973315%_)
                             (if (gx#stx-pair/null? _%g7328973315%_)
                                 (let ((_g82844_
                                        (gx#syntax-split-splice
                                         _%g7328973315%_
                                         '0)))
                                   (begin
                                     (let ((_g82845_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g82844_)
                                                  (##vector-length _g82844_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g82845_ 2)))
                                           (error "Context expects 2 values"
                                                  _g82845_)))
                                     (let ((_%target7329273318%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82844_ 0)))
                                           (_%tl7329473321%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g82844_ 1))))
                                       (if (gx#stx-null? _%tl7329473321%_)
                                           (letrec ((_%loop7329573324%_
                                                     (lambda (_%hd7329373328%_
                                                              _%type7329973331%_
                                                              _%slot7330073333%_)
                                                       (if (gx#stx-pair?
                                                            _%hd7329373328%_)
                                                           (let ((_%e7329673336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd7329373328%_)))
                     (let ((_%lp-hd7329773340%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7329673336%_)))
                           (_%lp-tl7329873343%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7329673336%_))))
                       (if (gx#stx-pair? _%lp-hd7329773340%_)
                           (let ((_%e7330373346%_
                                  (gx#syntax-e _%lp-hd7329773340%_)))
                             (let ((_%hd7330473350%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7330373346%_)))
                                   (_%tl7330573353%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7330373346%_))))
                               (_%loop7329573324%_
                                _%lp-tl7329873343%_
                                (cons _%tl7330573353%_ _%type7329973331%_)
                                (cons _%hd7330473350%_ _%slot7330073333%_))))
                           (_%g7328873311%_ _%g7328973315%_))))
                   (let ((_%type7330173356%_ (reverse _%type7329973331%_))
                         (_%slot7330273359%_ (reverse _%slot7330073333%_)))
                     ((lambda (_%L73362%_ _%L73364%_)
                        (cons (gx#datum->syntax '#f '@list)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L73362%_
                                 _%L73364%_)
                                (foldr (lambda (_%g7337973383%_
                                                _%g7338073386%_
                                                _%g7338173388%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7338073386%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7337973383%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7338173388%_))
                                       '()
                                       _%L73362%_
                                       _%L73364%_))))
                      _%type7330173356%_
                      _%slot7330273359%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop7329573324%_
                                              _%target7329273318%_
                                              '()
                                              '()))
                                           (_%g7328873311%_
                                            _%g7328973315%_)))))
                                 (_%g7328873311%_ _%g7328973315%_)))))
                     (_%g7328773391%_
                      (filter (lambda (_%st73395%_) (cdr _%st73395%_))
                              (hash->list _%slot-type-table69625%_)))))))
              _%g7141371424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7141173398%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (foldr (lambda (_%g7340173404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7340273407%_)
                           (cons _%g7340173404%_ _%g7340273407%_))
                         '()
                         _%L69931%_)
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g7138571396%_))))
                                (_%g7138373410%_
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons (foldr (lambda (_%g7341373416%_
                                                             _%g7341473419%_)
                                                      (cons _%g7341373416%_
                                                            _%g7341473419%_))
                                                    '()
                                                    _%L69860%_)
                                             '())))))
                            _%g7135771368%_))))
                   (_%g7135573422%_
                    (let* ((_%g7342673443%_
                            (lambda (_%g7342773439%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7342773439%_)))
                           (_%g7342573504%_
                            (lambda (_%g7342773447%_)
                              (if (gx#stx-pair/null? _%g7342773447%_)
                                  (let ((_g82846_
                                         (gx#syntax-split-splice
                                          _%g7342773447%_
                                          '0)))
                                    (begin
                                      (let ((_g82847_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82846_)
                                                   (##vector-length _g82846_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82847_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82847_)))
                                      (let ((_%target7342973450%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82846_ 0)))
                                            (_%tl7343173453%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82846_ 1))))
                                        (if (gx#stx-null? _%tl7343173453%_)
                                            (letrec ((_%loop7343273456%_
                                                      (lambda (_%hd7343073460%_
                                                               _%super-id7343673463%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7343073460%_)
                                                            (let ((_%e7343373466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7343073460%_)))
                      (let ((_%lp-hd7343473470%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7343373466%_)))
                            (_%lp-tl7343573473%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7343373466%_))))
                        (_%loop7343273456%_
                         _%lp-tl7343573473%_
                         (cons _%lp-hd7343473470%_ _%super-id7343673463%_))))
                    (let ((_%super-id7343773476%_
                           (reverse _%super-id7343673463%_)))
                      ((lambda (_%L73480%_)
                         (cons (gx#datum->syntax '#f '@list)
                               (foldr (lambda (_%g7349573498%_ _%g7349673501%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g7349573498%_ '()))
                                              _%g7349673501%_))
                                      '()
                                      _%L73480%_)))
                       _%super-id7343773476%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7343273456%_
                                               _%target7342973450%_
                                               '()))
                                            (_%g7342673443%_
                                             _%g7342773447%_)))))
                                  (_%g7342673443%_ _%g7342773447%_)))))
                      (_%g7342573504%_ _%super-ref69616%_)))))
               _%g7132971340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7132773508%_
                                               (let* ((_%g7351273520%_
                                                       (lambda (_%g7351373516%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7351373516%_)))
                                                      (_%g7351173539%_
                                                       (lambda (_%g7351373524%_)
                                                         ((lambda (_%L73527%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L73527%_ '())))
                  _%g7351373524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7351173539%_
                                                  (gx#stx-car
                                                   (gx#stx-cdr
                                                    _%type-name71028%_)))))))
                                          _%g7130171312%_))))
                                 (_%g7129973543%_
                                  (let* ((_%g7354773562%_
                                          (lambda (_%g7354873558%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g7354873558%_)))
                                         (_%g7354673610%_
                                          (lambda (_%g7354873566%_)
                                            (if (gx#stx-pair? _%g7354873566%_)
                                                (let ((_%e7355073569%_
                                                       (gx#syntax-e
                                                        _%g7354873566%_)))
                                                  (let ((_%hd7355173573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e7355073569%_)))
                                                        (_%tl7355273576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e7355073569%_))))
                                                    (if (gx#stx-datum?
                                                         _%hd7355173573%_)
                                                        (let ((_%e7355373579%_
                                                               (gx#stx-e
                                                                _%hd7355173573%_)))
                                                          (if (equal? _%e7355373579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'id:)
                      (if (gx#stx-pair? _%tl7355273576%_)
                          (let ((_%e7355473583%_
                                 (gx#syntax-e _%tl7355273576%_)))
                            (let ((_%hd7355573587%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7355473583%_)))
                                  (_%tl7355673590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7355473583%_))))
                              (if (gx#stx-null? _%tl7355673590%_)
                                  ((lambda (_%L73593%_)
                                     (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L73593%_ '())))
                                   _%hd7355573587%_)
                                  (_%g7354773562%_ _%g7354873566%_))))
                          (_%g7354773562%_ _%g7354873566%_))
                      (_%g7354773562%_ _%g7354873566%_)))
                (_%g7354773562%_ _%g7354873566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7354773562%_
                                                 _%g7354873566%_)))))
                                    (_%g7354673610%_ _%type-id71035%_)))))
                             _%g7127371284%_))))
                    (_%g7127173614%_
                     (_%wrap69479%_
                      (cons (gx#datum->syntax '#f 'defclass-type)
                            (cons _%L69709%_
                                  (cons _%L69793%_
                                        (cons _%L71259%_
                                              (cons _%L69765%_
                                                    (foldr (lambda (_%g7361773620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7361873623%_)
                     (cons _%g7361773620%_ _%g7361873623%_))
                   '()
                   _%L71223%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _%g7124571256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7124373626%_
                                                (if (or (not (null? _%type-constructor71050%_))
                                                        (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%slot-contract-table69627%_))
                     (zero? (hash-length _%slot-default-table69630%_)))
                _%metaclass71154%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%L69737%_
                                                    '#f))))
                                           _%type-body7118071219%_))))))
                          (_%loop7117571199%_ _%target7117271193%_ '()))
                        (_%g7116971186%_ _%g7117071190%_)))))
              (_%g7116971186%_ _%g7117071190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7116873638%_
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots71021%_
                                                           _%type-slots70874%_)
                                                    _%type-properties71142%_)
                                             _%type-metaclass71166%_)
                                      _%type-final71163%_)
                               _%type-struct71160%_)
                        _%type-constructor71050%_)
                 _%type-name71028%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id71035%_))))
                                      _%mixin-usetf7066970708%_))))))
                     (_%loop7066470688%_ _%target7066170682%_ '()))
                   (_%g7065870675%_ _%g7065970679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7065870675%_
                                                  _%g7065970679%_)))))
                                     (_%g7065773642%_
                                      (gx#stx-map
                                       (lambda (_%g7364573647%_)
                                         (_%make-id69620%_
                                          '"&"
                                          _%g7364573647%_))
                                       (foldr (lambda (_%g7365073653%_
                                                       _%g7365173656%_)
                                                (cons _%g7365073653%_
                                                      _%g7365173656%_))
                                              '()
                                              _%L70357%_)))))
                                 _%mixin-ugetf7059870637%_))))))
                (_%loop7059370617%_ _%target7059070611%_ '()))
              (_%g7058770604%_ _%g7058870608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7058770604%_
                                             _%g7058870608%_)))))
                                (_%g7058673659%_
                                 (gx#stx-map
                                  (lambda (_%g7366273664%_)
                                    (_%make-id69620%_ '"&" _%g7366273664%_))
                                  (foldr (lambda (_%g7366773670%_
                                                  _%g7366873673%_)
                                           (cons _%g7366773670%_
                                                 _%g7366873673%_))
                                         '()
                                         _%L70286%_)))))
                            _%usetf7052770566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7052270546%_
                                                    _%target7051970540%_
                                                    '()))
                                                 (_%g7051670533%_
                                                  _%g7051770537%_)))))
                                       (_%g7051670533%_ _%g7051770537%_)))))
                           (_%g7051573676%_
                            (gx#stx-map
                             (lambda (_%g7367973681%_)
                               (_%make-id69620%_ '"&" _%g7367973681%_))
                             (foldr (lambda (_%g7368473687%_ _%g7368573690%_)
                                      (cons _%g7368473687%_ _%g7368573690%_))
                                    '()
                                    _%L70073%_)))))
                       _%ugetf7045670495%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7045170475%_
                                               _%target7044870469%_
                                               '()))
                                            (_%g7044570462%_
                                             _%g7044670466%_)))))
                                  (_%g7044570462%_ _%g7044670466%_)))))
                      (_%g7044473693%_
                       (gx#stx-map
                        (lambda (_%g7369673698%_)
                          (_%make-id69620%_ '"&" _%g7369673698%_))
                        (foldr (lambda (_%g7370173704%_ _%g7370273707%_)
                                 (cons _%g7370173704%_ _%g7370273707%_))
                               '()
                               _%L70002%_)))))
                  _%mixin-rawsetf7038570424%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7038070404%_
                                          _%target7037770398%_
                                          '()))
                                       (_%g7037470391%_ _%g7037570395%_)))))
                             (_%g7037470391%_ _%g7037570395%_)))))
                 (_%g7037373710%_
                  (gx#stx-map
                   (lambda (_%g7371373715%_)
                     (_%make-id69620%_
                      _%name69647%_
                      '"-unchecked-"
                      _%g7371373715%_
                      '"-set!"))
                   _%mixin-slots69644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-setf7031470353%_))))))
                                    (_%loop7030970333%_
                                     _%target7030670327%_
                                     '()))
                                  (_%g7030370320%_ _%g7030470324%_)))))
                        (_%g7030370320%_ _%g7030470324%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g7030273719%_
                                                     (gx#stx-map
                                                      (lambda (_%g7372273724%_)
                                                        (_%make-id69620%_
                                                         _%name69647%_
                                                         '"-"
                                                         _%g7372273724%_
                                                         '"-set!"))
                                                      _%mixin-slots69644%_))))
                                                _%mixin-getf7024370282%_))))))
                               (_%loop7023870262%_ _%target7023570256%_ '()))
                             (_%g7023270249%_ _%g7023370253%_)))))
                   (_%g7023270249%_ _%g7023370253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7023173728%_
                                                (gx#stx-map
                                                 (lambda (_%g7373173733%_)
                                                   (_%make-id69620%_
                                                    _%name69647%_
                                                    '"-"
                                                    _%g7373173733%_))
                                                 _%mixin-slots69644%_))))
                                           _%mixin-slot7017270211%_))))))
                          (_%loop7016770191%_ _%target7016470185%_ '()))
                        (_%g7016170178%_ _%g7016270182%_)))))
              (_%g7016170178%_ _%g7016270182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7016073737%_
                                           _%mixin-slots69644%_)))
                                      _%rawsetf7010170140%_))))))
                     (_%loop7009670120%_ _%target7009370114%_ '()))
                   (_%g7009070107%_ _%g7009170111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7009070107%_
                                                  _%g7009170111%_)))))
                                     (_%g7008973741%_
                                      (gx#stx-map
                                       (lambda (_%g7374473746%_)
                                         (_%make-id69620%_
                                          _%name69647%_
                                          '"-unchecked-"
                                          _%g7374473746%_
                                          '"-set!"))
                                       _%slots69638%_))))
                                 _%setf7003070069%_))))))
                (_%loop7002570049%_ _%target7002270043%_ '()))
              (_%g7001970036%_ _%g7002070040%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7001970036%_
                                             _%g7002070040%_)))))
                                (_%g7001873750%_
                                 (gx#stx-map
                                  (lambda (_%g7375373755%_)
                                    (_%make-id69620%_
                                     _%name69647%_
                                     '"-"
                                     _%g7375373755%_
                                     '"-set!"))
                                  _%slots69638%_))))
                            _%getf6995969998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop6995469978%_
                                                    _%target6995169972%_
                                                    '()))
                                                 (_%g6994869965%_
                                                  _%g6994969969%_)))))
                                       (_%g6994869965%_ _%g6994969969%_)))))
                           (_%g6994773759%_
                            (gx#stx-map
                             (lambda (_%g7376273764%_)
                               (_%make-id69620%_
                                _%name69647%_
                                '"-"
                                _%g7376273764%_))
                             _%slots69638%_))))
                       _%ordered-slot6988869927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6988369907%_
                                               _%target6988069901%_
                                               '()))
                                            (_%g6987769894%_
                                             _%g6987869898%_)))))
                                  (_%g6987769894%_ _%g6987869898%_)))))
                      (_%g6987673768%_ _%ordered-slots69633%_)))
                  _%slot6981769856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop6981269836%_
                                          _%target6980969830%_
                                          '()))
                                       (_%g6980669823%_ _%g6980769827%_)))))
                             (_%g6980669823%_ _%g6980769827%_)))))
                 (_%g6980573772%_ _%slots69638%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g6977969790%_))))
                                            (_%g6977773776%_
                                             (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                  _%super69650%_))))
                                        _%g6975169762%_))))
                               (_%g6974973780%_
                                (_%make-id69620%_ _%name69647%_ '"?"))))
                           _%g6972369734%_))))
                  (_%g6972173784%_ (_%make-id69620%_ '"make-" _%name69647%_))))
              _%g6969569706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g6969373788%_
                                              (_%make-id69620%_
                                               _%name69647%_
                                               '"::t"))))
                                         _%g6965769668%_))))
                                (_%g6965573792%_ _%id69614%_))))))))))
          (let* ((_%g6948269510%_
                  (lambda (_%g6948369506%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g6948369506%_)))
                 (_%g6948169610%_
                  (lambda (_%g6948369514%_)
                    (if (gx#stx-pair? _%g6948369514%_)
                        (let ((_%e6948769517%_ (gx#syntax-e _%g6948369514%_)))
                          (let ((_%hd6948869521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6948769517%_)))
                                (_%tl6948969524%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6948769517%_))))
                            (if (gx#stx-pair? _%tl6948969524%_)
                                (let ((_%e6949069527%_
                                       (gx#syntax-e _%tl6948969524%_)))
                                  (let ((_%hd6949169531%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6949069527%_)))
                                        (_%tl6949269534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6949069527%_))))
                                    (if (gx#stx-pair? _%tl6949269534%_)
                                        (let ((_%e6949369537%_
                                               (gx#syntax-e _%tl6949269534%_)))
                                          (let ((_%hd6949469541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6949369537%_)))
                                                (_%tl6949569544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6949369537%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd6949469541%_)
                                                (let ((_g82848_
                                                       (gx#syntax-split-splice
                                                        _%hd6949469541%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g82849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g82848_)
                         (##vector-length _g82848_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g82849_ 2)))
                  (error "Context expects 2 values" _g82849_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target6949669547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g82848_
                                                              0)))
                                                          (_%tl6949869550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g82848_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl6949869550%_)
                                                          (letrec ((_%loop6949969553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd6949769557%_ _%slot6950369560%_)
                              (if (gx#stx-pair? _%hd6949769557%_)
                                  (let ((_%e6950069563%_
                                         (gx#syntax-e _%hd6949769557%_)))
                                    (let ((_%lp-hd6950169567%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6950069563%_)))
                                          (_%lp-tl6950269570%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6950069563%_))))
                                      (_%loop6949969553%_
                                       _%lp-tl6950269570%_
                                       (cons _%lp-hd6950169567%_
                                             _%slot6950369560%_))))
                                  (let ((_%slot6950469573%_
                                         (reverse _%slot6950369560%_)))
                                    ((lambda (_%L69577%_ _%L69579%_ _%L69580%_)
                                       (_%generate69459%_
                                        _%L69580%_
                                        (foldr (lambda (_%g6960169604%_
                                                        _%g6960269607%_)
                                                 (cons _%g6960169604%_
                                                       _%g6960269607%_))
                                               '()
                                               _%L69579%_)
                                        _%L69577%_))
                                     _%tl6949569544%_
                                     _%slot6950469573%_
                                     _%hd6949169531%_))))))
                    (_%loop6949969553%_ _%target6949669547%_ '()))
                  (_%g6948269510%_ _%g6948369514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g6948269510%_
                                                 _%g6948369514%_))))
                                        (_%g6948269510%_ _%g6948369514%_))))
                                (_%g6948269510%_ _%g6948369514%_))))
                        (_%g6948269510%_ _%g6948369514%_)))))
            (_%g6948169610%_ _%stx69456%_)))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defstruct/c|
      (lambda (_%$stx76802%_)
        (let* ((_%g7680676825%_
                (lambda (_%g7680776821%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7680776821%_)))
               (_%g7680576882%_
                (lambda (_%g7680776829%_)
                  (if (gx#stx-pair? _%g7680776829%_)
                      (let ((_%e7681176832%_ (gx#syntax-e _%g7680776829%_)))
                        (let ((_%hd7681276836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7681176832%_)))
                              (_%tl7681376839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7681176832%_))))
                          (if (gx#stx-pair? _%tl7681376839%_)
                              (let ((_%e7681476842%_
                                     (gx#syntax-e _%tl7681376839%_)))
                                (let ((_%hd7681576846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7681476842%_)))
                                      (_%tl7681676849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7681476842%_))))
                                  (if (gx#stx-pair? _%tl7681676849%_)
                                      (let ((_%e7681776852%_
                                             (gx#syntax-e _%tl7681676849%_)))
                                        (let ((_%hd7681876856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7681776852%_)))
                                              (_%tl7681976859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7681776852%_))))
                                          ((lambda (_%L76862%_
                                                    _%L76864%_
                                                    _%L76865%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass/c)
                                                   (cons _%L76865%_
                                                         (cons _%L76864%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L76862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl7681976859%_
                                           _%hd7681876856%_
                                           _%hd7681576846%_)))
                                      (_%g7680676825%_ _%g7680776829%_))))
                              (_%g7680676825%_ _%g7680776829%_))))
                      (_%g7680676825%_ _%g7680776829%_)))))
          (_%g7680576882%_ _%$stx76802%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable|
      (lambda (_%stx76886%_)
        (let* ((_%__stx8238282383%_ _%stx76886%_)
               (_%g7689076927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8238282383%_))))
          (let ((_%__kont8238582386%_
                 (lambda (_%L77039%_ _%L77041%_ _%L77042%_ _%L77043%_)
                   (let* ((_%g7706877083%_
                           (lambda (_%g7706977079%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7706977079%_)))
                          (_%g7706777128%_
                           (lambda (_%g7706977087%_)
                             (if (gx#stx-pair? _%g7706977087%_)
                                 (let ((_%e7707277090%_
                                        (gx#syntax-e _%g7706977087%_)))
                                   (let ((_%hd7707377094%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7707277090%_)))
                                         (_%tl7707477097%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7707277090%_))))
                                     (if (gx#stx-pair? _%tl7707477097%_)
                                         (let ((_%e7707577100%_
                                                (gx#syntax-e
                                                 _%tl7707477097%_)))
                                           (let ((_%hd7707677104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7707577100%_)))
                                                 (_%tl7707777107%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7707577100%_))))
                                             (if (gx#stx-null?
                                                  _%tl7707777107%_)
                                                 ((lambda (_%L77110%_
                                                           _%L77112%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L77112%_ (cons _%L77042%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def/c)
                                    (cons (cons _%L77110%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'new-value)
                                                            (cons _%L77041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L77039%_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'set!)
                                                      (cons _%L77112%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'defsyntax)
                                          (cons _%L77043%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'identifier-rules)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '%%set-dotted!)
                                (cons (gx#datum->syntax '#f 'set!) '()))
                          (cons (cons (cons (gx#datum->syntax
                                             '#f
                                             '%%set-dotted!)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'the-var)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '())))
                                      (cons (cons _%L77110%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '()))
                                            '()))
                                (cons (cons (cons (gx#datum->syntax '#f 'set!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'the-var)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '())))
                                            (cons (cons _%L77110%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '()))
                                                  '()))
                                      (cons (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'the-var)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'args)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '...)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'and)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'identifier?)
                                  (cons (cons (gx#datum->syntax '#f 'syntax)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'the-var)
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'free-identifier=?)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'the-var)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'syntax)
                                                          (cons _%L77043%_
                                                                '()))
                                                    '())))
                                  '())))
                (cons (cons _%L77112%_
                            (cons (gx#datum->syntax '#f 'args)
                                  (cons (gx#datum->syntax '#f '...) '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'the-var)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'identifier?)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'the-var)
                                                          '()))
                                              '()))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'free-identifier=?)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'syntax)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'the-var)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax)
                        (cons _%L77043%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons _%L77112%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7707677104%_
                                                  _%hd7707377094%_)
                                                 (_%g7706877083%_
                                                  _%g7706977087%_))))
                                         (_%g7706877083%_ _%g7706977087%_))))
                                 (_%g7706877083%_ _%g7706977087%_)))))
                     (_%g7706777128%_
                      (list (gx#stx-identifier _%L77043%_ '"__" _%L77043%_)
                            (gx#stx-identifier
                             _%L77043%_
                             _%L77043%_
                             '"-set!"))))))
                (_%__kont8238782388%_
                 (lambda (_%L76964%_ _%L76966%_)
                   (cons (gx#datum->syntax '#f 'defmutable)
                         (cons _%L76966%_
                               (cons _%L76964%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8242182422%_
                   (lambda (_%e7689676989%_
                            _%hd7689776993%_
                            _%tl7689876996%_
                            _%e7689976999%_
                            _%hd7690077003%_
                            _%tl7690177006%_
                            _%e7690277009%_
                            _%hd7690377013%_
                            _%tl7690477016%_
                            _%e7690577019%_
                            _%hd7690677023%_
                            _%tl7690777026%_
                            _%e7690877029%_
                            _%hd7690977033%_
                            _%tl7691077036%_)
                     (let ((_%L77039%_ _%hd7690977033%_)
                           (_%L77041%_ _%hd7690677023%_)
                           (_%L77042%_ _%hd7690377013%_)
                           (_%L77043%_ _%hd7690077003%_))
                       (if (and (gx#identifier? _%L77043%_)
                                (gx#identifier? _%L77041%_)
                                (or (gx#free-identifier=?
                                     _%L77041%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L77041%_
                                     (gx#datum->syntax '#f ':?))))
                           (_%__kont8238582386%_
                            _%L77039%_
                            _%L77041%_
                            _%L77042%_
                            _%L77043%_)
                           (let () (declare (not safe)) (_%g7689076927%_)))))))
              (if (gx#stx-pair? _%__stx8238282383%_)
                  (let ((_%e7689676989%_ (gx#syntax-e _%__stx8238282383%_)))
                    (let ((_%tl7689876996%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7689676989%_)))
                          (_%hd7689776993%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7689676989%_))))
                      (if (gx#stx-pair? _%tl7689876996%_)
                          (let ((_%e7689976999%_
                                 (gx#syntax-e _%tl7689876996%_)))
                            (let ((_%tl7690177006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7689976999%_)))
                                  (_%hd7690077003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7689976999%_))))
                              (if (gx#stx-pair? _%tl7690177006%_)
                                  (let ((_%e7690277009%_
                                         (gx#syntax-e _%tl7690177006%_)))
                                    (let ((_%tl7690477016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7690277009%_)))
                                          (_%hd7690377013%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7690277009%_))))
                                      (if (gx#stx-pair? _%tl7690477016%_)
                                          (let ((_%e7690577019%_
                                                 (gx#syntax-e
                                                  _%tl7690477016%_)))
                                            (let ((_%tl7690777026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7690577019%_)))
                                                  (_%hd7690677023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7690577019%_))))
                                              (if (gx#stx-pair?
                                                   _%tl7690777026%_)
                                                  (let ((_%e7690877029%_
                                                         (gx#syntax-e
                                                          _%tl7690777026%_)))
                                                    (let ((_%tl7691077036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7690877029%_)))
                                                          (_%hd7690977033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7690877029%_))))
                                                      (if (gx#stx-null?
                                                           _%tl7691077036%_)
                                                          (_%__match8242182422%_
                                                           _%e7689676989%_
                                                           _%hd7689776993%_
                                                           _%tl7689876996%_
                                                           _%e7689976999%_
                                                           _%hd7690077003%_
                                                           _%tl7690177006%_
                                                           _%e7690277009%_
                                                           _%hd7690377013%_
                                                           _%tl7690477016%_
                                                           _%e7690577019%_
                                                           _%hd7690677023%_
                                                           _%tl7690777026%_
                                                           _%e7690877029%_
                                                           _%hd7690977033%_
                                                           _%tl7691077036%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g7689076927%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7689076927%_)))))
                                          (if (gx#stx-null? _%tl7690477016%_)
                                              (_%__kont8238782388%_
                                               _%hd7690377013%_
                                               _%hd7690077003%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7689076927%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7689076927%_)))))
                          (let () (declare (not safe)) (_%g7689076927%_)))))
                  (let () (declare (not safe)) (_%g7689076927%_))))))))))
