(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207659_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207666_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207668_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207670_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207672_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207674_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207686_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207688_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207690_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207692_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207694_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx201077%_)
        (let* ((_%g201081201099%_
                (lambda (_%g201082201095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201082201095%_))))
               (_%g201080201154%_
                (lambda (_%g201082201103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201082201103%_))
                      (let ((_%e201085201106%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201082201103%_))))
                        (let ((_%hd201086201110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201085201106%_)))
                              (_%tl201087201113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201085201106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201087201113%_))
                              (let ((_%e201088201116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201087201113%_))))
                                (let ((_%hd201089201120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201088201116%_)))
                                      (_%tl201090201123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201088201116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201090201123%_))
                                      (let ((_%e201091201126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201090201123%_))))
                                        (let ((_%hd201092201130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201091201126%_)))
                                              (_%tl201093201133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201091201126%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201093201133%_))
                                              ((lambda (_%L201136%_
                                                        _%L201138%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201138%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L201138%_ '()))
                         (cons _%L201136%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201081201099%_
                                                      _%g201082201103%_)))
                                               _%hd201092201130%_
                                               _%hd201089201120%_)
                                              (_%g201081201099%_
                                               _%g201082201103%_))))
                                      (_%g201081201099%_ _%g201082201103%_))))
                              (_%g201081201099%_ _%g201082201103%_))))
                      (_%g201081201099%_ _%g201082201103%_)))))
          (_%g201080201154%_ _%$stx201077%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx201158%_)
        (let* ((_%g201162201180%_
                (lambda (_%g201163201176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201163201176%_))))
               (_%g201161201235%_
                (lambda (_%g201163201184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201163201184%_))
                      (let ((_%e201166201187%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201163201184%_))))
                        (let ((_%hd201167201191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201166201187%_)))
                              (_%tl201168201194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201166201187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201168201194%_))
                              (let ((_%e201169201197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201168201194%_))))
                                (let ((_%hd201170201201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201169201197%_)))
                                      (_%tl201171201204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201169201197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201171201204%_))
                                      (let ((_%e201172201207%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201171201204%_))))
                                        (let ((_%hd201173201211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201172201207%_)))
                                              (_%tl201174201214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201172201207%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201174201214%_))
                                              ((lambda (_%L201217%_
                                                        _%L201219%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201219%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L201219%_ '()))
                         (cons _%L201217%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201162201180%_
                                                      _%g201163201184%_)))
                                               _%hd201173201211%_
                                               _%hd201170201201%_)
                                              (_%g201162201180%_
                                               _%g201163201184%_))))
                                      (_%g201162201180%_ _%g201163201184%_))))
                              (_%g201162201180%_ _%g201163201184%_))))
                      (_%g201162201180%_ _%g201163201184%_)))))
          (_%g201161201235%_ _%$stx201158%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx201239%_)
        (let* ((_%g201243201272%_
                (lambda (_%g201244201268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201244201268%_))))
               (_%g201242201372%_
                (lambda (_%g201244201276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201244201276%_))
                      (let ((_%e201247201279%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201244201276%_))))
                        (let ((_%hd201248201283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201247201279%_)))
                              (_%tl201249201286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201247201279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201249201286%_))
                              (let ((_g207637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201249201286%_
                                        '0))))
                                (begin
                                  (let ((_g207638_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207637_)
                                               (##vector-length _g207637_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207638_ 2)))
                                        (error "Context expects 2 values"
                                               _g207638_)))
                                  (let ((_%target201250201289%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207637_ 0)))
                                        (_%tl201252201292%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207637_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201252201292%_))
                                        (letrec ((_%loop201253201295%_
                                                  (lambda (_%hd201251201299%_
                                                           _%type201257201302%_
                                                           _%symbol201258201304%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201251201299%_))
                                                        (let ((_%e201254201307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201251201299%_))))
                  (let ((_%lp-hd201255201311%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201254201307%_)))
                        (_%lp-tl201256201314%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201254201307%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201255201311%_))
                        (let ((_%e201261201317%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201255201311%_))))
                          (let ((_%hd201262201321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201261201317%_)))
                                (_%tl201263201324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201261201317%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201263201324%_))
                                (let ((_%e201264201327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201263201324%_))))
                                  (let ((_%hd201265201331%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201264201327%_)))
                                        (_%tl201266201334%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201264201327%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201266201334%_))
                                        (_%loop201253201295%_
                                         _%lp-tl201256201314%_
                                         (cons _%hd201265201331%_
                                               _%type201257201302%_)
                                         (cons _%hd201262201321%_
                                               _%symbol201258201304%_))
                                        (_%g201243201272%_
                                         _%g201244201276%_))))
                                (_%g201243201272%_ _%g201244201276%_))))
                        (_%g201243201272%_ _%g201244201276%_))))
                (let ((_%type201259201337%_ (reverse _%type201257201302%_))
                      (_%symbol201260201340%_
                       (reverse _%symbol201258201304%_)))
                  ((lambda (_%L201343%_ _%L201345%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201343%_
                                _%L201345%_))
                             (let ((__tmp207639
                                    (lambda (_%g201360201364%_
                                             _%g201361201367%_
                                             _%g201362201369%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g201361201367%_
                                                        (cons _%g201360201364%_
                                                              '())))
                                            _%g201362201369%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207639
                                '()
                                _%L201343%_
                                _%L201345%_)))))
                   _%type201259201337%_
                   _%symbol201260201340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201253201295%_
                                           _%target201250201289%_
                                           '()
                                           '()))
                                        (_%g201243201272%_
                                         _%g201244201276%_)))))
                              (_%g201243201272%_ _%g201244201276%_))))
                      (_%g201243201272%_ _%g201244201276%_)))))
          (_%g201242201372%_ _%$stx201239%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx201377%_)
        (let* ((_%__stx206948206949%_ _%$stx201377%_)
               (_%g201382201424%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206948206949%_)))))
          (let ((_%__kont206951206952%_
                 (lambda (_%L201552%_ _%L201554%_ _%L201555%_ _%L201556%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201556%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201555%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201554%_ '()))
                                           (cons _%L201552%_ '())))))))
                (_%__kont206953206954%_
                 (lambda (_%L201471%_ _%L201473%_ _%L201474%_ _%L201475%_)
                   (cons _%L201475%_
                         (cons _%L201474%_
                               (cons _%L201473%_
                                     (cons _%L201471%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match206987206988%_
                   (lambda (_%e201388201502%_
                            _%hd201389201506%_
                            _%tl201390201509%_
                            _%e201391201512%_
                            _%hd201392201516%_
                            _%tl201393201519%_
                            _%e201394201522%_
                            _%hd201395201526%_
                            _%tl201396201529%_
                            _%e201397201532%_
                            _%hd201398201536%_
                            _%tl201399201539%_
                            _%e201400201542%_
                            _%hd201401201546%_
                            _%tl201402201549%_)
                     (let ((_%L201552%_ _%hd201401201546%_)
                           (_%L201554%_ _%hd201398201536%_)
                           (_%L201555%_ _%hd201395201526%_)
                           (_%L201556%_ _%hd201392201516%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201556%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201555%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201554%_)))
                           (_%__kont206951206952%_
                            _%L201552%_
                            _%L201554%_
                            _%L201555%_
                            _%L201556%_)
                           (let ()
                             (declare (not safe))
                             (_%g201382201424%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206948206949%_))
                  (let ((_%e201388201502%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206948206949%_))))
                    (let ((_%tl201390201509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201388201502%_)))
                          (_%hd201389201506%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201388201502%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201390201509%_))
                          (let ((_%e201391201512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201390201509%_))))
                            (let ((_%tl201393201519%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201391201512%_)))
                                  (_%hd201392201516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201391201512%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201393201519%_))
                                  (let ((_%e201394201522%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl201393201519%_))))
                                    (let ((_%tl201396201529%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201394201522%_)))
                                          (_%hd201395201526%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201394201522%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201396201529%_))
                                          (let ((_%e201397201532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201396201529%_))))
                                            (let ((_%tl201399201539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201397201532%_)))
                                                  (_%hd201398201536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201397201532%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201399201539%_))
                                                  (let ((_%e201400201542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201399201539%_))))
                                                    (let ((_%tl201402201549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201400201542%_)))
                                                          (_%hd201401201546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201400201542%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201402201549%_))
                                                          (_%__match206987206988%_
                                                           _%e201388201502%_
                                                           _%hd201389201506%_
                                                           _%tl201390201509%_
                                                           _%e201391201512%_
                                                           _%hd201392201516%_
                                                           _%tl201393201519%_
                                                           _%e201394201522%_
                                                           _%hd201395201526%_
                                                           _%tl201396201529%_
                                                           _%e201397201532%_
                                                           _%hd201398201536%_
                                                           _%tl201399201539%_
                                                           _%e201400201542%_
                                                           _%hd201401201546%_
                                                           _%tl201402201549%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201382201424%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201399201539%_))
                                                      (_%__kont206953206954%_
                                                       _%hd201398201536%_
                                                       _%hd201395201526%_
                                                       _%hd201392201516%_
                                                       _%hd201389201506%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201382201424%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201382201424%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201382201424%_)))))
                          (let () (declare (not safe)) (_%g201382201424%_)))))
                  (let () (declare (not safe)) (_%g201382201424%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201581%_)
        (let* ((_%g201585201620%_
                (lambda (_%g201586201616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201586201616%_))))
               (_%g201584201739%_
                (lambda (_%g201586201624%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201586201624%_))
                      (let ((_%e201590201627%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201586201624%_))))
                        (let ((_%hd201591201631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201590201627%_)))
                              (_%tl201592201634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201590201627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201592201634%_))
                              (let ((_g207640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201592201634%_
                                        '0))))
                                (begin
                                  (let ((_g207641_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207640_)
                                               (##vector-length _g207640_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207641_ 2)))
                                        (error "Context expects 2 values"
                                               _g207641_)))
                                  (let ((_%target201593201637%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207640_ 0)))
                                        (_%tl201595201640%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207640_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201595201640%_))
                                        (letrec ((_%loop201596201643%_
                                                  (lambda (_%hd201594201647%_
                                                           _%symbol201600201650%_
                                                           _%method201601201652%_
                                                           _%type-t201602201654%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201594201647%_))
                                                        (let ((_%e201597201657%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201594201647%_))))
                  (let ((_%lp-hd201598201661%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201597201657%_)))
                        (_%lp-tl201599201664%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201597201657%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201598201661%_))
                        (let ((_%e201606201667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201598201661%_))))
                          (let ((_%hd201607201671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201606201667%_)))
                                (_%tl201608201674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201606201667%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201608201674%_))
                                (let ((_%e201609201677%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201608201674%_))))
                                  (let ((_%hd201610201681%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201609201677%_)))
                                        (_%tl201611201684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201609201677%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201611201684%_))
                                        (let ((_%e201612201687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201611201684%_))))
                                          (let ((_%hd201613201691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201612201687%_)))
                                                (_%tl201614201694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201612201687%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201614201694%_))
                                                (_%loop201596201643%_
                                                 _%lp-tl201599201664%_
                                                 (cons _%hd201613201691%_
                                                       _%symbol201600201650%_)
                                                 (cons _%hd201610201681%_
                                                       _%method201601201652%_)
                                                 (cons _%hd201607201671%_
                                                       _%type-t201602201654%_))
                                                (_%g201585201620%_
                                                 _%g201586201624%_))))
                                        (_%g201585201620%_
                                         _%g201586201624%_))))
                                (_%g201585201620%_ _%g201586201624%_))))
                        (_%g201585201620%_ _%g201586201624%_))))
                (let ((_%symbol201603201697%_ (reverse _%symbol201600201650%_))
                      (_%method201604201700%_ (reverse _%method201601201652%_))
                      (_%type-t201605201702%_
                       (reverse _%type-t201602201654%_)))
                  ((lambda (_%L201705%_ _%L201707%_ _%L201708%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201705%_
                                _%L201707%_
                                _%L201708%_))
                             (let ((__tmp207642
                                    (lambda (_%g201724201729%_
                                             _%g201725201732%_
                                             _%g201726201734%_
                                             _%g201727201736%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201726201734%_
                                                        (cons _%g201725201732%_
                                                              (cons _%g201724201729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201727201736%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207642
                                '()
                                _%L201705%_
                                _%L201707%_
                                _%L201708%_)))))
                   _%symbol201603201697%_
                   _%method201604201700%_
                   _%type-t201605201702%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201596201643%_
                                           _%target201593201637%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201585201620%_
                                         _%g201586201624%_)))))
                              (_%g201585201620%_ _%g201586201624%_))))
                      (_%g201585201620%_ _%g201586201624%_)))))
          (_%g201584201739%_ _%$stx201581%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201744%_)
        (let* ((_%g201748201781%_
                (lambda (_%g201749201777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201749201777%_))))
               (_%g201747201895%_
                (lambda (_%g201749201785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201749201785%_))
                      (let ((_%e201753201788%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201749201785%_))))
                        (let ((_%hd201754201792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201753201788%_)))
                              (_%tl201755201795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201753201788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201755201795%_))
                              (let ((_%e201756201798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201755201795%_))))
                                (let ((_%hd201757201802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201756201798%_)))
                                      (_%tl201758201805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201756201798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201758201805%_))
                                      (let ((_g207643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201758201805%_
                                                '0))))
                                        (begin
                                          (let ((_g207644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207643_)
                                                       (##vector-length
                                                        _g207643_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207644_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207644_)))
                                          (let ((_%target201759201808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207643_ 0)))
                                                (_%tl201761201811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207643_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201761201811%_))
                                                (letrec ((_%loop201762201814%_
                                                          (lambda (_%hd201760201818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201766201821%_
                           _%method201767201823%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201760201818%_))
                        (let ((_%e201763201826%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201760201818%_))))
                          (let ((_%lp-hd201764201830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201763201826%_)))
                                (_%lp-tl201765201833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201763201826%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201764201830%_))
                                (let ((_%e201770201836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201764201830%_))))
                                  (let ((_%hd201771201840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201770201836%_)))
                                        (_%tl201772201843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201770201836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201772201843%_))
                                        (let ((_%e201773201846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201772201843%_))))
                                          (let ((_%hd201774201850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201773201846%_)))
                                                (_%tl201775201853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201773201846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201775201853%_))
                                                (_%loop201762201814%_
                                                 _%lp-tl201765201833%_
                                                 (cons _%hd201774201850%_
                                                       _%symbol201766201821%_)
                                                 (cons _%hd201771201840%_
                                                       _%method201767201823%_))
                                                (_%g201748201781%_
                                                 _%g201749201785%_))))
                                        (_%g201748201781%_
                                         _%g201749201785%_))))
                                (_%g201748201781%_ _%g201749201785%_))))
                        (let ((_%symbol201768201856%_
                               (reverse _%symbol201766201821%_))
                              (_%method201769201859%_
                               (reverse _%method201767201823%_)))
                          ((lambda (_%L201862%_ _%L201864%_ _%L201865%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201862%_
                                        _%L201864%_))
                                     (let ((__tmp207645
                                            (lambda (_%g201883201887%_
                                                     _%g201884201890%_
                                                     _%g201885201892%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201865%_
                                                                (cons _%g201884201890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201883201887%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201885201892%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207645
                                        '()
                                        _%L201862%_
                                        _%L201864%_)))))
                           _%symbol201768201856%_
                           _%method201769201859%_
                           _%hd201757201802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201762201814%_
                                                   _%target201759201808%_
                                                   '()
                                                   '()))
                                                (_%g201748201781%_
                                                 _%g201749201785%_)))))
                                      (_%g201748201781%_ _%g201749201785%_))))
                              (_%g201748201781%_ _%g201749201785%_))))
                      (_%g201748201781%_ _%g201749201785%_)))))
          (_%g201747201895%_ _%$stx201744%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201900%_)
        (let* ((_%g201904201918%_
                (lambda (_%g201905201914%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201905201914%_))))
               (_%g201903201959%_
                (lambda (_%g201905201922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201905201922%_))
                      (let ((_%e201907201925%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201905201922%_))))
                        (let ((_%hd201908201929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201907201925%_)))
                              (_%tl201909201932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201907201925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201909201932%_))
                              (let ((_%e201910201935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201909201932%_))))
                                (let ((_%hd201911201939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201910201935%_)))
                                      (_%tl201912201942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201910201935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201912201942%_))
                                      ((lambda (_%L201945%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L201945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201911201939%_)
                                      (_%g201904201918%_ _%g201905201922%_))))
                              (_%g201904201918%_ _%g201905201922%_))))
                      (_%g201904201918%_ _%g201905201922%_)))))
          (_%g201903201959%_ _%$stx201900%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx201963%_)
        (let* ((_%g201967202021%_
                (lambda (_%g201968202017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201968202017%_))))
               (_%g201966202202%_
                (lambda (_%g201968202025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201968202025%_))
                      (let ((_%e201980202028%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201968202025%_))))
                        (let ((_%hd201981202032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201980202028%_)))
                              (_%tl201982202035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201980202028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201982202035%_))
                              (let ((_%e201983202038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201982202035%_))))
                                (let ((_%hd201984202042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201983202038%_)))
                                      (_%tl201985202045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201983202038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201985202045%_))
                                      (let ((_%e201986202048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201985202045%_))))
                                        (let ((_%hd201987202052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201986202048%_)))
                                              (_%tl201988202055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201986202048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201988202055%_))
                                              (let ((_%e201989202058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201988202055%_))))
                                                (let ((_%hd201990202062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201989202058%_)))
                                                      (_%tl201991202065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201989202058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201991202065%_))
                                                      (let ((_%e201992202068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201991202065%_))))
                (let ((_%hd201993202072%_
                       (let () (declare (not safe)) (##car _%e201992202068%_)))
                      (_%tl201994202075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201992202068%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201994202075%_))
                      (let ((_%e201995202078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201994202075%_))))
                        (let ((_%hd201996202082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201995202078%_)))
                              (_%tl201997202085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201995202078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201997202085%_))
                              (let ((_%e201998202088%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201997202085%_))))
                                (let ((_%hd201999202092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201998202088%_)))
                                      (_%tl202000202095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201998202088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202000202095%_))
                                      (let ((_%e202001202098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202000202095%_))))
                                        (let ((_%hd202002202102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202001202098%_)))
                                              (_%tl202003202105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202001202098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202003202105%_))
                                              (let ((_%e202004202108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202003202105%_))))
                                                (let ((_%hd202005202112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202004202108%_)))
                                                      (_%tl202006202115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202004202108%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202006202115%_))
                                                      (let ((_%e202007202118%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202006202115%_))))
                (let ((_%hd202008202122%_
                       (let () (declare (not safe)) (##car _%e202007202118%_)))
                      (_%tl202009202125%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202007202118%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202009202125%_))
                      (let ((_%e202010202128%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202009202125%_))))
                        (let ((_%hd202011202132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202010202128%_)))
                              (_%tl202012202135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202010202128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202012202135%_))
                              (let ((_%e202013202138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202012202135%_))))
                                (let ((_%hd202014202142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202013202138%_)))
                                      (_%tl202015202145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202013202138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202015202145%_))
                                      ((lambda (_%L202148%_
                                                _%L202150%_
                                                _%L202151%_
                                                _%L202152%_
                                                _%L202153%_
                                                _%L202154%_
                                                _%L202155%_
                                                _%L202156%_
                                                _%L202157%_
                                                _%L202158%_
                                                _%L202159%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L202159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L202158%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202157%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202156%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202155%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202154%_ '()))
                                           (cons _%L202153%_
                                                 (cons _%L202152%_
                                                       (cons _%L202151%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202150%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L202148%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202014202142%_
                                       _%hd202011202132%_
                                       _%hd202008202122%_
                                       _%hd202005202112%_
                                       _%hd202002202102%_
                                       _%hd201999202092%_
                                       _%hd201996202082%_
                                       _%hd201993202072%_
                                       _%hd201990202062%_
                                       _%hd201987202052%_
                                       _%hd201984202042%_)
                                      (_%g201967202021%_ _%g201968202025%_))))
                              (_%g201967202021%_ _%g201968202025%_))))
                      (_%g201967202021%_ _%g201968202025%_))))
              (_%g201967202021%_ _%g201968202025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201967202021%_
                                               _%g201968202025%_))))
                                      (_%g201967202021%_ _%g201968202025%_))))
                              (_%g201967202021%_ _%g201968202025%_))))
                      (_%g201967202021%_ _%g201968202025%_))))
              (_%g201967202021%_ _%g201968202025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201967202021%_
                                               _%g201968202025%_))))
                                      (_%g201967202021%_ _%g201968202025%_))))
                              (_%g201967202021%_ _%g201968202025%_))))
                      (_%g201967202021%_ _%g201968202025%_)))))
          (_%g201966202202%_ _%$stx201963%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx202206%_)
        (let* ((_%g202210202224%_
                (lambda (_%g202211202220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202211202220%_))))
               (_%g202209202265%_
                (lambda (_%g202211202228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202211202228%_))
                      (let ((_%e202213202231%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202211202228%_))))
                        (let ((_%hd202214202235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202213202231%_)))
                              (_%tl202215202238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202213202231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202215202238%_))
                              (let ((_%e202216202241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202215202238%_))))
                                (let ((_%hd202217202245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202216202241%_)))
                                      (_%tl202218202248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202216202241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202218202248%_))
                                      ((lambda (_%L202251%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L202251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202217202245%_)
                                      (_%g202210202224%_ _%g202211202228%_))))
                              (_%g202210202224%_ _%g202211202228%_))))
                      (_%g202210202224%_ _%g202211202228%_)))))
          (_%g202209202265%_ _%$stx202206%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx202269%_)
        (let* ((_%g202273202287%_
                (lambda (_%g202274202283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202274202283%_))))
               (_%g202272202328%_
                (lambda (_%g202274202291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202274202291%_))
                      (let ((_%e202276202294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202274202291%_))))
                        (let ((_%hd202277202298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202276202294%_)))
                              (_%tl202278202301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202276202294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202278202301%_))
                              (let ((_%e202279202304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202278202301%_))))
                                (let ((_%hd202280202308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202279202304%_)))
                                      (_%tl202281202311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202279202304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202281202311%_))
                                      ((lambda (_%L202314%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L202314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202280202308%_)
                                      (_%g202273202287%_ _%g202274202291%_))))
                              (_%g202273202287%_ _%g202274202291%_))))
                      (_%g202273202287%_ _%g202274202291%_)))))
          (_%g202272202328%_ _%$stx202269%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx202332%_)
        (let* ((_%g202336202358%_
                (lambda (_%g202337202354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202337202354%_))))
               (_%g202335202427%_
                (lambda (_%g202337202362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202337202362%_))
                      (let ((_%e202341202365%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202337202362%_))))
                        (let ((_%hd202342202369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202341202365%_)))
                              (_%tl202343202372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202341202365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202343202372%_))
                              (let ((_%e202344202375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202343202372%_))))
                                (let ((_%hd202345202379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202344202375%_)))
                                      (_%tl202346202382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202344202375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202346202382%_))
                                      (let ((_%e202347202385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202346202382%_))))
                                        (let ((_%hd202348202389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202347202385%_)))
                                              (_%tl202349202392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202347202385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202349202392%_))
                                              (let ((_%e202350202395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202349202392%_))))
                                                (let ((_%hd202351202399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202350202395%_)))
                                                      (_%tl202352202402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202350202395%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202352202402%_))
                                                      ((lambda (_%L202405%_
                                                                _%L202407%_
                                                                _%L202408%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202408%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202407%_ '()))
                                   (cons _%L202405%_ '())))))
               _%hd202351202399%_
               _%hd202348202389%_
               _%hd202345202379%_)
              (_%g202336202358%_ _%g202337202362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202336202358%_
                                               _%g202337202362%_))))
                                      (_%g202336202358%_ _%g202337202362%_))))
                              (_%g202336202358%_ _%g202337202362%_))))
                      (_%g202336202358%_ _%g202337202362%_)))))
          (_%g202335202427%_ _%$stx202332%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx202431%_)
        (let* ((_%g202435202457%_
                (lambda (_%g202436202453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202436202453%_))))
               (_%g202434202526%_
                (lambda (_%g202436202461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202436202461%_))
                      (let ((_%e202440202464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202436202461%_))))
                        (let ((_%hd202441202468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202440202464%_)))
                              (_%tl202442202471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202440202464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202442202471%_))
                              (let ((_%e202443202474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202442202471%_))))
                                (let ((_%hd202444202478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202443202474%_)))
                                      (_%tl202445202481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202443202474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202445202481%_))
                                      (let ((_%e202446202484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202445202481%_))))
                                        (let ((_%hd202447202488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202446202484%_)))
                                              (_%tl202448202491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202446202484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202448202491%_))
                                              (let ((_%e202449202494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202448202491%_))))
                                                (let ((_%hd202450202498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202449202494%_)))
                                                      (_%tl202451202501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202449202494%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202451202501%_))
                                                      ((lambda (_%L202504%_
                                                                _%L202506%_
                                                                _%L202507%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202507%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202506%_ '()))
                                   (cons _%L202504%_ '())))))
               _%hd202450202498%_
               _%hd202447202488%_
               _%hd202444202478%_)
              (_%g202435202457%_ _%g202436202461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202435202457%_
                                               _%g202436202461%_))))
                                      (_%g202435202457%_ _%g202436202461%_))))
                              (_%g202435202457%_ _%g202436202461%_))))
                      (_%g202435202457%_ _%g202436202461%_)))))
          (_%g202434202526%_ _%$stx202431%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202530%_)
        (let* ((_%g202534202548%_
                (lambda (_%g202535202544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202535202544%_))))
               (_%g202533202589%_
                (lambda (_%g202535202552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202535202552%_))
                      (let ((_%e202537202555%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202535202552%_))))
                        (let ((_%hd202538202559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202537202555%_)))
                              (_%tl202539202562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202537202555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202539202562%_))
                              (let ((_%e202540202565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202539202562%_))))
                                (let ((_%hd202541202569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202540202565%_)))
                                      (_%tl202542202572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202540202565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202542202572%_))
                                      ((lambda (_%L202575%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L202575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202541202569%_)
                                      (_%g202534202548%_ _%g202535202552%_))))
                              (_%g202534202548%_ _%g202535202552%_))))
                      (_%g202534202548%_ _%g202535202552%_)))))
          (_%g202533202589%_ _%$stx202530%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202593%_)
        (let* ((_%g202597202615%_
                (lambda (_%g202598202611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202598202611%_))))
               (_%g202596202670%_
                (lambda (_%g202598202619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202598202619%_))
                      (let ((_%e202601202622%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202598202619%_))))
                        (let ((_%hd202602202626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202601202622%_)))
                              (_%tl202603202629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202601202622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202603202629%_))
                              (let ((_%e202604202632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202603202629%_))))
                                (let ((_%hd202605202636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202604202632%_)))
                                      (_%tl202606202639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202604202632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202606202639%_))
                                      (let ((_%e202607202642%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202606202639%_))))
                                        (let ((_%hd202608202646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202607202642%_)))
                                              (_%tl202609202649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202607202642%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202609202649%_))
                                              ((lambda (_%L202652%_
                                                        _%L202654%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202654%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202652%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202608202646%_
                                               _%hd202605202636%_)
                                              (_%g202597202615%_
                                               _%g202598202619%_))))
                                      (_%g202597202615%_ _%g202598202619%_))))
                              (_%g202597202615%_ _%g202598202619%_))))
                      (_%g202597202615%_ _%g202598202619%_)))))
          (_%g202596202670%_ _%$stx202593%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202674%_)
        (let* ((_%__stx207016207017%_ _%$stx202674%_)
               (_%g202681202742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207016207017%_)))))
          (let ((_%__kont207019207020%_
                 (lambda (_%L202980%_ _%L202982%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202982%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202980%_ '()))
                                     '())))))
                (_%__kont207021207022%_
                 (lambda (_%L202919%_ _%L202921%_ _%L202922%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202922%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202921%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202919%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont207023207024%_
                 (lambda (_%L202843%_ _%L202845%_)
                   (cons _%L202845%_ (cons _%L202843%_ (cons '#f '())))))
                (_%__kont207025207026%_
                 (lambda (_%L202793%_ _%L202795%_ _%L202796%_)
                   (cons _%L202796%_
                         (cons _%L202795%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202793%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207016207017%_))
                (let ((_%e202685202950%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207016207017%_))))
                  (let ((_%tl202687202957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202685202950%_)))
                        (_%hd202686202954%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202685202950%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202687202957%_))
                        (let ((_%e202688202960%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202687202957%_))))
                          (let ((_%tl202690202967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202688202960%_)))
                                (_%hd202689202964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202688202960%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202690202967%_))
                                (let ((_%e202691202970%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202690202967%_))))
                                  (let ((_%tl202693202977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202691202970%_)))
                                        (_%hd202692202974%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202691202970%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202693202977%_))
                                        (_%__kont207019207020%_
                                         _%hd202692202974%_
                                         _%hd202689202964%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202693202977%_))
                                            (let ((_%e202706202895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202693202977%_))))
                                              (let ((_%tl202708202902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202706202895%_)))
                                                    (_%hd202707202899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202706202895%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202707202899%_))
                                                    (let ((_%e202709202905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202707202899%_))))
                                                      (if (equal? _%e202709202905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202708202902%_))
                      (let ((_%e202710202909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202708202902%_))))
                        (let ((_%tl202712202916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202710202909%_)))
                              (_%hd202711202913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202710202909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202712202916%_))
                              (_%__kont207021207022%_
                               _%hd202711202913%_
                               _%hd202692202974%_
                               _%hd202689202964%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202692202974%_))
                                  (let ((_%e202733202779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202692202974%_))))
                                    (declare (not safe))
                                    (_%g202681202742%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202681202742%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202692202974%_))
                          (let ((_%e202733202779%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202692202974%_))))
                            (if (equal? _%e202733202779%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202708202902%_))
                                    (_%__kont207025207026%_
                                     _%hd202707202899%_
                                     _%hd202689202964%_
                                     _%hd202686202954%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202681202742%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202681202742%_))))
                          (let () (declare (not safe)) (_%g202681202742%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202692202974%_))
                      (let ((_%e202733202779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202692202974%_))))
                        (if (equal? _%e202733202779%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202708202902%_))
                                (_%__kont207025207026%_
                                 _%hd202707202899%_
                                 _%hd202689202964%_
                                 _%hd202686202954%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202681202742%_)))
                            (let () (declare (not safe)) (_%g202681202742%_))))
                      (let () (declare (not safe)) (_%g202681202742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202692202974%_))
                                                        (let ((_%e202733202779%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202692202974%_))))
                  (if (equal? _%e202733202779%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202708202902%_))
                          (_%__kont207025207026%_
                           _%hd202707202899%_
                           _%hd202689202964%_
                           _%hd202686202954%_)
                          (let () (declare (not safe)) (_%g202681202742%_)))
                      (let () (declare (not safe)) (_%g202681202742%_))))
                (let () (declare (not safe)) (_%g202681202742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202692202974%_))
                                                (let ((_%e202733202779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202692202974%_))))
                                                  (declare (not safe))
                                                  (_%g202681202742%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202681202742%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202690202967%_))
                                    (_%__kont207023207024%_
                                     _%hd202689202964%_
                                     _%hd202686202954%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202681202742%_))))))
                        (let () (declare (not safe)) (_%g202681202742%_)))))
                (let () (declare (not safe)) (_%g202681202742%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx203001%_)
        (let* ((_%g203005203034%_
                (lambda (_%g203006203030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203006203030%_))))
               (_%g203004203143%_
                (lambda (_%g203006203038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203006203038%_))
                      (let ((_%e203008203041%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203006203038%_))))
                        (let ((_%hd203009203045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203008203041%_)))
                              (_%tl203010203048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203008203041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203010203048%_))
                              (let ((_g207646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203010203048%_
                                        '0))))
                                (begin
                                  (let ((_g207647_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207646_)
                                               (##vector-length _g207646_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207647_ 2)))
                                        (error "Context expects 2 values"
                                               _g207647_)))
                                  (let ((_%target203011203051%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207646_ 0)))
                                        (_%tl203013203054%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207646_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203013203054%_))
                                        (letrec ((_%loop203014203057%_
                                                  (lambda (_%hd203012203061%_
                                                           _%clause203018203064%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203012203061%_))
                                                        (let ((_%e203015203067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203012203061%_))))
                  (let ((_%lp-hd203016203071%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203015203067%_)))
                        (_%lp-tl203017203074%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203015203067%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd203016203071%_))
                        (let ((_g207648_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd203016203071%_
                                  '0))))
                          (begin
                            (let ((_g207649_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207648_)
                                         (##vector-length _g207648_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207649_ 2)))
                                  (error "Context expects 2 values"
                                         _g207649_)))
                            (let ((_%target203020203077%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207648_ 0)))
                                  (_%tl203022203080%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207648_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203022203080%_))
                                  (letrec ((_%loop203023203083%_
                                            (lambda (_%hd203021203087%_
                                                     _%clause203027203090%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203021203087%_))
                                                  (let ((_%e203024203093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd203021203087%_))))
                                                    (let ((_%lp-hd203025203097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203024203093%_)))
                                                          (_%lp-tl203026203100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203024203093%_))))
                                                      (_%loop203023203083%_
                                                       _%lp-tl203026203100%_
                                                       (cons _%lp-hd203025203097%_
                                                             _%clause203027203090%_))))
                                                  (let ((_%clause203028203103%_
                                                         (reverse _%clause203027203090%_)))
                                                    (_%loop203014203057%_
                                                     _%lp-tl203017203074%_
                                                     (cons _%clause203028203103%_
                                                           _%clause203018203064%_)))))))
                                    (_%loop203023203083%_
                                     _%target203020203077%_
                                     '()))
                                  (_%g203005203034%_ _%g203006203038%_)))))
                        (_%g203005203034%_ _%g203006203038%_))))
                (let ((_%clause203019203107%_
                       (reverse _%clause203018203064%_)))
                  ((lambda (_%L203111%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207650
                                              (lambda (_%g203126203131%_
                                                       _%g203127203134%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g203128203137%_ _%g203129203140%_)
                             (cons _%g203128203137%_ _%g203129203140%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207651 '() _%g203126203131%_)))
              _%g203127203134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207650
                                          '()
                                          _%L203111%_)))
                                 '())))
                   _%clause203019203107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203014203057%_
                                           _%target203011203051%_
                                           '()))
                                        (_%g203005203034%_
                                         _%g203006203038%_)))))
                              (_%g203005203034%_ _%g203006203038%_))))
                      (_%g203005203034%_ _%g203006203038%_)))))
          (_%g203004203143%_ _%$stx203001%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx203149%_)
        (let* ((_%g203153203171%_
                (lambda (_%g203154203167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203154203167%_))))
               (_%g203152203226%_
                (lambda (_%g203154203175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203154203175%_))
                      (let ((_%e203157203178%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203154203175%_))))
                        (let ((_%hd203158203182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203157203178%_)))
                              (_%tl203159203185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203157203178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203159203185%_))
                              (let ((_%e203160203188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203159203185%_))))
                                (let ((_%hd203161203192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203160203188%_)))
                                      (_%tl203162203195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203160203188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203162203195%_))
                                      (let ((_%e203163203198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203162203195%_))))
                                        (let ((_%hd203164203202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203163203198%_)))
                                              (_%tl203165203205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203163203198%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203165203205%_))
                                              ((lambda (_%L203208%_
                                                        _%L203210%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203210%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203208%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203164203202%_
                                               _%hd203161203192%_)
                                              (_%g203153203171%_
                                               _%g203154203175%_))))
                                      (_%g203153203171%_ _%g203154203175%_))))
                              (_%g203153203171%_ _%g203154203175%_))))
                      (_%g203153203171%_ _%g203154203175%_)))))
          (_%g203152203226%_ _%$stx203149%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx203230%_)
        (let* ((_%g203234203252%_
                (lambda (_%g203235203248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203235203248%_))))
               (_%g203233203307%_
                (lambda (_%g203235203256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203235203256%_))
                      (let ((_%e203238203259%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203235203256%_))))
                        (let ((_%hd203239203263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203238203259%_)))
                              (_%tl203240203266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203238203259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203240203266%_))
                              (let ((_%e203241203269%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203240203266%_))))
                                (let ((_%hd203242203273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203241203269%_)))
                                      (_%tl203243203276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203241203269%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203243203276%_))
                                      (let ((_%e203244203279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203243203276%_))))
                                        (let ((_%hd203245203283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203244203279%_)))
                                              (_%tl203246203286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203244203279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203246203286%_))
                                              ((lambda (_%L203289%_
                                                        _%L203291%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203291%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203289%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203245203283%_
                                               _%hd203242203273%_)
                                              (_%g203234203252%_
                                               _%g203235203256%_))))
                                      (_%g203234203252%_ _%g203235203256%_))))
                              (_%g203234203252%_ _%g203235203256%_))))
                      (_%g203234203252%_ _%g203235203256%_)))))
          (_%g203233203307%_ _%$stx203230%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx203311%_)
        (let* ((_%g203315203344%_
                (lambda (_%g203316203340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203316203340%_))))
               (_%g203314203444%_
                (lambda (_%g203316203348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203316203348%_))
                      (let ((_%e203319203351%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203316203348%_))))
                        (let ((_%hd203320203355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203319203351%_)))
                              (_%tl203321203358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203319203351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203321203358%_))
                              (let ((_g207652_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203321203358%_
                                        '0))))
                                (begin
                                  (let ((_g207653_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207652_)
                                               (##vector-length _g207652_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207653_ 2)))
                                        (error "Context expects 2 values"
                                               _g207653_)))
                                  (let ((_%target203322203361%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207652_ 0)))
                                        (_%tl203324203364%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207652_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203324203364%_))
                                        (letrec ((_%loop203325203367%_
                                                  (lambda (_%hd203323203371%_
                                                           _%rule203329203374%_
                                                           _%proc203330203376%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203323203371%_))
                                                        (let ((_%e203326203379%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203323203371%_))))
                  (let ((_%lp-hd203327203383%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203326203379%_)))
                        (_%lp-tl203328203386%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203326203379%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203327203383%_))
                        (let ((_%e203333203389%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203327203383%_))))
                          (let ((_%hd203334203393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203333203389%_)))
                                (_%tl203335203396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203333203389%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203335203396%_))
                                (let ((_%e203336203399%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203335203396%_))))
                                  (let ((_%hd203337203403%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203336203399%_)))
                                        (_%tl203338203406%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203336203399%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203338203406%_))
                                        (_%loop203325203367%_
                                         _%lp-tl203328203386%_
                                         (cons _%hd203337203403%_
                                               _%rule203329203374%_)
                                         (cons _%hd203334203393%_
                                               _%proc203330203376%_))
                                        (_%g203315203344%_
                                         _%g203316203348%_))))
                                (_%g203315203344%_ _%g203316203348%_))))
                        (_%g203315203344%_ _%g203316203348%_))))
                (let ((_%rule203331203409%_ (reverse _%rule203329203374%_))
                      (_%proc203332203412%_ (reverse _%proc203330203376%_)))
                  ((lambda (_%L203415%_ _%L203417%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203415%_
                                _%L203417%_))
                             (let ((__tmp207654
                                    (lambda (_%g203432203436%_
                                             _%g203433203439%_
                                             _%g203434203441%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g203433203439%_
                                                        (cons _%g203432203436%_
                                                              '())))
                                            _%g203434203441%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207654
                                '()
                                _%L203415%_
                                _%L203417%_)))))
                   _%rule203331203409%_
                   _%proc203332203412%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203325203367%_
                                           _%target203322203361%_
                                           '()
                                           '()))
                                        (_%g203315203344%_
                                         _%g203316203348%_)))))
                              (_%g203315203344%_ _%g203316203348%_))))
                      (_%g203315203344%_ _%g203316203348%_)))))
          (_%g203314203444%_ _%$stx203311%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx203449%_)
        (let* ((_%g203453203471%_
                (lambda (_%g203454203467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203454203467%_))))
               (_%g203452203526%_
                (lambda (_%g203454203475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203454203475%_))
                      (let ((_%e203457203478%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203454203475%_))))
                        (let ((_%hd203458203482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203457203478%_)))
                              (_%tl203459203485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203457203478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203459203485%_))
                              (let ((_%e203460203488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203459203485%_))))
                                (let ((_%hd203461203492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203460203488%_)))
                                      (_%tl203462203495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203460203488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203462203495%_))
                                      (let ((_%e203463203498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203462203495%_))))
                                        (let ((_%hd203464203502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203463203498%_)))
                                              (_%tl203465203505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203463203498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203465203505%_))
                                              ((lambda (_%L203508%_
                                                        _%L203510%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L203510%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L203508%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203510%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203464203502%_
                                               _%hd203461203492%_)
                                              (_%g203453203471%_
                                               _%g203454203475%_))))
                                      (_%g203453203471%_ _%g203454203475%_))))
                              (_%g203453203471%_ _%g203454203475%_))))
                      (_%g203453203471%_ _%g203454203475%_)))))
          (_%g203452203526%_ _%$stx203449%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203530%_)
        (let* ((_%__stx207134207135%_ _%$stx203530%_)
               (_%g203535203560%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207134207135%_)))))
          (let ((_%__kont207137207138%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207139207140%_
                 (lambda (_%L203607%_ _%L203609%_ _%L203610%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203610%_ (cons _%L203609%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203607%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207134207135%_))
                (let ((_%e203537203636%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207134207135%_))))
                  (let ((_%tl203539203643%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203537203636%_)))
                        (_%hd203538203640%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203537203636%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203539203643%_))
                        (_%__kont207137207138%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203539203643%_))
                            (let ((_%e203546203577%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203539203643%_))))
                              (let ((_%tl203548203584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203546203577%_)))
                                    (_%hd203547203581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203546203577%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203547203581%_))
                                    (let ((_%e203549203587%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203547203581%_))))
                                      (let ((_%tl203551203594%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203549203587%_)))
                                            (_%hd203550203591%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203549203587%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203551203594%_))
                                            (let ((_%e203552203597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203551203594%_))))
                                              (let ((_%tl203554203604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203552203597%_)))
                                                    (_%hd203553203601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203552203597%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203554203604%_))
                                                    (_%__kont207139207140%_
                                                     _%tl203548203584%_
                                                     _%hd203553203601%_
                                                     _%hd203550203591%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203535203560%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203535203560%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203535203560%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203535203560%_))))))
                (let () (declare (not safe)) (_%g203535203560%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203654%_)
        (let* ((_%__stx207178207179%_ _%$stx203654%_)
               (_%g203659203690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207178207179%_)))))
          (let ((_%__kont207181207182%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207183207184%_
                 (lambda (_%L203757%_ _%L203759%_ _%L203760%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203760%_
                                           (let ((__tmp207655
                                                  (lambda (_%g203780203783%_
                                                           _%g203781203786%_)
                                                    (cons _%g203780203783%_
                                                          _%g203781203786%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207655
                                              '()
                                              _%L203759%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203757%_)
                                     '()))))))
            (let ((_%__match207221207222%_
                   (lambda (_%e203667203697%_
                            _%hd203668203701%_
                            _%tl203669203704%_
                            _%e203670203707%_
                            _%hd203671203711%_
                            _%tl203672203714%_
                            _%e203673203717%_
                            _%hd203674203721%_
                            _%tl203675203724%_
                            _%__splice207185207186%_
                            _%target203676203727%_
                            _%tl203678203730%_)
                     (letrec ((_%loop203679203733%_
                               (lambda (_%hd203677203737%_ _%sig203683203740%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203677203737%_))
                                     (let ((_%e203680203743%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203677203737%_))))
                                       (let ((_%lp-tl203682203750%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203680203743%_)))
                                             (_%lp-hd203681203747%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203680203743%_))))
                                         (_%loop203679203733%_
                                          _%lp-tl203682203750%_
                                          (cons _%lp-hd203681203747%_
                                                _%sig203683203740%_))))
                                     (let ((_%sig203684203753%_
                                            (reverse _%sig203683203740%_)))
                                       (_%__kont207183207184%_
                                        _%tl203672203714%_
                                        _%sig203684203753%_
                                        _%hd203674203721%_))))))
                       (_%loop203679203733%_ _%target203676203727%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207178207179%_))
                  (let ((_%e203661203796%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207178207179%_))))
                    (let ((_%tl203663203803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203661203796%_)))
                          (_%hd203662203800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203661203796%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203663203803%_))
                          (_%__kont207181207182%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203663203803%_))
                              (let ((_%e203670203707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203663203803%_))))
                                (let ((_%tl203672203714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203670203707%_)))
                                      (_%hd203671203711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203670203707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203671203711%_))
                                      (let ((_%e203673203717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203671203711%_))))
                                        (let ((_%tl203675203724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203673203717%_)))
                                              (_%hd203674203721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203673203717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203675203724%_))
                                              (let ((_%__splice207185207186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203675203724%_
                                                        '0))))
                                                (let ((_%tl203678203730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207185207186%_
                                                          '1)))
                                                      (_%target203676203727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207185207186%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203678203730%_))
                                                      (_%__match207221207222%_
                                                       _%e203661203796%_
                                                       _%hd203662203800%_
                                                       _%tl203663203803%_
                                                       _%e203670203707%_
                                                       _%hd203671203711%_
                                                       _%tl203672203714%_
                                                       _%e203673203717%_
                                                       _%hd203674203721%_
                                                       _%tl203675203724%_
                                                       _%__splice207185207186%_
                                                       _%target203676203727%_
                                                       _%tl203678203730%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203659203690%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203659203690%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203659203690%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203659203690%_))))))
                  (let () (declare (not safe)) (_%g203659203690%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203815%_)
        (let* ((_%__stx207224207225%_ _%$stx203815%_)
               (_%g203820203867%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207224207225%_)))))
          (let ((_%__kont207227207228%_
                 (lambda (_%L204029%_ _%L204031%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L204031%_
                               (let ((__tmp207656
                                      (lambda (_%g204051204054%_
                                               _%g204052204057%_)
                                        (cons _%g204051204054%_
                                              _%g204052204057%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207656 '() _%L204029%_))))))
                (_%__kont207231207232%_
                 (lambda (_%L203924%_ _%L203926%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203926%_
                               (let ((__tmp207657
                                      (lambda (_%g203943203946%_
                                               _%g203944203949%_)
                                        (cons _%g203943203946%_
                                              _%g203944203949%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207657 '() _%L203924%_)))))))
            (let* ((_%__match207291207292%_
                    (lambda (_%e203847203874%_
                             _%hd203848203878%_
                             _%tl203849203881%_
                             _%e203850203884%_
                             _%hd203851203888%_
                             _%tl203852203891%_
                             _%__splice207233207234%_
                             _%target203853203894%_
                             _%tl203855203897%_)
                      (letrec ((_%loop203856203900%_
                                (lambda (_%hd203854203904%_
                                         _%sig203860203907%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203854203904%_))
                                      (let ((_%e203857203910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203854203904%_))))
                                        (let ((_%lp-tl203859203917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203857203910%_)))
                                              (_%lp-hd203858203914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203857203910%_))))
                                          (_%loop203856203900%_
                                           _%lp-tl203859203917%_
                                           (cons _%lp-hd203858203914%_
                                                 _%sig203860203907%_))))
                                      (let ((_%sig203861203920%_
                                             (reverse _%sig203860203907%_)))
                                        (_%__kont207231207232%_
                                         _%sig203861203920%_
                                         _%hd203851203888%_))))))
                        (_%loop203856203900%_ _%target203853203894%_ '()))))
                   (_%__match207283207284%_
                    (lambda (_%e203847203874%_
                             _%hd203848203878%_
                             _%tl203849203881%_
                             _%e203850203884%_
                             _%hd203851203888%_
                             _%tl203852203891%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203852203891%_))
                          (let ((_%__splice207233207234%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203852203891%_
                                    '0))))
                            (let ((_%tl203855203897%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207233207234%_
                                      '1)))
                                  (_%target203853203894%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207233207234%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203855203897%_))
                                  (_%__match207291207292%_
                                   _%e203847203874%_
                                   _%hd203848203878%_
                                   _%tl203849203881%_
                                   _%e203850203884%_
                                   _%hd203851203888%_
                                   _%tl203852203891%_
                                   _%__splice207233207234%_
                                   _%target203853203894%_
                                   _%tl203855203897%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203820203867%_)))))
                          (let () (declare (not safe)) (_%g203820203867%_)))))
                   (_%__match207271207272%_
                    (lambda (_%e203824203959%_
                             _%hd203825203963%_
                             _%tl203826203966%_
                             _%e203827203969%_
                             _%hd203828203973%_
                             _%tl203829203976%_
                             _%e203830203979%_
                             _%hd203831203983%_
                             _%tl203832203986%_
                             _%e203833203989%_
                             _%hd203834203993%_
                             _%tl203835203996%_
                             _%__splice207229207230%_
                             _%target203836203999%_
                             _%tl203838204002%_)
                      (letrec ((_%loop203839204005%_
                                (lambda (_%hd203837204009%_
                                         _%sig203843204012%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203837204009%_))
                                      (let ((_%e203840204015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203837204009%_))))
                                        (let ((_%lp-tl203842204022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203840204015%_)))
                                              (_%lp-hd203841204019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203840204015%_))))
                                          (_%loop203839204005%_
                                           _%lp-tl203842204022%_
                                           (cons _%lp-hd203841204019%_
                                                 _%sig203843204012%_))))
                                      (let ((_%sig203844204025%_
                                             (reverse _%sig203843204012%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203832203986%_))
                                            (_%__kont207227207228%_
                                             _%sig203844204025%_
                                             _%hd203828203973%_)
                                            (_%__match207283207284%_
                                             _%e203824203959%_
                                             _%hd203825203963%_
                                             _%tl203826203966%_
                                             _%e203827203969%_
                                             _%hd203828203973%_
                                             _%tl203829203976%_)))))))
                        (_%loop203839204005%_ _%target203836203999%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207224207225%_))
                  (let ((_%e203824203959%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207224207225%_))))
                    (let ((_%tl203826203966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203824203959%_)))
                          (_%hd203825203963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203824203959%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203826203966%_))
                          (let ((_%e203827203969%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203826203966%_))))
                            (let ((_%tl203829203976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203827203969%_)))
                                  (_%hd203828203973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203827203969%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203829203976%_))
                                  (let ((_%e203830203979%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203829203976%_))))
                                    (let ((_%tl203832203986%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203830203979%_)))
                                          (_%hd203831203983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203830203979%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203831203983%_))
                                          (let ((_%e203833203989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203831203983%_))))
                                            (let ((_%tl203835203996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203833203989%_)))
                                                  (_%hd203834203993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203833203989%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203834203993%_))
                                                  (if (let ((__tmp207658
                                                             |gxc[1]#_g207659_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207658
                                                         _%hd203834203993%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203835203996%_))
                                                          (let ((_%__splice207229207230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203835203996%_ '0))))
                    (let ((_%tl203838204002%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207229207230%_ '1)))
                          (_%target203836203999%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207229207230%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203838204002%_))
                          (_%__match207271207272%_
                           _%e203824203959%_
                           _%hd203825203963%_
                           _%tl203826203966%_
                           _%e203827203969%_
                           _%hd203828203973%_
                           _%tl203829203976%_
                           _%e203830203979%_
                           _%hd203831203983%_
                           _%tl203832203986%_
                           _%e203833203989%_
                           _%hd203834203993%_
                           _%tl203835203996%_
                           _%__splice207229207230%_
                           _%target203836203999%_
                           _%tl203838204002%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203829203976%_))
                              (let ((_%__splice207233207234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203829203976%_
                                        '0))))
                                (let ((_%tl203855203897%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207233207234%_
                                          '1)))
                                      (_%target203853203894%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207233207234%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203855203897%_))
                                      (_%__match207291207292%_
                                       _%e203824203959%_
                                       _%hd203825203963%_
                                       _%tl203826203966%_
                                       _%e203827203969%_
                                       _%hd203828203973%_
                                       _%tl203829203976%_
                                       _%__splice207233207234%_
                                       _%target203853203894%_
                                       _%tl203855203897%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203820203867%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203820203867%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203829203976%_))
                      (let ((_%__splice207233207234%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203829203976%_
                                '0))))
                        (let ((_%tl203855203897%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207233207234%_ '1)))
                              (_%target203853203894%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207233207234%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203855203897%_))
                              (_%__match207291207292%_
                               _%e203824203959%_
                               _%hd203825203963%_
                               _%tl203826203966%_
                               _%e203827203969%_
                               _%hd203828203973%_
                               _%tl203829203976%_
                               _%__splice207233207234%_
                               _%target203853203894%_
                               _%tl203855203897%_)
                              (let ()
                                (declare (not safe))
                                (_%g203820203867%_)))))
                      (let () (declare (not safe)) (_%g203820203867%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203829203976%_))
                  (let ((_%__splice207233207234%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203829203976%_ '0))))
                    (let ((_%tl203855203897%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207233207234%_ '1)))
                          (_%target203853203894%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207233207234%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203855203897%_))
                          (_%__match207291207292%_
                           _%e203824203959%_
                           _%hd203825203963%_
                           _%tl203826203966%_
                           _%e203827203969%_
                           _%hd203828203973%_
                           _%tl203829203976%_
                           _%__splice207233207234%_
                           _%target203853203894%_
                           _%tl203855203897%_)
                          (let () (declare (not safe)) (_%g203820203867%_)))))
                  (let () (declare (not safe)) (_%g203820203867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203829203976%_))
                                                      (let ((_%__splice207233207234%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203829203976%_ '0))))
                (let ((_%tl203855203897%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207233207234%_ '1)))
                      (_%target203853203894%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207233207234%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203855203897%_))
                      (_%__match207291207292%_
                       _%e203824203959%_
                       _%hd203825203963%_
                       _%tl203826203966%_
                       _%e203827203969%_
                       _%hd203828203973%_
                       _%tl203829203976%_
                       _%__splice207233207234%_
                       _%target203853203894%_
                       _%tl203855203897%_)
                      (let () (declare (not safe)) (_%g203820203867%_)))))
              (let () (declare (not safe)) (_%g203820203867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203829203976%_))
                                              (let ((_%__splice207233207234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203829203976%_
                                                        '0))))
                                                (let ((_%tl203855203897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207233207234%_
                                                          '1)))
                                                      (_%target203853203894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207233207234%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203855203897%_))
                                                      (_%__match207291207292%_
                                                       _%e203824203959%_
                                                       _%hd203825203963%_
                                                       _%tl203826203966%_
                                                       _%e203827203969%_
                                                       _%hd203828203973%_
                                                       _%tl203829203976%_
                                                       _%__splice207233207234%_
                                                       _%target203853203894%_
                                                       _%tl203855203897%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203820203867%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203820203867%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203829203976%_))
                                      (let ((_%__splice207233207234%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203829203976%_
                                                '0))))
                                        (let ((_%tl203855203897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207233207234%_
                                                  '1)))
                                              (_%target203853203894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207233207234%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203855203897%_))
                                              (_%__match207291207292%_
                                               _%e203824203959%_
                                               _%hd203825203963%_
                                               _%tl203826203966%_
                                               _%e203827203969%_
                                               _%hd203828203973%_
                                               _%tl203829203976%_
                                               _%__splice207233207234%_
                                               _%target203853203894%_
                                               _%tl203855203897%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203820203867%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203820203867%_))))))
                          (let () (declare (not safe)) (_%g203820203867%_)))))
                  (let () (declare (not safe)) (_%g203820203867%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx205214%_ _%id205216%_)
        (let ((_%proc205220%_
               (let ((__tmp207660
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205216%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207660))))
          (if (procedure? _%proc205220%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx205214%_
                 _%id205216%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx205205%_ _%id205207%_)
        (let ((_%klass205211%_
               (let ((__tmp207661
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205207%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207661))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass205211%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx205205%_
                 _%id205207%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx204455%_ _%proc204457%_ _%sig204458%_)
        (letrec ((_%signature-arity204460%_
                  (lambda (_%args205137%_)
                    (let _%loop205140%_ ((_%rest205143%_ _%args205137%_)
                                         (_%count205145%_ '0))
                      (let* ((_%rest205146205157%_ _%rest205143%_)
                             (_%E205150205163%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest205146205157%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K205153205194%_
                               (lambda (_%rest205191%_)
                                 (_%loop205140%_
                                  _%rest205191%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count205145%_ '1)))))
                              (_%K205152205183%_ (lambda () _%count205145%_))
                              (_%K205151205171%_
                               (lambda () (cons _%count205145%_ '()))))
                          (let ((_%try-match205148205187%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest205146205157%_))
                                       (_%K205152205183%_)
                                       (_%K205151205171%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest205146205157%_))
                                (let* ((_%tl205155205198%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest205146205157%_)))
                                       (_%rest205202%_ _%tl205155205198%_))
                                  (_%K205153205194%_ _%rest205202%_))
                                (_%try-match205148205187%_))))))))
                 (_%make-signature204462%_
                  (lambda (_%args205019%_
                           _%return205021%_
                           _%effect205022%_
                           _%unchecked205023%_)
                    (let ((__tmp207662
                           (lambda (_%g205024205026%_)
                             (|gxc[1]#verify-class!|
                              _%ctx204455%_
                              _%g205024205026%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207662 _%args205019%_))
                    (|gxc[1]#verify-class!| _%ctx204455%_ _%return205021%_)
                    (if _%unchecked205023%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx204455%_
                         _%unchecked205023%_)
                        '#!void)
                    (let ((_%arity205030%_
                           (_%signature-arity204460%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args205019%_)))))
                      (if _%effect205022%_
                          (let ((_%effect205033%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect205022%_))))
                            (if (and (list? _%effect205033%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect205033%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx204455%_
                                   _%proc204457%_
                                   _%effect205033%_))))
                          '#!void)
                      (cons _%arity205030%_
                            (cons (let* ((_%g205036205059%_
                                          (lambda (_%g205037205055%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g205037205055%_))))
                                         (_%g205035205133%_
                                          (lambda (_%g205037205063%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g205037205063%_))
                                                (let ((_%e205042205066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g205037205063%_))))
                                                  (let ((_%hd205043205070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205042205066%_)))
                                                        (_%tl205044205073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205042205066%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl205044205073%_))
                                                        (let ((_%e205045205076%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl205044205073%_))))
                  (let ((_%hd205046205080%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205045205076%_)))
                        (_%tl205047205083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205045205076%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205047205083%_))
                        (let ((_%e205048205086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205047205083%_))))
                          (let ((_%hd205049205090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205048205086%_)))
                                (_%tl205050205093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205048205086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205050205093%_))
                                (let ((_%e205051205096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205050205093%_))))
                                  (let ((_%hd205052205100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205051205096%_)))
                                        (_%tl205053205103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205051205096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205053205103%_))
                                        ((lambda (_%L205106%_
                                                  _%L205108%_
                                                  _%L205109%_
                                                  _%L205110%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205110%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L205109%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205108%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205106%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd205052205100%_
                                         _%hd205049205090%_
                                         _%hd205046205080%_
                                         _%hd205043205070%_)
                                        (_%g205036205059%_
                                         _%g205037205063%_))))
                                (_%g205036205059%_ _%g205037205063%_))))
                        (_%g205036205059%_ _%g205037205063%_))))
                (_%g205036205059%_ _%g205037205063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205036205059%_
                                                 _%g205037205063%_)))))
                                    (_%g205035205133%_
                                     (list _%args205019%_
                                           _%return205021%_
                                           _%effect205022%_
                                           _%unchecked205023%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx204455%_ _%proc204457%_)
          (let* ((_%__stx207302207303%_ _%sig204458%_)
                 (_%g204469204572%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207302207303%_)))))
            (let ((_%__kont207305207306%_
                   (lambda (_%L205000%_ _%L205002%_)
                     (_%make-signature204462%_
                      _%L205002%_
                      _%L205000%_
                      '#f
                      '#f)))
                  (_%__kont207307207308%_
                   (lambda (_%L204951%_ _%L204953%_ _%L204954%_)
                     (_%make-signature204462%_
                      _%L204954%_
                      _%L204953%_
                      _%L204951%_
                      '#f)))
                  (_%__kont207309207310%_
                   (lambda (_%L204875%_ _%L204877%_ _%L204878%_)
                     (_%make-signature204462%_
                      _%L204878%_
                      _%L204877%_
                      _%L204875%_
                      (let ((__tmp207663
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204457%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207663)))))
                  (_%__kont207311207312%_
                   (lambda (_%L204781%_ _%L204783%_ _%L204784%_ _%L204785%_)
                     (_%make-signature204462%_
                      _%L204785%_
                      _%L204784%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204781%_)))))
                  (_%__kont207313207314%_
                   (lambda (_%L204688%_ _%L204690%_)
                     (_%make-signature204462%_
                      _%L204690%_
                      _%L204688%_
                      '#f
                      (let ((__tmp207664
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204457%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207664)))))
                  (_%__kont207315207316%_
                   (lambda (_%L204623%_ _%L204625%_ _%L204626%_)
                     (_%make-signature204462%_
                      _%L204626%_
                      _%L204625%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204623%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207302207303%_))
                  (let ((_%e204473204980%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207302207303%_))))
                    (let ((_%tl204475204987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204473204980%_)))
                          (_%hd204474204984%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204473204980%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204475204987%_))
                          (let ((_%e204476204990%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204475204987%_))))
                            (let ((_%tl204478204997%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204476204990%_)))
                                  (_%hd204477204994%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204476204990%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204478204997%_))
                                  (_%__kont207305207306%_
                                   _%hd204477204994%_
                                   _%hd204474204984%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204478204997%_))
                                      (let ((_%e204488204927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204478204997%_))))
                                        (let ((_%tl204490204934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204488204927%_)))
                                              (_%hd204489204931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204488204927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204489204931%_))
                                              (let ((_%e204491204937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204489204931%_))))
                                                (if (equal? _%e204491204937%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204490204934%_))
                                                        (let ((_%e204492204941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204490204934%_))))
                  (let ((_%tl204494204948%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204492204941%_)))
                        (_%hd204493204945%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204492204941%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204494204948%_))
                        (_%__kont207307207308%_
                         _%hd204493204945%_
                         _%hd204477204994%_
                         _%hd204474204984%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204494204948%_))
                            (let ((_%e204511204861%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204494204948%_))))
                              (let ((_%tl204513204868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204511204861%_)))
                                    (_%hd204512204865%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204511204861%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204512204865%_))
                                    (let ((_%e204514204871%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204512204865%_))))
                                      (if (equal? _%e204514204871%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204513204868%_))
                                              (_%__kont207309207310%_
                                               _%hd204493204945%_
                                               _%hd204477204994%_
                                               _%hd204474204984%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204513204868%_))
                                                  (let ((_%e204536204771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204513204868%_))))
                                                    (let ((_%tl204538204778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204536204771%_)))
                                                          (_%hd204537204775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204536204771%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204538204778%_))
                                                          (_%__kont207311207312%_
                                                           _%hd204537204775%_
                                                           _%hd204493204945%_
                                                           _%hd204477204994%_
                                                           _%hd204474204984%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204469204572%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204469204572%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204469204572%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204469204572%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204469204572%_))))))
                (let () (declare (not safe)) (_%g204469204572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204491204937%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204490204934%_))
                                                            (_%__kont207313207314%_
                                                             _%hd204477204994%_
                                                             _%hd204474204984%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204490204934%_))
                        (let ((_%e204564204613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204490204934%_))))
                          (let ((_%tl204566204620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204564204613%_)))
                                (_%hd204565204617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204564204613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204566204620%_))
                                (_%__kont207315207316%_
                                 _%hd204565204617%_
                                 _%hd204477204994%_
                                 _%hd204474204984%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204469204572%_)))))
                        (let () (declare (not safe)) (_%g204469204572%_))))
                (let () (declare (not safe)) (_%g204469204572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204469204572%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204469204572%_))))))
                          (let () (declare (not safe)) (_%g204469204572%_)))))
                  (let () (declare (not safe)) (_%g204469204572%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig204066%_)
        (let* ((_%g204069204149%_
                (lambda (_%g204070204145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204070204145%_))))
               (_%g204068204451%_
                (lambda (_%g204070204153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204070204153%_))
                      (let ((_%e204076204156%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204070204153%_))))
                        (let ((_%hd204077204160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204076204156%_)))
                              (_%tl204078204163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204076204156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204078204163%_))
                              (let ((_%e204079204166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204078204163%_))))
                                (let ((_%hd204080204170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204079204166%_)))
                                      (_%tl204081204173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204079204166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd204080204170%_))
                                      (let ((_%e204082204176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204080204170%_))))
                                        (if (equal? _%e204082204176%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204081204173%_))
                                                (let ((_%e204083204180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204081204173%_))))
                                                  (let ((_%hd204084204184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204083204180%_)))
                                                        (_%tl204085204187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204083204180%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204084204184%_))
                                                        (let ((_%e204086204190%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204084204184%_))))
                  (let ((_%hd204087204194%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204086204190%_)))
                        (_%tl204088204197%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204086204190%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd204087204194%_))
                        (if (let ((__tmp207665 |gxc[1]#_g207666_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207665
                               _%hd204087204194%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204088204197%_))
                                (let ((_%e204089204200%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204088204197%_))))
                                  (let ((_%hd204090204204%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204089204200%_)))
                                        (_%tl204091204207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204089204200%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204091204207%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204085204187%_))
                                            (let ((_%e204092204210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204085204187%_))))
                                              (let ((_%hd204093204214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204092204210%_)))
                                                    (_%tl204094204217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204092204210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204093204214%_))
                                                    (let ((_%e204095204220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204093204214%_))))
                                                      (if (equal? _%e204095204220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204094204217%_))
                      (let ((_%e204096204224%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204094204217%_))))
                        (let ((_%hd204097204228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204096204224%_)))
                              (_%tl204098204231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204096204224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204097204228%_))
                              (let ((_%e204099204234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd204097204228%_))))
                                (let ((_%hd204100204238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204099204234%_)))
                                      (_%tl204101204241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204099204234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204100204238%_))
                                      (if (let ((__tmp207667
                                                 |gxc[1]#_g207668_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207667
                                             _%hd204100204238%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204101204241%_))
                                              (let ((_%e204102204244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204101204241%_))))
                                                (let ((_%hd204103204248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204102204244%_)))
                                                      (_%tl204104204251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204102204244%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204104204251%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204098204231%_))
                                                          (let ((_%e204105204254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl204098204231%_))))
                    (let ((_%hd204106204258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204105204254%_)))
                          (_%tl204107204261%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204105204254%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204106204258%_))
                          (let ((_%e204108204264%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204106204258%_))))
                            (if (equal? _%e204108204264%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204107204261%_))
                                    (let ((_%e204109204268%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl204107204261%_))))
                                      (let ((_%hd204110204272%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204109204268%_)))
                                            (_%tl204111204275%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204109204268%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204110204272%_))
                                            (let ((_%e204112204278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd204110204272%_))))
                                              (let ((_%hd204113204282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204112204278%_)))
                                                    (_%tl204114204285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204112204278%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204113204282%_))
                                                    (if (let ((__tmp207669
                                                               |gxc[1]#_g207670_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207669
                                                           _%hd204113204282%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204114204285%_))
                                                            (let ((_%e204115204288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl204114204285%_))))
                      (let ((_%hd204116204292%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204115204288%_)))
                            (_%tl204117204295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204115204288%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204117204295%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204111204275%_))
                                (let ((_%e204118204298%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204111204275%_))))
                                  (let ((_%hd204119204302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204118204298%_)))
                                        (_%tl204120204305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204118204298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd204119204302%_))
                                        (let ((_%e204121204308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd204119204302%_))))
                                          (if (equal? _%e204121204308%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204120204305%_))
                                                  (let ((_%e204122204312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204120204305%_))))
                                                    (let ((_%hd204123204316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204122204312%_)))
                                                          (_%tl204124204319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204122204312%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204123204316%_))
                                                          (let ((_%e204125204322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd204123204316%_))))
                    (let ((_%hd204126204326%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204125204322%_)))
                          (_%tl204127204329%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204125204322%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204126204326%_))
                          (if (let ((__tmp207671 |gxc[1]#_g207672_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207671
                                 _%hd204126204326%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204127204329%_))
                                  (let ((_%e204128204332%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204127204329%_))))
                                    (let ((_%hd204129204336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204128204332%_)))
                                          (_%tl204130204339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204128204332%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204130204339%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204124204319%_))
                                              (let ((_%e204131204342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204124204319%_))))
                                                (let ((_%hd204132204346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204131204342%_)))
                                                      (_%tl204133204349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204131204342%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd204132204346%_))
                                                      (let ((_%e204134204352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd204132204346%_))))
                (if (equal? _%e204134204352%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204133204349%_))
                        (let ((_%e204135204356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204133204349%_))))
                          (let ((_%hd204136204360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204135204356%_)))
                                (_%tl204137204363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204135204356%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204136204360%_))
                                (let ((_%e204138204366%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd204136204360%_))))
                                  (let ((_%hd204139204370%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204138204366%_)))
                                        (_%tl204140204373%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204138204366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd204139204370%_))
                                        (if (let ((__tmp207673
                                                   |gxc[1]#_g207674_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207673
                                               _%hd204139204370%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204140204373%_))
                                                (let ((_%e204141204376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204140204373%_))))
                                                  (let ((_%hd204142204380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204141204376%_)))
                                                        (_%tl204143204383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204141204376%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204143204383%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204137204363%_))
                                                            ((lambda (_%L204386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L204388%_
                              _%L204389%_
                              _%L204390%_
                              _%L204391%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L204388%_))
                           (cons _%L204388%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L204390%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204386%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd204142204380%_
                     _%hd204129204336%_
                     _%hd204116204292%_
                     _%hd204103204248%_
                     _%hd204090204204%_)
                    (_%g204069204149%_ _%g204070204153%_))
                (_%g204069204149%_ _%g204070204153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204069204149%_
                                                 _%g204070204153%_))
                                            (_%g204069204149%_
                                             _%g204070204153%_))
                                        (_%g204069204149%_
                                         _%g204070204153%_))))
                                (_%g204069204149%_ _%g204070204153%_))))
                        (_%g204069204149%_ _%g204070204153%_))
                    (_%g204069204149%_ _%g204070204153%_)))
              (_%g204069204149%_ _%g204070204153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204069204149%_
                                               _%g204070204153%_))
                                          (_%g204069204149%_
                                           _%g204070204153%_))))
                                  (_%g204069204149%_ _%g204070204153%_))
                              (_%g204069204149%_ _%g204070204153%_))
                          (_%g204069204149%_ _%g204070204153%_))))
                  (_%g204069204149%_ _%g204070204153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g204069204149%_
                                                   _%g204070204153%_))
                                              (_%g204069204149%_
                                               _%g204070204153%_)))
                                        (_%g204069204149%_
                                         _%g204070204153%_))))
                                (_%g204069204149%_ _%g204070204153%_))
                            (_%g204069204149%_ _%g204070204153%_))))
                    (_%g204069204149%_ _%g204070204153%_))
                (_%g204069204149%_ _%g204070204153%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204069204149%_
                                                     _%g204070204153%_))))
                                            (_%g204069204149%_
                                             _%g204070204153%_))))
                                    (_%g204069204149%_ _%g204070204153%_))
                                (_%g204069204149%_ _%g204070204153%_)))
                          (_%g204069204149%_ _%g204070204153%_))))
                  (_%g204069204149%_ _%g204070204153%_))
              (_%g204069204149%_ _%g204070204153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204069204149%_
                                               _%g204070204153%_))
                                          (_%g204069204149%_
                                           _%g204070204153%_))
                                      (_%g204069204149%_ _%g204070204153%_))))
                              (_%g204069204149%_ _%g204070204153%_))))
                      (_%g204069204149%_ _%g204070204153%_))
                  (_%g204069204149%_ _%g204070204153%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204069204149%_
                                                     _%g204070204153%_))))
                                            (_%g204069204149%_
                                             _%g204070204153%_))
                                        (_%g204069204149%_
                                         _%g204070204153%_))))
                                (_%g204069204149%_ _%g204070204153%_))
                            (_%g204069204149%_ _%g204070204153%_))
                        (_%g204069204149%_ _%g204070204153%_))))
                (_%g204069204149%_ _%g204070204153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204069204149%_
                                                 _%g204070204153%_))
                                            (_%g204069204149%_
                                             _%g204070204153%_)))
                                      (_%g204069204149%_ _%g204070204153%_))))
                              (_%g204069204149%_ _%g204070204153%_))))
                      (_%g204069204149%_ _%g204070204153%_)))))
          (_%g204068204451%_ _%sig204066%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx205223%_)
        (let* ((_%g205226205244%_
                (lambda (_%g205227205240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205227205240%_))))
               (_%g205225205299%_
                (lambda (_%g205227205248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205227205248%_))
                      (let ((_%e205230205251%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205227205248%_))))
                        (let ((_%hd205231205255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205230205251%_)))
                              (_%tl205232205258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205230205251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205232205258%_))
                              (let ((_%e205233205261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205232205258%_))))
                                (let ((_%hd205234205265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205233205261%_)))
                                      (_%tl205235205268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205233205261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205235205268%_))
                                      (let ((_%e205236205271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205235205268%_))))
                                        (let ((_%hd205237205275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205236205271%_)))
                                              (_%tl205238205278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205236205271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205238205278%_))
                                              ((lambda (_%L205281%_
                                                        _%L205283%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205283%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205281%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx205223%_
                                                        _%L205283%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx205223%_
                                                        _%L205281%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L205283%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205281%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205226205244%_
                                                      _%g205227205248%_)))
                                               _%hd205237205275%_
                                               _%hd205234205265%_)
                                              (_%g205226205244%_
                                               _%g205227205248%_))))
                                      (_%g205226205244%_ _%g205227205248%_))))
                              (_%g205226205244%_ _%g205227205248%_))))
                      (_%g205226205244%_ _%g205227205248%_)))))
          (_%g205225205299%_ _%stx205223%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx205303%_)
        (let* ((_%g205306205330%_
                (lambda (_%g205307205326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205307205326%_))))
               (_%g205305205613%_
                (lambda (_%g205307205334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205307205334%_))
                      (let ((_%e205310205337%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205307205334%_))))
                        (let ((_%hd205311205341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205310205337%_)))
                              (_%tl205312205344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205310205337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205312205344%_))
                              (let ((_%e205313205347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205312205344%_))))
                                (let ((_%hd205314205351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205313205347%_)))
                                      (_%tl205315205354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205313205347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205315205354%_))
                                      (let ((_g207675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205315205354%_
                                                '0))))
                                        (begin
                                          (let ((_g207676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207675_)
                                                       (##vector-length
                                                        _g207675_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207676_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207676_)))
                                          (let ((_%target205316205357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207675_ 0)))
                                                (_%tl205318205360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207675_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205318205360%_))
                                                (letrec ((_%loop205319205363%_
                                                          (lambda (_%hd205317205367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature205323205370%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205317205367%_))
                        (let ((_%e205320205373%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205317205367%_))))
                          (let ((_%lp-hd205321205377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205320205373%_)))
                                (_%lp-tl205322205380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205320205373%_))))
                            (_%loop205319205363%_
                             _%lp-tl205322205380%_
                             (cons _%lp-hd205321205377%_
                                   _%signature205323205370%_))))
                        (let ((_%signature205324205383%_
                               (reverse _%signature205323205370%_)))
                          ((lambda (_%L205387%_ _%L205389%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205389%_))
                                 (let* ((_%g205407205422%_
                                         (lambda (_%g205408205418%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205408205418%_))))
                                        (_%g205406205601%_
                                         (lambda (_%g205408205426%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205408205426%_))
                                               (let ((_%e205411205429%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205408205426%_))))
                                                 (let ((_%hd205412205433%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205411205429%_)))
                                                       (_%tl205413205436%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205411205429%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205413205436%_))
                                                       (let ((_%e205414205439%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205413205436%_))))
                 (let ((_%hd205415205443%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205414205439%_)))
                       (_%tl205416205446%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205414205439%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl205416205446%_))
                       ((lambda (_%L205449%_ _%L205451%_)
                          (let* ((_%g205467205475%_
                                  (lambda (_%g205468205471%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g205468205471%_))))
                                 (_%g205466205597%_
                                  (lambda (_%g205468205479%_)
                                    ((lambda (_%L205482%_)
                                       (let* ((_%unchecked205495%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L205449%_))
                                              (_%g205498205506%_
                                               (lambda (_%g205499205502%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205499205502%_))))
                                              (_%g205497205529%_
                                               (lambda (_%g205499205510%_)
                                                 ((lambda (_%L205513%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205482%_
                                                                (cons _%L205513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205499205510%_))))
                                         (_%g205497205529%_
                                          (if _%unchecked205495%_
                                              (let* ((_%g205533205548%_
                                                      (lambda (_%g205534205544%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205534205544%_))))
                                                     (_%g205532205593%_
                                                      (lambda (_%g205534205552%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205534205552%_))
                                                            (let ((_%e205537205555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205534205552%_))))
                      (let ((_%hd205538205559%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205537205555%_)))
                            (_%tl205539205562%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205537205555%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205539205562%_))
                            (let ((_%e205540205565%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205539205562%_))))
                              (let ((_%hd205541205569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205540205565%_)))
                                    (_%tl205542205572%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205540205565%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205542205572%_))
                                    ((lambda (_%L205575%_ _%L205577%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205577%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205451%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205575%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205541205569%_
                                     _%hd205538205559%_)
                                    (_%g205533205548%_ _%g205534205552%_))))
                            (_%g205533205548%_ _%g205534205552%_))))
                    (_%g205533205548%_ _%g205534205552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205532205593%_
                                                 _%unchecked205495%_))
                                              '(begin)))))
                                     _%g205468205479%_))))
                            (_%g205466205597%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L205389%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L205451%_ '()))
                   (cons '#f (cons 'signature: (cons _%L205449%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd205415205443%_
                        _%hd205412205433%_)
                       (_%g205407205422%_ _%g205408205426%_))))
               (_%g205407205422%_ _%g205408205426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205407205422%_
                                                _%g205408205426%_)))))
                                   (_%g205406205601%_
                                    (|gxc[1]#parse-signature|
                                     _%stx205303%_
                                     _%L205389%_
                                     (let ((__tmp207677
                                            (lambda (_%g205604205607%_
                                                     _%g205605205610%_)
                                              (cons _%g205604205607%_
                                                    _%g205605205610%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207677
                                        '()
                                        _%L205387%_)))))
                                 (_%g205306205330%_ _%g205307205334%_)))
                           _%signature205324205383%_
                           _%hd205314205351%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205319205363%_
                                                   _%target205316205357%_
                                                   '()))
                                                (_%g205306205330%_
                                                 _%g205307205334%_)))))
                                      (_%g205306205330%_ _%g205307205334%_))))
                              (_%g205306205330%_ _%g205307205334%_))))
                      (_%g205306205330%_ _%g205307205334%_)))))
          (_%g205305205613%_ _%stx205303%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205618%_)
        (let* ((_%g205621205645%_
                (lambda (_%g205622205641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205622205641%_))))
               (_%g205620206528%_
                (lambda (_%g205622205649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205622205649%_))
                      (let ((_%e205625205652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205622205649%_))))
                        (let ((_%hd205626205656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205625205652%_)))
                              (_%tl205627205659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205625205652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205627205659%_))
                              (let ((_%e205628205662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205627205659%_))))
                                (let ((_%hd205629205666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205628205662%_)))
                                      (_%tl205630205669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205628205662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205630205669%_))
                                      (let ((_g207678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205630205669%_
                                                '0))))
                                        (begin
                                          (let ((_g207679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207678_)
                                                       (##vector-length
                                                        _g207678_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207679_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207679_)))
                                          (let ((_%target205631205672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207678_ 0)))
                                                (_%tl205633205675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207678_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205633205675%_))
                                                (letrec ((_%loop205634205678%_
                                                          (lambda (_%hd205632205682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205638205685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205632205682%_))
                        (let ((_%e205635205688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205632205682%_))))
                          (let ((_%lp-hd205636205692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205635205688%_)))
                                (_%lp-tl205637205695%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205635205688%_))))
                            (_%loop205634205678%_
                             _%lp-tl205637205695%_
                             (cons _%lp-hd205636205692%_
                                   _%case-signature205638205685%_))))
                        (let ((_%case-signature205639205698%_
                               (reverse _%case-signature205638205685%_)))
                          ((lambda (_%L205702%_ _%L205704%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205704%_))
                                 (let* ((_%signatures205735%_
                                         (map (lambda (_%g205721205723%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205618%_
                                                 _%L205704%_
                                                 _%g205721205723%_))
                                              (let ((__tmp207680
                                                     (lambda (_%g205726205729%_
                                                              _%g205727205732%_)
                                                       (cons _%g205726205729%_
                                                             _%g205727205732%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207680
                                                 '()
                                                 _%L205702%_))))
                                        (_%g205738205764%_
                                         (lambda (_%g205739205760%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205739205760%_))))
                                        (_%g205737206524%_
                                         (lambda (_%g205739205768%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205739205768%_))
                                               (let ((_g207681_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205739205768%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207682_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207681_)
                        (##vector-length _g207681_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207682_ 2)))
                 (error "Context expects 2 values" _g207682_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205742205771%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207681_
                                                             0)))
                                                         (_%tl205744205774%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207681_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205744205774%_))
                                                         (letrec ((_%loop205745205777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205743205781%_
                                    _%sig205749205784%_
                                    _%arity205750205786%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205743205781%_))
                                 (let ((_%e205746205789%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205743205781%_))))
                                   (let ((_%lp-hd205747205793%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205746205789%_)))
                                         (_%lp-tl205748205796%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205746205789%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205747205793%_))
                                         (let ((_%e205753205799%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205747205793%_))))
                                           (let ((_%hd205754205803%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205753205799%_)))
                                                 (_%tl205755205806%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205753205799%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205755205806%_))
                                                 (let ((_%e205756205809%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205755205806%_))))
                                                   (let ((_%hd205757205813%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205756205809%_)))
                                                         (_%tl205758205816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205756205809%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205758205816%_))
                                                         (_%loop205745205777%_
                                                          _%lp-tl205748205796%_
                                                          (cons _%hd205757205813%_
                                                                _%sig205749205784%_)
                                                          (cons _%hd205754205803%_
                                                                _%arity205750205786%_))
                                                         (_%g205738205764%_
                                                          _%g205739205768%_))))
                                                 (_%g205738205764%_
                                                  _%g205739205768%_))))
                                         (_%g205738205764%_
                                          _%g205739205768%_))))
                                 (let ((_%sig205751205819%_
                                        (reverse _%sig205749205784%_))
                                       (_%arity205752205822%_
                                        (reverse _%arity205750205786%_)))
                                   ((lambda (_%L205825%_ _%L205827%_)
                                      (let* ((_%g205844205852%_
                                              (lambda (_%g205845205848%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205845205848%_))))
                                             (_%g205843206509%_
                                              (lambda (_%g205845205856%_)
                                                ((lambda (_%L205859%_)
                                                   (let* ((_%g205872205880%_
                                                           (lambda (_%g205873205876%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205873205876%_))))
                  (_%g205871205902%_
                   (lambda (_%g205873205884%_)
                     ((lambda (_%L205887%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205859%_ (cons _%L205887%_ '()))))
                      _%g205873205884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205871205902%_
                                                      (let ((_g207683_
                                                             (let _%loop205906%_ ((_%rest205909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205735%_)
                                          (_%unchecked-proc205911%_ '#f)
                                          (_%unchecked-clauses205912%_ '()))
                       (let* ((_%rest205913205921%_ _%rest205909%_)
                              (_%else205915205933%_
                               (lambda ()
                                 (values _%unchecked-proc205911%_
                                         (reverse!
                                          _%unchecked-clauses205912%_))))
                              (_%K205917206374%_
                               (lambda (_%rest205937%_ _%hd205939%_)
                                 (let* ((_%g205941206028%_
                                         (lambda (_%g205942206024%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205942206024%_))))
                                        (_%g205940206370%_
                                         (lambda (_%g205942206032%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205942206032%_))
                                               (let ((_%e205949206035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205942206032%_))))
                                                 (let ((_%hd205950206039%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205949206035%_)))
                                                       (_%tl205951206042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205949206035%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205951206042%_))
                                                       (let ((_%e205952206045%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205951206042%_))))
                 (let ((_%hd205953206049%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205952206045%_)))
                       (_%tl205954206052%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205952206045%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd205953206049%_))
                       (let ((_%e205955206055%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd205953206049%_))))
                         (let ((_%hd205956206059%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205955206055%_)))
                               (_%tl205957206062%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205955206055%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl205957206062%_))
                               (let ((_%e205958206065%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl205957206062%_))))
                                 (let ((_%hd205959206069%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205958206065%_)))
                                       (_%tl205960206072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205958206065%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd205959206069%_))
                                       (let ((_%e205961206075%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd205959206069%_))))
                                         (if (equal? _%e205961206075%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205960206072%_))
                                                 (let ((_%e205962206079%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205960206072%_))))
                                                   (let ((_%hd205963206083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205962206079%_)))
                                                         (_%tl205964206086%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205962206079%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd205963206083%_))
                                                         (let ((_%e205965206089%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd205963206083%_))))
                   (let ((_%hd205966206093%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205965206089%_)))
                         (_%tl205967206096%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205965206089%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd205966206093%_))
                         (if (let ((__tmp207685 |gxc[1]#_g207686_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207685
                                _%hd205966206093%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205967206096%_))
                                 (let ((_%e205968206099%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205967206096%_))))
                                   (let ((_%hd205969206103%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205968206099%_)))
                                         (_%tl205970206106%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205968206099%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl205970206106%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl205964206086%_))
                                             (let ((_%e205971206109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl205964206086%_))))
                                               (let ((_%hd205972206113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205971206109%_)))
                                                     (_%tl205973206116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205971206109%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd205972206113%_))
                                                     (let ((_%e205974206119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd205972206113%_))))
                                                       (if (equal? _%e205974206119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl205973206116%_))
                       (let ((_%e205975206123%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl205973206116%_))))
                         (let ((_%hd205976206127%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205975206123%_)))
                               (_%tl205977206130%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205975206123%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd205976206127%_))
                               (let ((_%e205978206133%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd205976206127%_))))
                                 (let ((_%hd205979206137%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205978206133%_)))
                                       (_%tl205980206140%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205978206133%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd205979206137%_))
                                       (if (let ((__tmp207687
                                                  |gxc[1]#_g207688_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207687
                                              _%hd205979206137%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205980206140%_))
                                               (let ((_%e205981206143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205980206140%_))))
                                                 (let ((_%hd205982206147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205981206143%_)))
                                                       (_%tl205983206150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205981206143%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl205983206150%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl205977206130%_))
                                                           (let ((_%e205984206153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl205977206130%_))))
                     (let ((_%hd205985206157%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205984206153%_)))
                           (_%tl205986206160%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205984206153%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd205985206157%_))
                           (let ((_%e205987206163%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd205985206157%_))))
                             (if (equal? _%e205987206163%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl205986206160%_))
                                     (let ((_%e205988206167%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl205986206160%_))))
                                       (let ((_%hd205989206171%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205988206167%_)))
                                             (_%tl205990206174%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205988206167%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd205989206171%_))
                                             (let ((_%e205991206177%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd205989206171%_))))
                                               (let ((_%hd205992206181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205991206177%_)))
                                                     (_%tl205993206184%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205991206177%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd205992206181%_))
                                                     (if (let ((__tmp207689
                                                                |gxc[1]#_g207690_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207689
                                                            _%hd205992206181%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl205993206184%_))
                     (let ((_%e205994206187%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl205993206184%_))))
                       (let ((_%hd205995206191%_
                              (let ()
                                (declare (not safe))
                                (##car _%e205994206187%_)))
                             (_%tl205996206194%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e205994206187%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl205996206194%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205990206174%_))
                                 (let ((_%e205997206197%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205990206174%_))))
                                   (let ((_%hd205998206201%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205997206197%_)))
                                         (_%tl205999206204%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205997206197%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd205998206201%_))
                                         (let ((_%e206000206207%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd205998206201%_))))
                                           (if (equal? _%e206000206207%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl205999206204%_))
                                                   (let ((_%e206001206211%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl205999206204%_))))
                                                     (let ((_%hd206002206215%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e206001206211%_)))
                                                           (_%tl206003206218%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e206001206211%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd206002206215%_))
                                                           (let ((_%e206004206221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd206002206215%_))))
                     (let ((_%hd206005206225%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206004206221%_)))
                           (_%tl206006206228%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206004206221%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd206005206225%_))
                           (if (let ((__tmp207691 |gxc[1]#_g207692_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207691
                                  _%hd206005206225%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl206006206228%_))
                                   (let ((_%e206007206231%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl206006206228%_))))
                                     (let ((_%hd206008206235%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e206007206231%_)))
                                           (_%tl206009206238%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e206007206231%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl206009206238%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206003206218%_))
                                               (let ((_%e206010206241%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206003206218%_))))
                                                 (let ((_%hd206011206245%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206010206241%_)))
                                                       (_%tl206012206248%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206010206241%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd206011206245%_))
                                                       (let ((_%e206013206251%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd206011206245%_))))
                 (if (equal? _%e206013206251%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl206012206248%_))
                         (let ((_%e206014206255%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl206012206248%_))))
                           (let ((_%hd206015206259%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e206014206255%_)))
                                 (_%tl206016206262%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e206014206255%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206015206259%_))
                                 (let ((_%e206017206265%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206015206259%_))))
                                   (let ((_%hd206018206269%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206017206265%_)))
                                         (_%tl206019206272%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206017206265%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd206018206269%_))
                                         (if (let ((__tmp207693
                                                    |gxc[1]#_g207694_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207693
                                                _%hd206018206269%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206019206272%_))
                                                 (let ((_%e206020206275%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206019206272%_))))
                                                   (let ((_%hd206021206279%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206020206275%_)))
                                                         (_%tl206022206282%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206020206275%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206022206282%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl206016206262%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl205954206052%_))
                         ((lambda (_%L206285%_
                                   _%L206287%_
                                   _%L206288%_
                                   _%L206289%_
                                   _%L206290%_
                                   _%L206291%_)
                            (let ((_%clause206362%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L206291%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L206289%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206285%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked206364%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L206287%_))))
                              (_%loop205906%_
                               _%rest205937%_
                               (let ((_%$e206366%_ _%unchecked206364%_))
                                 (if _%$e206366%_
                                     _%$e206366%_
                                     _%unchecked-proc205911%_))
                               (cons _%clause206362%_
                                     _%unchecked-clauses205912%_))))
                          _%hd206021206279%_
                          _%hd206008206235%_
                          _%hd205995206191%_
                          _%hd205982206147%_
                          _%hd205969206103%_
                          _%hd205950206039%_)
                         (_%g205941206028%_ _%g205942206032%_))
                     (_%g205941206028%_ _%g205942206032%_))
                 (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205941206028%_
                                                  _%g205942206032%_))
                                             (_%g205941206028%_
                                              _%g205942206032%_))
                                         (_%g205941206028%_
                                          _%g205942206032%_))))
                                 (_%g205941206028%_ _%g205942206032%_))))
                         (_%g205941206028%_ _%g205942206032%_))
                     (_%g205941206028%_ _%g205942206032%_)))
               (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205941206028%_
                                                _%g205942206032%_))
                                           (_%g205941206028%_
                                            _%g205942206032%_))))
                                   (_%g205941206028%_ _%g205942206032%_))
                               (_%g205941206028%_ _%g205942206032%_))
                           (_%g205941206028%_ _%g205942206032%_))))
                   (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205941206028%_
                                                    _%g205942206032%_))
                                               (_%g205941206028%_
                                                _%g205942206032%_)))
                                         (_%g205941206028%_
                                          _%g205942206032%_))))
                                 (_%g205941206028%_ _%g205942206032%_))
                             (_%g205941206028%_ _%g205942206032%_))))
                     (_%g205941206028%_ _%g205942206032%_))
                 (_%g205941206028%_ _%g205942206032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205941206028%_
                                                      _%g205942206032%_))))
                                             (_%g205941206028%_
                                              _%g205942206032%_))))
                                     (_%g205941206028%_ _%g205942206032%_))
                                 (_%g205941206028%_ _%g205942206032%_)))
                           (_%g205941206028%_ _%g205942206032%_))))
                   (_%g205941206028%_ _%g205942206032%_))
               (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205941206028%_
                                                _%g205942206032%_))
                                           (_%g205941206028%_
                                            _%g205942206032%_))
                                       (_%g205941206028%_ _%g205942206032%_))))
                               (_%g205941206028%_ _%g205942206032%_))))
                       (_%g205941206028%_ _%g205942206032%_))
                   (_%g205941206028%_ _%g205942206032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205941206028%_
                                                      _%g205942206032%_))))
                                             (_%g205941206028%_
                                              _%g205942206032%_))
                                         (_%g205941206028%_
                                          _%g205942206032%_))))
                                 (_%g205941206028%_ _%g205942206032%_))
                             (_%g205941206028%_ _%g205942206032%_))
                         (_%g205941206028%_ _%g205942206032%_))))
                 (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205941206028%_
                                                  _%g205942206032%_))
                                             (_%g205941206028%_
                                              _%g205942206032%_)))
                                       (_%g205941206028%_ _%g205942206032%_))))
                               (_%g205941206028%_ _%g205942206032%_))))
                       (_%g205941206028%_ _%g205942206032%_))))
               (_%g205941206028%_ _%g205942206032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205941206028%_
                                                _%g205942206032%_)))))
                                   (_%g205940206370%_ _%hd205939%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205913205921%_))
                             (let ((_%hd205918206378%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205913205921%_)))
                                   (_%tl205919206381%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205913205921%_))))
                               (let* ((_%hd206384%_ _%hd205918206378%_)
                                      (_%rest206387%_ _%tl205919206381%_))
                                 (_%K205917206374%_
                                  _%rest206387%_
                                  _%hd206384%_)))
                             (_%else205915205933%_))))))
                (begin
                  (let ((_g207684_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207683_)
                               (##vector-length _g207683_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207684_ 2)))
                        (error "Context expects 2 values" _g207684_)))
                  (let ((_%unchecked-proc206390%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207683_ 0)))
                        (_%unchecked-clauses206392%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207683_ 1))))
                    (if _%unchecked-proc206390%_
                        (let* ((_%g206394206418%_
                                (lambda (_%g206395206414%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g206395206414%_))))
                               (_%g206393206505%_
                                (lambda (_%g206395206422%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g206395206422%_))
                                      (let ((_%e206398206425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g206395206422%_))))
                                        (let ((_%hd206399206429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206398206425%_)))
                                              (_%tl206400206432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206398206425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206400206432%_))
                                              (let ((_%e206401206435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206400206432%_))))
                                                (let ((_%hd206402206439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206401206435%_)))
                                                      (_%tl206403206442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206401206435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd206402206439%_))
                                                      (let ((_g207695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd206402206439%_ '0))))
                (begin
                  (let ((_g207696_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207695_)
                               (##vector-length _g207695_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207696_ 2)))
                        (error "Context expects 2 values" _g207696_)))
                  (let ((_%target206404206445%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207695_ 0)))
                        (_%tl206406206448%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207695_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206406206448%_))
                        (letrec ((_%loop206407206451%_
                                  (lambda (_%hd206405206455%_
                                           _%clause206411206458%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd206405206455%_))
                                        (let ((_%e206408206461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd206405206455%_))))
                                          (let ((_%lp-hd206409206465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e206408206461%_)))
                                                (_%lp-tl206410206468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e206408206461%_))))
                                            (_%loop206407206451%_
                                             _%lp-tl206410206468%_
                                             (cons _%lp-hd206409206465%_
                                                   _%clause206411206458%_))))
                                        (let ((_%clause206412206471%_
                                               (reverse _%clause206411206458%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206403206442%_))
                                              ((lambda (_%L206475%_
                                                        _%L206477%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206477%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp207697
                                                    (lambda (_%g206496206499%_
                                                             _%g206497206502%_)
                                                      (cons _%g206496206499%_
                                                            _%g206497206502%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207697
                                                '()
                                                _%L206475%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause206412206471%_
                                               _%hd206399206429%_)
                                              (_%g206394206418%_
                                               _%g206395206422%_)))))))
                          (_%loop206407206451%_ _%target206404206445%_ '()))
                        (_%g206394206418%_ _%g206395206422%_)))))
              (_%g206394206418%_ _%g206395206422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206394206418%_
                                               _%g206395206422%_))))
                                      (_%g206394206418%_ _%g206395206422%_)))))
                          (_%g206393206505%_
                           (list _%unchecked-proc206390%_
                                 _%unchecked-clauses206392%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205845205856%_))))
                                        (_%g205843206509%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205704%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L205825%_
                                          _%L205827%_))
                                       (let ((__tmp207698
                                              (lambda (_%g206512206516%_
                                                       _%g206513206519%_
                                                       _%g206514206521%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g206513206519%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206512206516%_ '())))))
              _%g206514206521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207698
                                          '()
                                          _%L205825%_
                                          _%L205827%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205751205819%_
                                    _%arity205752205822%_))))))
                   (_%loop205745205777%_ _%target205742205771%_ '() '()))
                 (_%g205738205764%_ _%g205739205768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205738205764%_
                                                _%g205739205768%_)))))
                                   (_%g205737206524%_ _%signatures205735%_))
                                 (_%g205621205645%_ _%g205622205649%_)))
                           _%case-signature205639205698%_
                           _%hd205629205666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205634205678%_
                                                   _%target205631205672%_
                                                   '()))
                                                (_%g205621205645%_
                                                 _%g205622205649%_)))))
                                      (_%g205621205645%_ _%g205622205649%_))))
                              (_%g205621205645%_ _%g205622205649%_))))
                      (_%g205621205645%_ _%g205622205649%_)))))
          (_%g205620206528%_ _%stx205618%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206536%_)
        (let* ((_%__stx207518207519%_ _%$stx206536%_)
               (_%g206542206602%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207518207519%_)))))
          (let ((_%__kont207521207522%_
                 (lambda (_%L206824%_ _%L206826%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206826%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L206826%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206824%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207523207524%_
                 (lambda (_%L206749%_ _%L206751%_ _%L206752%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206752%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L206752%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206751%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206749%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207525207526%_
                 (lambda (_%L206663%_ _%L206665%_ _%L206666%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206666%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L206666%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206665%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206663%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207518207519%_))
                (let ((_%e206546206780%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207518207519%_))))
                  (let ((_%tl206548206787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206546206780%_)))
                        (_%hd206547206784%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206546206780%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206548206787%_))
                        (let ((_%e206549206790%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206548206787%_))))
                          (let ((_%tl206551206797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206549206790%_)))
                                (_%hd206550206794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206549206790%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206550206794%_))
                                (let ((_%e206552206800%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206550206794%_))))
                                  (if (equal? _%e206552206800%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206551206797%_))
                                          (let ((_%e206553206804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206551206797%_))))
                                            (let ((_%tl206555206811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206553206804%_)))
                                                  (_%hd206554206808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206553206804%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206555206811%_))
                                                  (let ((_%e206556206814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206555206811%_))))
                                                    (let ((_%tl206558206821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206556206814%_)))
                                                          (_%hd206557206818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206556206814%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206558206821%_))
                                                          (_%__kont207521207522%_
                                                           _%hd206557206818%_
                                                           _%hd206554206808%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206542206602%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206542206602%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206542206602%_)))
                                      (if (equal? _%e206552206800%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206551206797%_))
                                              (let ((_%e206569206719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206551206797%_))))
                                                (let ((_%tl206571206726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206569206719%_)))
                                                      (_%hd206570206723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206569206719%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206571206726%_))
                                                      (let ((_%e206572206729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206571206726%_))))
                (let ((_%tl206574206736%_
                       (let () (declare (not safe)) (##cdr _%e206572206729%_)))
                      (_%hd206573206733%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206572206729%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206574206736%_))
                      (let ((_%e206575206739%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206574206736%_))))
                        (let ((_%tl206577206746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206575206739%_)))
                              (_%hd206576206743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206575206739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206577206746%_))
                              (_%__kont207523207524%_
                               _%hd206576206743%_
                               _%hd206573206733%_
                               _%hd206570206723%_)
                              (let ()
                                (declare (not safe))
                                (_%g206542206602%_)))))
                      (let () (declare (not safe)) (_%g206542206602%_)))))
              (let () (declare (not safe)) (_%g206542206602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206542206602%_)))
                                          (if (equal? _%e206552206800%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206551206797%_))
                                                  (let ((_%e206588206633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206551206797%_))))
                                                    (let ((_%tl206590206640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206588206633%_)))
                                                          (_%hd206589206637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206588206633%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206590206640%_))
                                                          (let ((_%e206591206643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206590206640%_))))
                    (let ((_%tl206593206650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206591206643%_)))
                          (_%hd206592206647%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206591206643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206593206650%_))
                          (let ((_%e206594206653%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206593206650%_))))
                            (let ((_%tl206596206660%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206594206653%_)))
                                  (_%hd206595206657%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206594206653%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206596206660%_))
                                  (_%__kont207525207526%_
                                   _%hd206595206657%_
                                   _%hd206592206647%_
                                   _%hd206589206637%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206542206602%_)))))
                          (let () (declare (not safe)) (_%g206542206602%_)))))
                  (let () (declare (not safe)) (_%g206542206602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206542206602%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206542206602%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206542206602%_)))))
                        (let () (declare (not safe)) (_%g206542206602%_)))))
                (let () (declare (not safe)) (_%g206542206602%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206848%_)
        (let* ((_%g206852206872%_
                (lambda (_%g206853206868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206853206868%_))))
               (_%g206851206943%_
                (lambda (_%g206853206876%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206853206876%_))
                      (let ((_%e206855206879%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206853206876%_))))
                        (let ((_%hd206856206883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206855206879%_)))
                              (_%tl206857206886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206855206879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206857206886%_))
                              (let ((_g207699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206857206886%_
                                        '0))))
                                (begin
                                  (let ((_g207700_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207699_)
                                               (##vector-length _g207699_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207700_ 2)))
                                        (error "Context expects 2 values"
                                               _g207700_)))
                                  (let ((_%target206858206889%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207699_ 0)))
                                        (_%tl206860206892%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207699_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206860206892%_))
                                        (letrec ((_%loop206861206895%_
                                                  (lambda (_%hd206859206899%_
                                                           _%decl206865206902%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206859206899%_))
                                                        (let ((_%e206862206905%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206859206899%_))))
                  (let ((_%lp-hd206863206909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206862206905%_)))
                        (_%lp-tl206864206912%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206862206905%_))))
                    (_%loop206861206895%_
                     _%lp-tl206864206912%_
                     (cons _%lp-hd206863206909%_ _%decl206865206902%_))))
                (let ((_%decl206866206915%_ (reverse _%decl206865206902%_)))
                  ((lambda (_%L206919%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207701
                                  (lambda (_%g206934206937%_ _%g206935206940%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206934206937%_)
                                          _%g206935206940%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207701 '() _%L206919%_))))
                   _%decl206866206915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206861206895%_
                                           _%target206858206889%_
                                           '()))
                                        (_%g206852206872%_
                                         _%g206853206876%_)))))
                              (_%g206852206872%_ _%g206853206876%_))))
                      (_%g206852206872%_ _%g206853206876%_)))))
          (_%g206851206943%_ _%$stx206848%_))))))
