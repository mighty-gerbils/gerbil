(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207933_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207940_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207942_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207944_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207946_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207948_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207960_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207962_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207964_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207966_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207968_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx201351%_)
        (let* ((_%g201355201373%_
                (lambda (_%g201356201369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201356201369%_))))
               (_%g201354201428%_
                (lambda (_%g201356201377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201356201377%_))
                      (let ((_%e201359201380%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201356201377%_))))
                        (let ((_%hd201360201384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201359201380%_)))
                              (_%tl201361201387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201359201380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201361201387%_))
                              (let ((_%e201362201390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201361201387%_))))
                                (let ((_%hd201363201394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201362201390%_)))
                                      (_%tl201364201397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201362201390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201364201397%_))
                                      (let ((_%e201365201400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201364201397%_))))
                                        (let ((_%hd201366201404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201365201400%_)))
                                              (_%tl201367201407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201365201400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201367201407%_))
                                              ((lambda (_%L201410%_
                                                        _%L201412%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201412%_))
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
                               (cons _%L201412%_ '()))
                         (cons _%L201410%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201355201373%_
                                                      _%g201356201377%_)))
                                               _%hd201366201404%_
                                               _%hd201363201394%_)
                                              (_%g201355201373%_
                                               _%g201356201377%_))))
                                      (_%g201355201373%_ _%g201356201377%_))))
                              (_%g201355201373%_ _%g201356201377%_))))
                      (_%g201355201373%_ _%g201356201377%_)))))
          (_%g201354201428%_ _%$stx201351%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx201432%_)
        (let* ((_%g201436201454%_
                (lambda (_%g201437201450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201437201450%_))))
               (_%g201435201509%_
                (lambda (_%g201437201458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201437201458%_))
                      (let ((_%e201440201461%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201437201458%_))))
                        (let ((_%hd201441201465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201440201461%_)))
                              (_%tl201442201468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201440201461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201442201468%_))
                              (let ((_%e201443201471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201442201468%_))))
                                (let ((_%hd201444201475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201443201471%_)))
                                      (_%tl201445201478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201443201471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201445201478%_))
                                      (let ((_%e201446201481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201445201478%_))))
                                        (let ((_%hd201447201485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201446201481%_)))
                                              (_%tl201448201488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201446201481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201448201488%_))
                                              ((lambda (_%L201491%_
                                                        _%L201493%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201493%_))
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
                               (cons _%L201493%_ '()))
                         (cons _%L201491%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201436201454%_
                                                      _%g201437201458%_)))
                                               _%hd201447201485%_
                                               _%hd201444201475%_)
                                              (_%g201436201454%_
                                               _%g201437201458%_))))
                                      (_%g201436201454%_ _%g201437201458%_))))
                              (_%g201436201454%_ _%g201437201458%_))))
                      (_%g201436201454%_ _%g201437201458%_)))))
          (_%g201435201509%_ _%$stx201432%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx201513%_)
        (let* ((_%g201517201546%_
                (lambda (_%g201518201542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201518201542%_))))
               (_%g201516201646%_
                (lambda (_%g201518201550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201518201550%_))
                      (let ((_%e201521201553%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201518201550%_))))
                        (let ((_%hd201522201557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201521201553%_)))
                              (_%tl201523201560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201521201553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201523201560%_))
                              (let ((_g207911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201523201560%_
                                        '0))))
                                (begin
                                  (let ((_g207912_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207911_)
                                               (##vector-length _g207911_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207912_ 2)))
                                        (error "Context expects 2 values"
                                               _g207912_)))
                                  (let ((_%target201524201563%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207911_ 0)))
                                        (_%tl201526201566%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207911_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201526201566%_))
                                        (letrec ((_%loop201527201569%_
                                                  (lambda (_%hd201525201573%_
                                                           _%type201531201576%_
                                                           _%symbol201532201578%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201525201573%_))
                                                        (let ((_%e201528201581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201525201573%_))))
                  (let ((_%lp-hd201529201585%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201528201581%_)))
                        (_%lp-tl201530201588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201528201581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201529201585%_))
                        (let ((_%e201535201591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201529201585%_))))
                          (let ((_%hd201536201595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201535201591%_)))
                                (_%tl201537201598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201535201591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201537201598%_))
                                (let ((_%e201538201601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201537201598%_))))
                                  (let ((_%hd201539201605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201538201601%_)))
                                        (_%tl201540201608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201538201601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201540201608%_))
                                        (_%loop201527201569%_
                                         _%lp-tl201530201588%_
                                         (cons _%hd201539201605%_
                                               _%type201531201576%_)
                                         (cons _%hd201536201595%_
                                               _%symbol201532201578%_))
                                        (_%g201517201546%_
                                         _%g201518201550%_))))
                                (_%g201517201546%_ _%g201518201550%_))))
                        (_%g201517201546%_ _%g201518201550%_))))
                (let ((_%type201533201611%_ (reverse _%type201531201576%_))
                      (_%symbol201534201614%_
                       (reverse _%symbol201532201578%_)))
                  ((lambda (_%L201617%_ _%L201619%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201617%_
                                _%L201619%_))
                             (let ((__tmp207913
                                    (lambda (_%g201634201638%_
                                             _%g201635201641%_
                                             _%g201636201643%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g201635201641%_
                                                        (cons _%g201634201638%_
                                                              '())))
                                            _%g201636201643%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207913
                                '()
                                _%L201617%_
                                _%L201619%_)))))
                   _%type201533201611%_
                   _%symbol201534201614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201527201569%_
                                           _%target201524201563%_
                                           '()
                                           '()))
                                        (_%g201517201546%_
                                         _%g201518201550%_)))))
                              (_%g201517201546%_ _%g201518201550%_))))
                      (_%g201517201546%_ _%g201518201550%_)))))
          (_%g201516201646%_ _%$stx201513%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx201651%_)
        (let* ((_%__stx207222207223%_ _%$stx201651%_)
               (_%g201656201698%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207222207223%_)))))
          (let ((_%__kont207225207226%_
                 (lambda (_%L201826%_ _%L201828%_ _%L201829%_ _%L201830%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201830%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201829%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201828%_ '()))
                                           (cons _%L201826%_ '())))))))
                (_%__kont207227207228%_
                 (lambda (_%L201745%_ _%L201747%_ _%L201748%_ _%L201749%_)
                   (cons _%L201749%_
                         (cons _%L201748%_
                               (cons _%L201747%_
                                     (cons _%L201745%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match207261207262%_
                   (lambda (_%e201662201776%_
                            _%hd201663201780%_
                            _%tl201664201783%_
                            _%e201665201786%_
                            _%hd201666201790%_
                            _%tl201667201793%_
                            _%e201668201796%_
                            _%hd201669201800%_
                            _%tl201670201803%_
                            _%e201671201806%_
                            _%hd201672201810%_
                            _%tl201673201813%_
                            _%e201674201816%_
                            _%hd201675201820%_
                            _%tl201676201823%_)
                     (let ((_%L201826%_ _%hd201675201820%_)
                           (_%L201828%_ _%hd201672201810%_)
                           (_%L201829%_ _%hd201669201800%_)
                           (_%L201830%_ _%hd201666201790%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201830%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201829%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201828%_)))
                           (_%__kont207225207226%_
                            _%L201826%_
                            _%L201828%_
                            _%L201829%_
                            _%L201830%_)
                           (let ()
                             (declare (not safe))
                             (_%g201656201698%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207222207223%_))
                  (let ((_%e201662201776%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207222207223%_))))
                    (let ((_%tl201664201783%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201662201776%_)))
                          (_%hd201663201780%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201662201776%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201664201783%_))
                          (let ((_%e201665201786%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201664201783%_))))
                            (let ((_%tl201667201793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201665201786%_)))
                                  (_%hd201666201790%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201665201786%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201667201793%_))
                                  (let ((_%e201668201796%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl201667201793%_))))
                                    (let ((_%tl201670201803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201668201796%_)))
                                          (_%hd201669201800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201668201796%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201670201803%_))
                                          (let ((_%e201671201806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201670201803%_))))
                                            (let ((_%tl201673201813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201671201806%_)))
                                                  (_%hd201672201810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201671201806%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201673201813%_))
                                                  (let ((_%e201674201816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201673201813%_))))
                                                    (let ((_%tl201676201823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201674201816%_)))
                                                          (_%hd201675201820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201674201816%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201676201823%_))
                                                          (_%__match207261207262%_
                                                           _%e201662201776%_
                                                           _%hd201663201780%_
                                                           _%tl201664201783%_
                                                           _%e201665201786%_
                                                           _%hd201666201790%_
                                                           _%tl201667201793%_
                                                           _%e201668201796%_
                                                           _%hd201669201800%_
                                                           _%tl201670201803%_
                                                           _%e201671201806%_
                                                           _%hd201672201810%_
                                                           _%tl201673201813%_
                                                           _%e201674201816%_
                                                           _%hd201675201820%_
                                                           _%tl201676201823%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201656201698%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201673201813%_))
                                                      (_%__kont207227207228%_
                                                       _%hd201672201810%_
                                                       _%hd201669201800%_
                                                       _%hd201666201790%_
                                                       _%hd201663201780%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201656201698%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201656201698%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201656201698%_)))))
                          (let () (declare (not safe)) (_%g201656201698%_)))))
                  (let () (declare (not safe)) (_%g201656201698%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201855%_)
        (let* ((_%g201859201894%_
                (lambda (_%g201860201890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201860201890%_))))
               (_%g201858202013%_
                (lambda (_%g201860201898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201860201898%_))
                      (let ((_%e201864201901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201860201898%_))))
                        (let ((_%hd201865201905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201864201901%_)))
                              (_%tl201866201908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201864201901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201866201908%_))
                              (let ((_g207914_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201866201908%_
                                        '0))))
                                (begin
                                  (let ((_g207915_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207914_)
                                               (##vector-length _g207914_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207915_ 2)))
                                        (error "Context expects 2 values"
                                               _g207915_)))
                                  (let ((_%target201867201911%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207914_ 0)))
                                        (_%tl201869201914%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207914_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201869201914%_))
                                        (letrec ((_%loop201870201917%_
                                                  (lambda (_%hd201868201921%_
                                                           _%symbol201874201924%_
                                                           _%method201875201926%_
                                                           _%type-t201876201928%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201868201921%_))
                                                        (let ((_%e201871201931%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201868201921%_))))
                  (let ((_%lp-hd201872201935%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201871201931%_)))
                        (_%lp-tl201873201938%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201871201931%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201872201935%_))
                        (let ((_%e201880201941%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201872201935%_))))
                          (let ((_%hd201881201945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201880201941%_)))
                                (_%tl201882201948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201880201941%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201882201948%_))
                                (let ((_%e201883201951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201882201948%_))))
                                  (let ((_%hd201884201955%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201883201951%_)))
                                        (_%tl201885201958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201883201951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201885201958%_))
                                        (let ((_%e201886201961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201885201958%_))))
                                          (let ((_%hd201887201965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201886201961%_)))
                                                (_%tl201888201968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201886201961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201888201968%_))
                                                (_%loop201870201917%_
                                                 _%lp-tl201873201938%_
                                                 (cons _%hd201887201965%_
                                                       _%symbol201874201924%_)
                                                 (cons _%hd201884201955%_
                                                       _%method201875201926%_)
                                                 (cons _%hd201881201945%_
                                                       _%type-t201876201928%_))
                                                (_%g201859201894%_
                                                 _%g201860201898%_))))
                                        (_%g201859201894%_
                                         _%g201860201898%_))))
                                (_%g201859201894%_ _%g201860201898%_))))
                        (_%g201859201894%_ _%g201860201898%_))))
                (let ((_%symbol201877201971%_ (reverse _%symbol201874201924%_))
                      (_%method201878201974%_ (reverse _%method201875201926%_))
                      (_%type-t201879201976%_
                       (reverse _%type-t201876201928%_)))
                  ((lambda (_%L201979%_ _%L201981%_ _%L201982%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201979%_
                                _%L201981%_
                                _%L201982%_))
                             (let ((__tmp207916
                                    (lambda (_%g201998202003%_
                                             _%g201999202006%_
                                             _%g202000202008%_
                                             _%g202001202010%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g202000202008%_
                                                        (cons _%g201999202006%_
                                                              (cons _%g201998202003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g202001202010%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207916
                                '()
                                _%L201979%_
                                _%L201981%_
                                _%L201982%_)))))
                   _%symbol201877201971%_
                   _%method201878201974%_
                   _%type-t201879201976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201870201917%_
                                           _%target201867201911%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201859201894%_
                                         _%g201860201898%_)))))
                              (_%g201859201894%_ _%g201860201898%_))))
                      (_%g201859201894%_ _%g201860201898%_)))))
          (_%g201858202013%_ _%$stx201855%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx202018%_)
        (let* ((_%g202022202055%_
                (lambda (_%g202023202051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202023202051%_))))
               (_%g202021202169%_
                (lambda (_%g202023202059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202023202059%_))
                      (let ((_%e202027202062%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202023202059%_))))
                        (let ((_%hd202028202066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202027202062%_)))
                              (_%tl202029202069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202027202062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202029202069%_))
                              (let ((_%e202030202072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202029202069%_))))
                                (let ((_%hd202031202076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202030202072%_)))
                                      (_%tl202032202079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202030202072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202032202079%_))
                                      (let ((_g207917_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202032202079%_
                                                '0))))
                                        (begin
                                          (let ((_g207918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207917_)
                                                       (##vector-length
                                                        _g207917_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207918_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207918_)))
                                          (let ((_%target202033202082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207917_ 0)))
                                                (_%tl202035202085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207917_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202035202085%_))
                                                (letrec ((_%loop202036202088%_
                                                          (lambda (_%hd202034202092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol202040202095%_
                           _%method202041202097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202034202092%_))
                        (let ((_%e202037202100%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd202034202092%_))))
                          (let ((_%lp-hd202038202104%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202037202100%_)))
                                (_%lp-tl202039202107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202037202100%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd202038202104%_))
                                (let ((_%e202044202110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd202038202104%_))))
                                  (let ((_%hd202045202114%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202044202110%_)))
                                        (_%tl202046202117%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202044202110%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202046202117%_))
                                        (let ((_%e202047202120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl202046202117%_))))
                                          (let ((_%hd202048202124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202047202120%_)))
                                                (_%tl202049202127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202047202120%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202049202127%_))
                                                (_%loop202036202088%_
                                                 _%lp-tl202039202107%_
                                                 (cons _%hd202048202124%_
                                                       _%symbol202040202095%_)
                                                 (cons _%hd202045202114%_
                                                       _%method202041202097%_))
                                                (_%g202022202055%_
                                                 _%g202023202059%_))))
                                        (_%g202022202055%_
                                         _%g202023202059%_))))
                                (_%g202022202055%_ _%g202023202059%_))))
                        (let ((_%symbol202042202130%_
                               (reverse _%symbol202040202095%_))
                              (_%method202043202133%_
                               (reverse _%method202041202097%_)))
                          ((lambda (_%L202136%_ _%L202138%_ _%L202139%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L202136%_
                                        _%L202138%_))
                                     (let ((__tmp207919
                                            (lambda (_%g202157202161%_
                                                     _%g202158202164%_
                                                     _%g202159202166%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L202139%_
                                                                (cons _%g202158202164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g202157202161%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g202159202166%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207919
                                        '()
                                        _%L202136%_
                                        _%L202138%_)))))
                           _%symbol202042202130%_
                           _%method202043202133%_
                           _%hd202031202076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop202036202088%_
                                                   _%target202033202082%_
                                                   '()
                                                   '()))
                                                (_%g202022202055%_
                                                 _%g202023202059%_)))))
                                      (_%g202022202055%_ _%g202023202059%_))))
                              (_%g202022202055%_ _%g202023202059%_))))
                      (_%g202022202055%_ _%g202023202059%_)))))
          (_%g202021202169%_ _%$stx202018%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx202174%_)
        (let* ((_%g202178202192%_
                (lambda (_%g202179202188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202179202188%_))))
               (_%g202177202233%_
                (lambda (_%g202179202196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202179202196%_))
                      (let ((_%e202181202199%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202179202196%_))))
                        (let ((_%hd202182202203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202181202199%_)))
                              (_%tl202183202206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202181202199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202183202206%_))
                              (let ((_%e202184202209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202183202206%_))))
                                (let ((_%hd202185202213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202184202209%_)))
                                      (_%tl202186202216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202184202209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202186202216%_))
                                      ((lambda (_%L202219%_)
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
                                                           (cons _%L202219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202185202213%_)
                                      (_%g202178202192%_ _%g202179202196%_))))
                              (_%g202178202192%_ _%g202179202196%_))))
                      (_%g202178202192%_ _%g202179202196%_)))))
          (_%g202177202233%_ _%$stx202174%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx202237%_)
        (let* ((_%g202241202295%_
                (lambda (_%g202242202291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202242202291%_))))
               (_%g202240202476%_
                (lambda (_%g202242202299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202242202299%_))
                      (let ((_%e202254202302%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202242202299%_))))
                        (let ((_%hd202255202306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202254202302%_)))
                              (_%tl202256202309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202254202302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202256202309%_))
                              (let ((_%e202257202312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202256202309%_))))
                                (let ((_%hd202258202316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202257202312%_)))
                                      (_%tl202259202319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202257202312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202259202319%_))
                                      (let ((_%e202260202322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202259202319%_))))
                                        (let ((_%hd202261202326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202260202322%_)))
                                              (_%tl202262202329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202260202322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202262202329%_))
                                              (let ((_%e202263202332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202262202329%_))))
                                                (let ((_%hd202264202336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202263202332%_)))
                                                      (_%tl202265202339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202263202332%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202265202339%_))
                                                      (let ((_%e202266202342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202265202339%_))))
                (let ((_%hd202267202346%_
                       (let () (declare (not safe)) (##car _%e202266202342%_)))
                      (_%tl202268202349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202266202342%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202268202349%_))
                      (let ((_%e202269202352%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202268202349%_))))
                        (let ((_%hd202270202356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202269202352%_)))
                              (_%tl202271202359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202269202352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202271202359%_))
                              (let ((_%e202272202362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202271202359%_))))
                                (let ((_%hd202273202366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202272202362%_)))
                                      (_%tl202274202369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202272202362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202274202369%_))
                                      (let ((_%e202275202372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202274202369%_))))
                                        (let ((_%hd202276202376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202275202372%_)))
                                              (_%tl202277202379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202275202372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202277202379%_))
                                              (let ((_%e202278202382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202277202379%_))))
                                                (let ((_%hd202279202386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202278202382%_)))
                                                      (_%tl202280202389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202278202382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl202280202389%_))
                                                      (let ((_%e202281202392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl202280202389%_))))
                (let ((_%hd202282202396%_
                       (let () (declare (not safe)) (##car _%e202281202392%_)))
                      (_%tl202283202399%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e202281202392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202283202399%_))
                      (let ((_%e202284202402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202283202399%_))))
                        (let ((_%hd202285202406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202284202402%_)))
                              (_%tl202286202409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202284202402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202286202409%_))
                              (let ((_%e202287202412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202286202409%_))))
                                (let ((_%hd202288202416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202287202412%_)))
                                      (_%tl202289202419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202287202412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202289202419%_))
                                      ((lambda (_%L202422%_
                                                _%L202424%_
                                                _%L202425%_
                                                _%L202426%_
                                                _%L202427%_
                                                _%L202428%_
                                                _%L202429%_
                                                _%L202430%_
                                                _%L202431%_
                                                _%L202432%_
                                                _%L202433%_)
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
                                                           (cons _%L202433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L202432%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202431%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202430%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202429%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202428%_ '()))
                                           (cons _%L202427%_
                                                 (cons _%L202426%_
                                                       (cons _%L202425%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202424%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L202422%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd202288202416%_
                                       _%hd202285202406%_
                                       _%hd202282202396%_
                                       _%hd202279202386%_
                                       _%hd202276202376%_
                                       _%hd202273202366%_
                                       _%hd202270202356%_
                                       _%hd202267202346%_
                                       _%hd202264202336%_
                                       _%hd202261202326%_
                                       _%hd202258202316%_)
                                      (_%g202241202295%_ _%g202242202299%_))))
                              (_%g202241202295%_ _%g202242202299%_))))
                      (_%g202241202295%_ _%g202242202299%_))))
              (_%g202241202295%_ _%g202242202299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202241202295%_
                                               _%g202242202299%_))))
                                      (_%g202241202295%_ _%g202242202299%_))))
                              (_%g202241202295%_ _%g202242202299%_))))
                      (_%g202241202295%_ _%g202242202299%_))))
              (_%g202241202295%_ _%g202242202299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202241202295%_
                                               _%g202242202299%_))))
                                      (_%g202241202295%_ _%g202242202299%_))))
                              (_%g202241202295%_ _%g202242202299%_))))
                      (_%g202241202295%_ _%g202242202299%_)))))
          (_%g202240202476%_ _%$stx202237%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx202480%_)
        (let* ((_%g202484202498%_
                (lambda (_%g202485202494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202485202494%_))))
               (_%g202483202539%_
                (lambda (_%g202485202502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202485202502%_))
                      (let ((_%e202487202505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202485202502%_))))
                        (let ((_%hd202488202509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202487202505%_)))
                              (_%tl202489202512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202487202505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202489202512%_))
                              (let ((_%e202490202515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202489202512%_))))
                                (let ((_%hd202491202519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202490202515%_)))
                                      (_%tl202492202522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202490202515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202492202522%_))
                                      ((lambda (_%L202525%_)
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
                                                           (cons _%L202525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202491202519%_)
                                      (_%g202484202498%_ _%g202485202502%_))))
                              (_%g202484202498%_ _%g202485202502%_))))
                      (_%g202484202498%_ _%g202485202502%_)))))
          (_%g202483202539%_ _%$stx202480%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx202543%_)
        (let* ((_%g202547202561%_
                (lambda (_%g202548202557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202548202557%_))))
               (_%g202546202602%_
                (lambda (_%g202548202565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202548202565%_))
                      (let ((_%e202550202568%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202548202565%_))))
                        (let ((_%hd202551202572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202550202568%_)))
                              (_%tl202552202575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202550202568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202552202575%_))
                              (let ((_%e202553202578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202552202575%_))))
                                (let ((_%hd202554202582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202553202578%_)))
                                      (_%tl202555202585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202553202578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202555202585%_))
                                      ((lambda (_%L202588%_)
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
                                                           (cons _%L202588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202554202582%_)
                                      (_%g202547202561%_ _%g202548202565%_))))
                              (_%g202547202561%_ _%g202548202565%_))))
                      (_%g202547202561%_ _%g202548202565%_)))))
          (_%g202546202602%_ _%$stx202543%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx202606%_)
        (let* ((_%g202610202632%_
                (lambda (_%g202611202628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202611202628%_))))
               (_%g202609202701%_
                (lambda (_%g202611202636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202611202636%_))
                      (let ((_%e202615202639%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202611202636%_))))
                        (let ((_%hd202616202643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202615202639%_)))
                              (_%tl202617202646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202615202639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202617202646%_))
                              (let ((_%e202618202649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202617202646%_))))
                                (let ((_%hd202619202653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202618202649%_)))
                                      (_%tl202620202656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202618202649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202620202656%_))
                                      (let ((_%e202621202659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202620202656%_))))
                                        (let ((_%hd202622202663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202621202659%_)))
                                              (_%tl202623202666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202621202659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202623202666%_))
                                              (let ((_%e202624202669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202623202666%_))))
                                                (let ((_%hd202625202673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202624202669%_)))
                                                      (_%tl202626202676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202624202669%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202626202676%_))
                                                      ((lambda (_%L202679%_
                                                                _%L202681%_
                                                                _%L202682%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202682%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202681%_ '()))
                                   (cons _%L202679%_ '())))))
               _%hd202625202673%_
               _%hd202622202663%_
               _%hd202619202653%_)
              (_%g202610202632%_ _%g202611202636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202610202632%_
                                               _%g202611202636%_))))
                                      (_%g202610202632%_ _%g202611202636%_))))
                              (_%g202610202632%_ _%g202611202636%_))))
                      (_%g202610202632%_ _%g202611202636%_)))))
          (_%g202609202701%_ _%$stx202606%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx202705%_)
        (let* ((_%g202709202731%_
                (lambda (_%g202710202727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202710202727%_))))
               (_%g202708202800%_
                (lambda (_%g202710202735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202710202735%_))
                      (let ((_%e202714202738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202710202735%_))))
                        (let ((_%hd202715202742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202714202738%_)))
                              (_%tl202716202745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202714202738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202716202745%_))
                              (let ((_%e202717202748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202716202745%_))))
                                (let ((_%hd202718202752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202717202748%_)))
                                      (_%tl202719202755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202717202748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202719202755%_))
                                      (let ((_%e202720202758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202719202755%_))))
                                        (let ((_%hd202721202762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202720202758%_)))
                                              (_%tl202722202765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202720202758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202722202765%_))
                                              (let ((_%e202723202768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202722202765%_))))
                                                (let ((_%hd202724202772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202723202768%_)))
                                                      (_%tl202725202775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202723202768%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202725202775%_))
                                                      ((lambda (_%L202778%_
                                                                _%L202780%_
                                                                _%L202781%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202781%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202780%_ '()))
                                   (cons _%L202778%_ '())))))
               _%hd202724202772%_
               _%hd202721202762%_
               _%hd202718202752%_)
              (_%g202709202731%_ _%g202710202735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202709202731%_
                                               _%g202710202735%_))))
                                      (_%g202709202731%_ _%g202710202735%_))))
                              (_%g202709202731%_ _%g202710202735%_))))
                      (_%g202709202731%_ _%g202710202735%_)))))
          (_%g202708202800%_ _%$stx202705%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202804%_)
        (let* ((_%g202808202822%_
                (lambda (_%g202809202818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202809202818%_))))
               (_%g202807202863%_
                (lambda (_%g202809202826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202809202826%_))
                      (let ((_%e202811202829%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202809202826%_))))
                        (let ((_%hd202812202833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202811202829%_)))
                              (_%tl202813202836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202811202829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202813202836%_))
                              (let ((_%e202814202839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202813202836%_))))
                                (let ((_%hd202815202843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202814202839%_)))
                                      (_%tl202816202846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202814202839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202816202846%_))
                                      ((lambda (_%L202849%_)
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
                                                           (cons _%L202849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202815202843%_)
                                      (_%g202808202822%_ _%g202809202826%_))))
                              (_%g202808202822%_ _%g202809202826%_))))
                      (_%g202808202822%_ _%g202809202826%_)))))
          (_%g202807202863%_ _%$stx202804%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202867%_)
        (let* ((_%g202871202889%_
                (lambda (_%g202872202885%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202872202885%_))))
               (_%g202870202944%_
                (lambda (_%g202872202893%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202872202893%_))
                      (let ((_%e202875202896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202872202893%_))))
                        (let ((_%hd202876202900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202875202896%_)))
                              (_%tl202877202903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202875202896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202877202903%_))
                              (let ((_%e202878202906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202877202903%_))))
                                (let ((_%hd202879202910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202878202906%_)))
                                      (_%tl202880202913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202878202906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202880202913%_))
                                      (let ((_%e202881202916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202880202913%_))))
                                        (let ((_%hd202882202920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202881202916%_)))
                                              (_%tl202883202923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202881202916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202883202923%_))
                                              ((lambda (_%L202926%_
                                                        _%L202928%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202928%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202926%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202882202920%_
                                               _%hd202879202910%_)
                                              (_%g202871202889%_
                                               _%g202872202893%_))))
                                      (_%g202871202889%_ _%g202872202893%_))))
                              (_%g202871202889%_ _%g202872202893%_))))
                      (_%g202871202889%_ _%g202872202893%_)))))
          (_%g202870202944%_ _%$stx202867%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202948%_)
        (let* ((_%__stx207290207291%_ _%$stx202948%_)
               (_%g202955203016%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207290207291%_)))))
          (let ((_%__kont207293207294%_
                 (lambda (_%L203254%_ _%L203256%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203256%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203254%_ '()))
                                     '())))))
                (_%__kont207295207296%_
                 (lambda (_%L203193%_ _%L203195%_ _%L203196%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203196%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L203195%_ '()))
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
                                 (cons _%L203193%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont207297207298%_
                 (lambda (_%L203117%_ _%L203119%_)
                   (cons _%L203119%_ (cons _%L203117%_ (cons '#f '())))))
                (_%__kont207299207300%_
                 (lambda (_%L203067%_ _%L203069%_ _%L203070%_)
                   (cons _%L203070%_
                         (cons _%L203069%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L203067%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207290207291%_))
                (let ((_%e202959203224%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207290207291%_))))
                  (let ((_%tl202961203231%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202959203224%_)))
                        (_%hd202960203228%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202959203224%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202961203231%_))
                        (let ((_%e202962203234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202961203231%_))))
                          (let ((_%tl202964203241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202962203234%_)))
                                (_%hd202963203238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202962203234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202964203241%_))
                                (let ((_%e202965203244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202964203241%_))))
                                  (let ((_%tl202967203251%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202965203244%_)))
                                        (_%hd202966203248%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202965203244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202967203251%_))
                                        (_%__kont207293207294%_
                                         _%hd202966203248%_
                                         _%hd202963203238%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202967203251%_))
                                            (let ((_%e202980203169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202967203251%_))))
                                              (let ((_%tl202982203176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202980203169%_)))
                                                    (_%hd202981203173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202980203169%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202981203173%_))
                                                    (let ((_%e202983203179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202981203173%_))))
                                                      (if (equal? _%e202983203179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202982203176%_))
                      (let ((_%e202984203183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202982203176%_))))
                        (let ((_%tl202986203190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202984203183%_)))
                              (_%hd202985203187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202984203183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202986203190%_))
                              (_%__kont207295207296%_
                               _%hd202985203187%_
                               _%hd202966203248%_
                               _%hd202963203238%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202966203248%_))
                                  (let ((_%e203007203053%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202966203248%_))))
                                    (declare (not safe))
                                    (_%g202955203016%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202955203016%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202966203248%_))
                          (let ((_%e203007203053%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202966203248%_))))
                            (if (equal? _%e203007203053%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202982203176%_))
                                    (_%__kont207299207300%_
                                     _%hd202981203173%_
                                     _%hd202963203238%_
                                     _%hd202960203228%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202955203016%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202955203016%_))))
                          (let () (declare (not safe)) (_%g202955203016%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202966203248%_))
                      (let ((_%e203007203053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202966203248%_))))
                        (if (equal? _%e203007203053%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202982203176%_))
                                (_%__kont207299207300%_
                                 _%hd202981203173%_
                                 _%hd202963203238%_
                                 _%hd202960203228%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202955203016%_)))
                            (let () (declare (not safe)) (_%g202955203016%_))))
                      (let () (declare (not safe)) (_%g202955203016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202966203248%_))
                                                        (let ((_%e203007203053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202966203248%_))))
                  (if (equal? _%e203007203053%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202982203176%_))
                          (_%__kont207299207300%_
                           _%hd202981203173%_
                           _%hd202963203238%_
                           _%hd202960203228%_)
                          (let () (declare (not safe)) (_%g202955203016%_)))
                      (let () (declare (not safe)) (_%g202955203016%_))))
                (let () (declare (not safe)) (_%g202955203016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202966203248%_))
                                                (let ((_%e203007203053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202966203248%_))))
                                                  (declare (not safe))
                                                  (_%g202955203016%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202955203016%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202964203241%_))
                                    (_%__kont207297207298%_
                                     _%hd202963203238%_
                                     _%hd202960203228%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202955203016%_))))))
                        (let () (declare (not safe)) (_%g202955203016%_)))))
                (let () (declare (not safe)) (_%g202955203016%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx203275%_)
        (let* ((_%g203279203308%_
                (lambda (_%g203280203304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203280203304%_))))
               (_%g203278203417%_
                (lambda (_%g203280203312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203280203312%_))
                      (let ((_%e203282203315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203280203312%_))))
                        (let ((_%hd203283203319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203282203315%_)))
                              (_%tl203284203322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203282203315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203284203322%_))
                              (let ((_g207920_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203284203322%_
                                        '0))))
                                (begin
                                  (let ((_g207921_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207920_)
                                               (##vector-length _g207920_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207921_ 2)))
                                        (error "Context expects 2 values"
                                               _g207921_)))
                                  (let ((_%target203285203325%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207920_ 0)))
                                        (_%tl203287203328%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207920_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203287203328%_))
                                        (letrec ((_%loop203288203331%_
                                                  (lambda (_%hd203286203335%_
                                                           _%clause203292203338%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203286203335%_))
                                                        (let ((_%e203289203341%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203286203335%_))))
                  (let ((_%lp-hd203290203345%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203289203341%_)))
                        (_%lp-tl203291203348%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203289203341%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd203290203345%_))
                        (let ((_g207922_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd203290203345%_
                                  '0))))
                          (begin
                            (let ((_g207923_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207922_)
                                         (##vector-length _g207922_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207923_ 2)))
                                  (error "Context expects 2 values"
                                         _g207923_)))
                            (let ((_%target203294203351%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207922_ 0)))
                                  (_%tl203296203354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207922_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203296203354%_))
                                  (letrec ((_%loop203297203357%_
                                            (lambda (_%hd203295203361%_
                                                     _%clause203301203364%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203295203361%_))
                                                  (let ((_%e203298203367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd203295203361%_))))
                                                    (let ((_%lp-hd203299203371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203298203367%_)))
                                                          (_%lp-tl203300203374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203298203367%_))))
                                                      (_%loop203297203357%_
                                                       _%lp-tl203300203374%_
                                                       (cons _%lp-hd203299203371%_
                                                             _%clause203301203364%_))))
                                                  (let ((_%clause203302203377%_
                                                         (reverse _%clause203301203364%_)))
                                                    (_%loop203288203331%_
                                                     _%lp-tl203291203348%_
                                                     (cons _%clause203302203377%_
                                                           _%clause203292203338%_)))))))
                                    (_%loop203297203357%_
                                     _%target203294203351%_
                                     '()))
                                  (_%g203279203308%_ _%g203280203312%_)))))
                        (_%g203279203308%_ _%g203280203312%_))))
                (let ((_%clause203293203381%_
                       (reverse _%clause203292203338%_)))
                  ((lambda (_%L203385%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207924
                                              (lambda (_%g203400203405%_
                                                       _%g203401203408%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g203402203411%_ _%g203403203414%_)
                             (cons _%g203402203411%_ _%g203403203414%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207925 '() _%g203400203405%_)))
              _%g203401203408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207924
                                          '()
                                          _%L203385%_)))
                                 '())))
                   _%clause203293203381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203288203331%_
                                           _%target203285203325%_
                                           '()))
                                        (_%g203279203308%_
                                         _%g203280203312%_)))))
                              (_%g203279203308%_ _%g203280203312%_))))
                      (_%g203279203308%_ _%g203280203312%_)))))
          (_%g203278203417%_ _%$stx203275%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx203423%_)
        (let* ((_%g203427203445%_
                (lambda (_%g203428203441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203428203441%_))))
               (_%g203426203500%_
                (lambda (_%g203428203449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203428203449%_))
                      (let ((_%e203431203452%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203428203449%_))))
                        (let ((_%hd203432203456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203431203452%_)))
                              (_%tl203433203459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203431203452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203433203459%_))
                              (let ((_%e203434203462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203433203459%_))))
                                (let ((_%hd203435203466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203434203462%_)))
                                      (_%tl203436203469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203434203462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203436203469%_))
                                      (let ((_%e203437203472%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203436203469%_))))
                                        (let ((_%hd203438203476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203437203472%_)))
                                              (_%tl203439203479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203437203472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203439203479%_))
                                              ((lambda (_%L203482%_
                                                        _%L203484%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203484%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203482%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203438203476%_
                                               _%hd203435203466%_)
                                              (_%g203427203445%_
                                               _%g203428203449%_))))
                                      (_%g203427203445%_ _%g203428203449%_))))
                              (_%g203427203445%_ _%g203428203449%_))))
                      (_%g203427203445%_ _%g203428203449%_)))))
          (_%g203426203500%_ _%$stx203423%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx203504%_)
        (let* ((_%g203508203526%_
                (lambda (_%g203509203522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203509203522%_))))
               (_%g203507203581%_
                (lambda (_%g203509203530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203509203530%_))
                      (let ((_%e203512203533%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203509203530%_))))
                        (let ((_%hd203513203537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203512203533%_)))
                              (_%tl203514203540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203512203533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203514203540%_))
                              (let ((_%e203515203543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203514203540%_))))
                                (let ((_%hd203516203547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203515203543%_)))
                                      (_%tl203517203550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203515203543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203517203550%_))
                                      (let ((_%e203518203553%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203517203550%_))))
                                        (let ((_%hd203519203557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203518203553%_)))
                                              (_%tl203520203560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203518203553%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203520203560%_))
                                              ((lambda (_%L203563%_
                                                        _%L203565%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203565%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203563%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203519203557%_
                                               _%hd203516203547%_)
                                              (_%g203508203526%_
                                               _%g203509203530%_))))
                                      (_%g203508203526%_ _%g203509203530%_))))
                              (_%g203508203526%_ _%g203509203530%_))))
                      (_%g203508203526%_ _%g203509203530%_)))))
          (_%g203507203581%_ _%$stx203504%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx203585%_)
        (let* ((_%g203589203618%_
                (lambda (_%g203590203614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203590203614%_))))
               (_%g203588203718%_
                (lambda (_%g203590203622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203590203622%_))
                      (let ((_%e203593203625%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203590203622%_))))
                        (let ((_%hd203594203629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203593203625%_)))
                              (_%tl203595203632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203593203625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203595203632%_))
                              (let ((_g207926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203595203632%_
                                        '0))))
                                (begin
                                  (let ((_g207927_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207926_)
                                               (##vector-length _g207926_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207927_ 2)))
                                        (error "Context expects 2 values"
                                               _g207927_)))
                                  (let ((_%target203596203635%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207926_ 0)))
                                        (_%tl203598203638%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207926_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203598203638%_))
                                        (letrec ((_%loop203599203641%_
                                                  (lambda (_%hd203597203645%_
                                                           _%rule203603203648%_
                                                           _%proc203604203650%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203597203645%_))
                                                        (let ((_%e203600203653%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203597203645%_))))
                  (let ((_%lp-hd203601203657%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203600203653%_)))
                        (_%lp-tl203602203660%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203600203653%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203601203657%_))
                        (let ((_%e203607203663%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203601203657%_))))
                          (let ((_%hd203608203667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203607203663%_)))
                                (_%tl203609203670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203607203663%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203609203670%_))
                                (let ((_%e203610203673%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203609203670%_))))
                                  (let ((_%hd203611203677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203610203673%_)))
                                        (_%tl203612203680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203610203673%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203612203680%_))
                                        (_%loop203599203641%_
                                         _%lp-tl203602203660%_
                                         (cons _%hd203611203677%_
                                               _%rule203603203648%_)
                                         (cons _%hd203608203667%_
                                               _%proc203604203650%_))
                                        (_%g203589203618%_
                                         _%g203590203622%_))))
                                (_%g203589203618%_ _%g203590203622%_))))
                        (_%g203589203618%_ _%g203590203622%_))))
                (let ((_%rule203605203683%_ (reverse _%rule203603203648%_))
                      (_%proc203606203686%_ (reverse _%proc203604203650%_)))
                  ((lambda (_%L203689%_ _%L203691%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203689%_
                                _%L203691%_))
                             (let ((__tmp207928
                                    (lambda (_%g203706203710%_
                                             _%g203707203713%_
                                             _%g203708203715%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g203707203713%_
                                                        (cons _%g203706203710%_
                                                              '())))
                                            _%g203708203715%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207928
                                '()
                                _%L203689%_
                                _%L203691%_)))))
                   _%rule203605203683%_
                   _%proc203606203686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203599203641%_
                                           _%target203596203635%_
                                           '()
                                           '()))
                                        (_%g203589203618%_
                                         _%g203590203622%_)))))
                              (_%g203589203618%_ _%g203590203622%_))))
                      (_%g203589203618%_ _%g203590203622%_)))))
          (_%g203588203718%_ _%$stx203585%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx203723%_)
        (let* ((_%g203727203745%_
                (lambda (_%g203728203741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203728203741%_))))
               (_%g203726203800%_
                (lambda (_%g203728203749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203728203749%_))
                      (let ((_%e203731203752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203728203749%_))))
                        (let ((_%hd203732203756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203731203752%_)))
                              (_%tl203733203759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203731203752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203733203759%_))
                              (let ((_%e203734203762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203733203759%_))))
                                (let ((_%hd203735203766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203734203762%_)))
                                      (_%tl203736203769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203734203762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203736203769%_))
                                      (let ((_%e203737203772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203736203769%_))))
                                        (let ((_%hd203738203776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203737203772%_)))
                                              (_%tl203739203779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203737203772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203739203779%_))
                                              ((lambda (_%L203782%_
                                                        _%L203784%_)
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
                                                   (cons _%L203784%_ '()))
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
                 (cons _%L203782%_ '())))
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
                                   (cons _%L203784%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203738203776%_
                                               _%hd203735203766%_)
                                              (_%g203727203745%_
                                               _%g203728203749%_))))
                                      (_%g203727203745%_ _%g203728203749%_))))
                              (_%g203727203745%_ _%g203728203749%_))))
                      (_%g203727203745%_ _%g203728203749%_)))))
          (_%g203726203800%_ _%$stx203723%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203804%_)
        (let* ((_%__stx207408207409%_ _%$stx203804%_)
               (_%g203809203834%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207408207409%_)))))
          (let ((_%__kont207411207412%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207413207414%_
                 (lambda (_%L203881%_ _%L203883%_ _%L203884%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203884%_ (cons _%L203883%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203881%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207408207409%_))
                (let ((_%e203811203910%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207408207409%_))))
                  (let ((_%tl203813203917%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203811203910%_)))
                        (_%hd203812203914%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203811203910%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203813203917%_))
                        (_%__kont207411207412%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203813203917%_))
                            (let ((_%e203820203851%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203813203917%_))))
                              (let ((_%tl203822203858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203820203851%_)))
                                    (_%hd203821203855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203820203851%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203821203855%_))
                                    (let ((_%e203823203861%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203821203855%_))))
                                      (let ((_%tl203825203868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203823203861%_)))
                                            (_%hd203824203865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203823203861%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203825203868%_))
                                            (let ((_%e203826203871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203825203868%_))))
                                              (let ((_%tl203828203878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203826203871%_)))
                                                    (_%hd203827203875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203826203871%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203828203878%_))
                                                    (_%__kont207413207414%_
                                                     _%tl203822203858%_
                                                     _%hd203827203875%_
                                                     _%hd203824203865%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203809203834%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203809203834%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203809203834%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203809203834%_))))))
                (let () (declare (not safe)) (_%g203809203834%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203928%_)
        (let* ((_%__stx207452207453%_ _%$stx203928%_)
               (_%g203933203964%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207452207453%_)))))
          (let ((_%__kont207455207456%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207457207458%_
                 (lambda (_%L204031%_ _%L204033%_ _%L204034%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L204034%_
                                           (let ((__tmp207929
                                                  (lambda (_%g204054204057%_
                                                           _%g204055204060%_)
                                                    (cons _%g204054204057%_
                                                          _%g204055204060%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207929
                                              '()
                                              _%L204033%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L204031%_)
                                     '()))))))
            (let ((_%__match207495207496%_
                   (lambda (_%e203941203971%_
                            _%hd203942203975%_
                            _%tl203943203978%_
                            _%e203944203981%_
                            _%hd203945203985%_
                            _%tl203946203988%_
                            _%e203947203991%_
                            _%hd203948203995%_
                            _%tl203949203998%_
                            _%__splice207459207460%_
                            _%target203950204001%_
                            _%tl203952204004%_)
                     (letrec ((_%loop203953204007%_
                               (lambda (_%hd203951204011%_ _%sig203957204014%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203951204011%_))
                                     (let ((_%e203954204017%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203951204011%_))))
                                       (let ((_%lp-tl203956204024%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203954204017%_)))
                                             (_%lp-hd203955204021%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203954204017%_))))
                                         (_%loop203953204007%_
                                          _%lp-tl203956204024%_
                                          (cons _%lp-hd203955204021%_
                                                _%sig203957204014%_))))
                                     (let ((_%sig203958204027%_
                                            (reverse _%sig203957204014%_)))
                                       (_%__kont207457207458%_
                                        _%tl203946203988%_
                                        _%sig203958204027%_
                                        _%hd203948203995%_))))))
                       (_%loop203953204007%_ _%target203950204001%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207452207453%_))
                  (let ((_%e203935204070%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207452207453%_))))
                    (let ((_%tl203937204077%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203935204070%_)))
                          (_%hd203936204074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203935204070%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203937204077%_))
                          (_%__kont207455207456%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203937204077%_))
                              (let ((_%e203944203981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203937204077%_))))
                                (let ((_%tl203946203988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203944203981%_)))
                                      (_%hd203945203985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203944203981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203945203985%_))
                                      (let ((_%e203947203991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203945203985%_))))
                                        (let ((_%tl203949203998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203947203991%_)))
                                              (_%hd203948203995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203947203991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203949203998%_))
                                              (let ((_%__splice207459207460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203949203998%_
                                                        '0))))
                                                (let ((_%tl203952204004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207459207460%_
                                                          '1)))
                                                      (_%target203950204001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207459207460%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203952204004%_))
                                                      (_%__match207495207496%_
                                                       _%e203935204070%_
                                                       _%hd203936204074%_
                                                       _%tl203937204077%_
                                                       _%e203944203981%_
                                                       _%hd203945203985%_
                                                       _%tl203946203988%_
                                                       _%e203947203991%_
                                                       _%hd203948203995%_
                                                       _%tl203949203998%_
                                                       _%__splice207459207460%_
                                                       _%target203950204001%_
                                                       _%tl203952204004%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203933203964%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203933203964%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203933203964%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203933203964%_))))))
                  (let () (declare (not safe)) (_%g203933203964%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx204089%_)
        (let* ((_%__stx207498207499%_ _%$stx204089%_)
               (_%g204094204141%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207498207499%_)))))
          (let ((_%__kont207501207502%_
                 (lambda (_%L204303%_ _%L204305%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L204305%_
                               (let ((__tmp207930
                                      (lambda (_%g204325204328%_
                                               _%g204326204331%_)
                                        (cons _%g204325204328%_
                                              _%g204326204331%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207930 '() _%L204303%_))))))
                (_%__kont207505207506%_
                 (lambda (_%L204198%_ _%L204200%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L204200%_
                               (let ((__tmp207931
                                      (lambda (_%g204217204220%_
                                               _%g204218204223%_)
                                        (cons _%g204217204220%_
                                              _%g204218204223%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207931 '() _%L204198%_)))))))
            (let* ((_%__match207565207566%_
                    (lambda (_%e204121204148%_
                             _%hd204122204152%_
                             _%tl204123204155%_
                             _%e204124204158%_
                             _%hd204125204162%_
                             _%tl204126204165%_
                             _%__splice207507207508%_
                             _%target204127204168%_
                             _%tl204129204171%_)
                      (letrec ((_%loop204130204174%_
                                (lambda (_%hd204128204178%_
                                         _%sig204134204181%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204128204178%_))
                                      (let ((_%e204131204184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd204128204178%_))))
                                        (let ((_%lp-tl204133204191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204131204184%_)))
                                              (_%lp-hd204132204188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204131204184%_))))
                                          (_%loop204130204174%_
                                           _%lp-tl204133204191%_
                                           (cons _%lp-hd204132204188%_
                                                 _%sig204134204181%_))))
                                      (let ((_%sig204135204194%_
                                             (reverse _%sig204134204181%_)))
                                        (_%__kont207505207506%_
                                         _%sig204135204194%_
                                         _%hd204125204162%_))))))
                        (_%loop204130204174%_ _%target204127204168%_ '()))))
                   (_%__match207557207558%_
                    (lambda (_%e204121204148%_
                             _%hd204122204152%_
                             _%tl204123204155%_
                             _%e204124204158%_
                             _%hd204125204162%_
                             _%tl204126204165%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl204126204165%_))
                          (let ((_%__splice207507207508%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl204126204165%_
                                    '0))))
                            (let ((_%tl204129204171%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207507207508%_
                                      '1)))
                                  (_%target204127204168%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207507207508%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204129204171%_))
                                  (_%__match207565207566%_
                                   _%e204121204148%_
                                   _%hd204122204152%_
                                   _%tl204123204155%_
                                   _%e204124204158%_
                                   _%hd204125204162%_
                                   _%tl204126204165%_
                                   _%__splice207507207508%_
                                   _%target204127204168%_
                                   _%tl204129204171%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g204094204141%_)))))
                          (let () (declare (not safe)) (_%g204094204141%_)))))
                   (_%__match207545207546%_
                    (lambda (_%e204098204233%_
                             _%hd204099204237%_
                             _%tl204100204240%_
                             _%e204101204243%_
                             _%hd204102204247%_
                             _%tl204103204250%_
                             _%e204104204253%_
                             _%hd204105204257%_
                             _%tl204106204260%_
                             _%e204107204263%_
                             _%hd204108204267%_
                             _%tl204109204270%_
                             _%__splice207503207504%_
                             _%target204110204273%_
                             _%tl204112204276%_)
                      (letrec ((_%loop204113204279%_
                                (lambda (_%hd204111204283%_
                                         _%sig204117204286%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204111204283%_))
                                      (let ((_%e204114204289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd204111204283%_))))
                                        (let ((_%lp-tl204116204296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204114204289%_)))
                                              (_%lp-hd204115204293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204114204289%_))))
                                          (_%loop204113204279%_
                                           _%lp-tl204116204296%_
                                           (cons _%lp-hd204115204293%_
                                                 _%sig204117204286%_))))
                                      (let ((_%sig204118204299%_
                                             (reverse _%sig204117204286%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204106204260%_))
                                            (_%__kont207501207502%_
                                             _%sig204118204299%_
                                             _%hd204102204247%_)
                                            (_%__match207557207558%_
                                             _%e204098204233%_
                                             _%hd204099204237%_
                                             _%tl204100204240%_
                                             _%e204101204243%_
                                             _%hd204102204247%_
                                             _%tl204103204250%_)))))))
                        (_%loop204113204279%_ _%target204110204273%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207498207499%_))
                  (let ((_%e204098204233%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207498207499%_))))
                    (let ((_%tl204100204240%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204098204233%_)))
                          (_%hd204099204237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204098204233%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204100204240%_))
                          (let ((_%e204101204243%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204100204240%_))))
                            (let ((_%tl204103204250%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204101204243%_)))
                                  (_%hd204102204247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204101204243%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204103204250%_))
                                  (let ((_%e204104204253%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204103204250%_))))
                                    (let ((_%tl204106204260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204104204253%_)))
                                          (_%hd204105204257%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204104204253%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd204105204257%_))
                                          (let ((_%e204107204263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd204105204257%_))))
                                            (let ((_%tl204109204270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204107204263%_)))
                                                  (_%hd204108204267%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204107204263%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd204108204267%_))
                                                  (if (let ((__tmp207932
                                                             |gxc[1]#_g207933_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207932
                                                         _%hd204108204267%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl204109204270%_))
                                                          (let ((_%__splice207503207504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl204109204270%_ '0))))
                    (let ((_%tl204112204276%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207503207504%_ '1)))
                          (_%target204110204273%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207503207504%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204112204276%_))
                          (_%__match207545207546%_
                           _%e204098204233%_
                           _%hd204099204237%_
                           _%tl204100204240%_
                           _%e204101204243%_
                           _%hd204102204247%_
                           _%tl204103204250%_
                           _%e204104204253%_
                           _%hd204105204257%_
                           _%tl204106204260%_
                           _%e204107204263%_
                           _%hd204108204267%_
                           _%tl204109204270%_
                           _%__splice207503207504%_
                           _%target204110204273%_
                           _%tl204112204276%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204103204250%_))
                              (let ((_%__splice207507207508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204103204250%_
                                        '0))))
                                (let ((_%tl204129204171%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207507207508%_
                                          '1)))
                                      (_%target204127204168%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207507207508%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204129204171%_))
                                      (_%__match207565207566%_
                                       _%e204098204233%_
                                       _%hd204099204237%_
                                       _%tl204100204240%_
                                       _%e204101204243%_
                                       _%hd204102204247%_
                                       _%tl204103204250%_
                                       _%__splice207507207508%_
                                       _%target204127204168%_
                                       _%tl204129204171%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g204094204141%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g204094204141%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl204103204250%_))
                      (let ((_%__splice207507207508%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl204103204250%_
                                '0))))
                        (let ((_%tl204129204171%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207507207508%_ '1)))
                              (_%target204127204168%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207507207508%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl204129204171%_))
                              (_%__match207565207566%_
                               _%e204098204233%_
                               _%hd204099204237%_
                               _%tl204100204240%_
                               _%e204101204243%_
                               _%hd204102204247%_
                               _%tl204103204250%_
                               _%__splice207507207508%_
                               _%target204127204168%_
                               _%tl204129204171%_)
                              (let ()
                                (declare (not safe))
                                (_%g204094204141%_)))))
                      (let () (declare (not safe)) (_%g204094204141%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl204103204250%_))
                  (let ((_%__splice207507207508%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl204103204250%_ '0))))
                    (let ((_%tl204129204171%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207507207508%_ '1)))
                          (_%target204127204168%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207507207508%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl204129204171%_))
                          (_%__match207565207566%_
                           _%e204098204233%_
                           _%hd204099204237%_
                           _%tl204100204240%_
                           _%e204101204243%_
                           _%hd204102204247%_
                           _%tl204103204250%_
                           _%__splice207507207508%_
                           _%target204127204168%_
                           _%tl204129204171%_)
                          (let () (declare (not safe)) (_%g204094204141%_)))))
                  (let () (declare (not safe)) (_%g204094204141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204103204250%_))
                                                      (let ((_%__splice207507207508%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl204103204250%_ '0))))
                (let ((_%tl204129204171%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207507207508%_ '1)))
                      (_%target204127204168%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207507207508%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204129204171%_))
                      (_%__match207565207566%_
                       _%e204098204233%_
                       _%hd204099204237%_
                       _%tl204100204240%_
                       _%e204101204243%_
                       _%hd204102204247%_
                       _%tl204103204250%_
                       _%__splice207507207508%_
                       _%target204127204168%_
                       _%tl204129204171%_)
                      (let () (declare (not safe)) (_%g204094204141%_)))))
              (let () (declare (not safe)) (_%g204094204141%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204103204250%_))
                                              (let ((_%__splice207507207508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl204103204250%_
                                                        '0))))
                                                (let ((_%tl204129204171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207507207508%_
                                                          '1)))
                                                      (_%target204127204168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207507207508%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204129204171%_))
                                                      (_%__match207565207566%_
                                                       _%e204098204233%_
                                                       _%hd204099204237%_
                                                       _%tl204100204240%_
                                                       _%e204101204243%_
                                                       _%hd204102204247%_
                                                       _%tl204103204250%_
                                                       _%__splice207507207508%_
                                                       _%target204127204168%_
                                                       _%tl204129204171%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204094204141%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204094204141%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204103204250%_))
                                      (let ((_%__splice207507207508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204103204250%_
                                                '0))))
                                        (let ((_%tl204129204171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207507207508%_
                                                  '1)))
                                              (_%target204127204168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207507207508%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204129204171%_))
                                              (_%__match207565207566%_
                                               _%e204098204233%_
                                               _%hd204099204237%_
                                               _%tl204100204240%_
                                               _%e204101204243%_
                                               _%hd204102204247%_
                                               _%tl204103204250%_
                                               _%__splice207507207508%_
                                               _%target204127204168%_
                                               _%tl204129204171%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g204094204141%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204094204141%_))))))
                          (let () (declare (not safe)) (_%g204094204141%_)))))
                  (let () (declare (not safe)) (_%g204094204141%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx205488%_ _%id205490%_)
        (let ((_%proc205494%_
               (let ((__tmp207934
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205490%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207934))))
          (if (procedure? _%proc205494%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx205488%_
                 _%id205490%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx205479%_ _%id205481%_)
        (let ((_%klass205485%_
               (let ((__tmp207935
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205481%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207935))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass205485%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx205479%_
                 _%id205481%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx204729%_ _%proc204731%_ _%sig204732%_)
        (letrec ((_%signature-arity204734%_
                  (lambda (_%args205411%_)
                    (let _%loop205414%_ ((_%rest205417%_ _%args205411%_)
                                         (_%count205419%_ '0))
                      (let* ((_%rest205420205431%_ _%rest205417%_)
                             (_%E205424205437%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest205420205431%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K205427205468%_
                               (lambda (_%rest205465%_)
                                 (_%loop205414%_
                                  _%rest205465%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count205419%_ '1)))))
                              (_%K205426205457%_ (lambda () _%count205419%_))
                              (_%K205425205445%_
                               (lambda () (cons _%count205419%_ '()))))
                          (let ((_%try-match205422205461%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest205420205431%_))
                                       (_%K205426205457%_)
                                       (_%K205425205445%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest205420205431%_))
                                (let* ((_%tl205429205472%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest205420205431%_)))
                                       (_%rest205476%_ _%tl205429205472%_))
                                  (_%K205427205468%_ _%rest205476%_))
                                (_%try-match205422205461%_))))))))
                 (_%make-signature204736%_
                  (lambda (_%args205293%_
                           _%return205295%_
                           _%effect205296%_
                           _%unchecked205297%_)
                    (let ((__tmp207936
                           (lambda (_%g205298205300%_)
                             (|gxc[1]#verify-class!|
                              _%ctx204729%_
                              _%g205298205300%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207936 _%args205293%_))
                    (|gxc[1]#verify-class!| _%ctx204729%_ _%return205295%_)
                    (if _%unchecked205297%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx204729%_
                         _%unchecked205297%_)
                        '#!void)
                    (let ((_%arity205304%_
                           (_%signature-arity204734%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args205293%_)))))
                      (if _%effect205296%_
                          (let ((_%effect205307%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect205296%_))))
                            (if (and (list? _%effect205307%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect205307%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx204729%_
                                   _%proc204731%_
                                   _%effect205307%_))))
                          '#!void)
                      (cons _%arity205304%_
                            (cons (let* ((_%g205310205333%_
                                          (lambda (_%g205311205329%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g205311205329%_))))
                                         (_%g205309205407%_
                                          (lambda (_%g205311205337%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g205311205337%_))
                                                (let ((_%e205316205340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g205311205337%_))))
                                                  (let ((_%hd205317205344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e205316205340%_)))
                                                        (_%tl205318205347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e205316205340%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl205318205347%_))
                                                        (let ((_%e205319205350%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl205318205347%_))))
                  (let ((_%hd205320205354%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205319205350%_)))
                        (_%tl205321205357%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205319205350%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205321205357%_))
                        (let ((_%e205322205360%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205321205357%_))))
                          (let ((_%hd205323205364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205322205360%_)))
                                (_%tl205324205367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205322205360%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205324205367%_))
                                (let ((_%e205325205370%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205324205367%_))))
                                  (let ((_%hd205326205374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205325205370%_)))
                                        (_%tl205327205377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205325205370%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205327205377%_))
                                        ((lambda (_%L205380%_
                                                  _%L205382%_
                                                  _%L205383%_
                                                  _%L205384%_)
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
                           (cons _%L205384%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L205383%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205382%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205380%_ '()))
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
                                         _%hd205326205374%_
                                         _%hd205323205364%_
                                         _%hd205320205354%_
                                         _%hd205317205344%_)
                                        (_%g205310205333%_
                                         _%g205311205337%_))))
                                (_%g205310205333%_ _%g205311205337%_))))
                        (_%g205310205333%_ _%g205311205337%_))))
                (_%g205310205333%_ _%g205311205337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205310205333%_
                                                 _%g205311205337%_)))))
                                    (_%g205309205407%_
                                     (list _%args205293%_
                                           _%return205295%_
                                           _%effect205296%_
                                           _%unchecked205297%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx204729%_ _%proc204731%_)
          (let* ((_%__stx207576207577%_ _%sig204732%_)
                 (_%g204743204846%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207576207577%_)))))
            (let ((_%__kont207579207580%_
                   (lambda (_%L205274%_ _%L205276%_)
                     (_%make-signature204736%_
                      _%L205276%_
                      _%L205274%_
                      '#f
                      '#f)))
                  (_%__kont207581207582%_
                   (lambda (_%L205225%_ _%L205227%_ _%L205228%_)
                     (_%make-signature204736%_
                      _%L205228%_
                      _%L205227%_
                      _%L205225%_
                      '#f)))
                  (_%__kont207583207584%_
                   (lambda (_%L205149%_ _%L205151%_ _%L205152%_)
                     (_%make-signature204736%_
                      _%L205152%_
                      _%L205151%_
                      _%L205149%_
                      (let ((__tmp207937
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204731%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207937)))))
                  (_%__kont207585207586%_
                   (lambda (_%L205055%_ _%L205057%_ _%L205058%_ _%L205059%_)
                     (_%make-signature204736%_
                      _%L205059%_
                      _%L205058%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L205055%_)))))
                  (_%__kont207587207588%_
                   (lambda (_%L204962%_ _%L204964%_)
                     (_%make-signature204736%_
                      _%L204964%_
                      _%L204962%_
                      '#f
                      (let ((__tmp207938
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204731%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207938)))))
                  (_%__kont207589207590%_
                   (lambda (_%L204897%_ _%L204899%_ _%L204900%_)
                     (_%make-signature204736%_
                      _%L204900%_
                      _%L204899%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204897%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207576207577%_))
                  (let ((_%e204747205254%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207576207577%_))))
                    (let ((_%tl204749205261%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204747205254%_)))
                          (_%hd204748205258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204747205254%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204749205261%_))
                          (let ((_%e204750205264%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204749205261%_))))
                            (let ((_%tl204752205271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204750205264%_)))
                                  (_%hd204751205268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204750205264%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204752205271%_))
                                  (_%__kont207579207580%_
                                   _%hd204751205268%_
                                   _%hd204748205258%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204752205271%_))
                                      (let ((_%e204762205201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204752205271%_))))
                                        (let ((_%tl204764205208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204762205201%_)))
                                              (_%hd204763205205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204762205201%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204763205205%_))
                                              (let ((_%e204765205211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204763205205%_))))
                                                (if (equal? _%e204765205211%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204764205208%_))
                                                        (let ((_%e204766205215%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204764205208%_))))
                  (let ((_%tl204768205222%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204766205215%_)))
                        (_%hd204767205219%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204766205215%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204768205222%_))
                        (_%__kont207581207582%_
                         _%hd204767205219%_
                         _%hd204751205268%_
                         _%hd204748205258%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204768205222%_))
                            (let ((_%e204785205135%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204768205222%_))))
                              (let ((_%tl204787205142%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204785205135%_)))
                                    (_%hd204786205139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204785205135%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204786205139%_))
                                    (let ((_%e204788205145%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204786205139%_))))
                                      (if (equal? _%e204788205145%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204787205142%_))
                                              (_%__kont207583207584%_
                                               _%hd204767205219%_
                                               _%hd204751205268%_
                                               _%hd204748205258%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204787205142%_))
                                                  (let ((_%e204810205045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204787205142%_))))
                                                    (let ((_%tl204812205052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204810205045%_)))
                                                          (_%hd204811205049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204810205045%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204812205052%_))
                                                          (_%__kont207585207586%_
                                                           _%hd204811205049%_
                                                           _%hd204767205219%_
                                                           _%hd204751205268%_
                                                           _%hd204748205258%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204743204846%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204743204846%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204743204846%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204743204846%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204743204846%_))))))
                (let () (declare (not safe)) (_%g204743204846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204765205211%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204764205208%_))
                                                            (_%__kont207587207588%_
                                                             _%hd204751205268%_
                                                             _%hd204748205258%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204764205208%_))
                        (let ((_%e204838204887%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204764205208%_))))
                          (let ((_%tl204840204894%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204838204887%_)))
                                (_%hd204839204891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204838204887%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204840204894%_))
                                (_%__kont207589207590%_
                                 _%hd204839204891%_
                                 _%hd204751205268%_
                                 _%hd204748205258%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204743204846%_)))))
                        (let () (declare (not safe)) (_%g204743204846%_))))
                (let () (declare (not safe)) (_%g204743204846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204743204846%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204743204846%_))))))
                          (let () (declare (not safe)) (_%g204743204846%_)))))
                  (let () (declare (not safe)) (_%g204743204846%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig204340%_)
        (let* ((_%g204343204423%_
                (lambda (_%g204344204419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204344204419%_))))
               (_%g204342204725%_
                (lambda (_%g204344204427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204344204427%_))
                      (let ((_%e204350204430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204344204427%_))))
                        (let ((_%hd204351204434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204350204430%_)))
                              (_%tl204352204437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204350204430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204352204437%_))
                              (let ((_%e204353204440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204352204437%_))))
                                (let ((_%hd204354204444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204353204440%_)))
                                      (_%tl204355204447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204353204440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd204354204444%_))
                                      (let ((_%e204356204450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204354204444%_))))
                                        (if (equal? _%e204356204450%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204355204447%_))
                                                (let ((_%e204357204454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204355204447%_))))
                                                  (let ((_%hd204358204458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204357204454%_)))
                                                        (_%tl204359204461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204357204454%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204358204458%_))
                                                        (let ((_%e204360204464%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204358204458%_))))
                  (let ((_%hd204361204468%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204360204464%_)))
                        (_%tl204362204471%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204360204464%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd204361204468%_))
                        (if (let ((__tmp207939 |gxc[1]#_g207940_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207939
                               _%hd204361204468%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204362204471%_))
                                (let ((_%e204363204474%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204362204471%_))))
                                  (let ((_%hd204364204478%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204363204474%_)))
                                        (_%tl204365204481%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204363204474%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204365204481%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204359204461%_))
                                            (let ((_%e204366204484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204359204461%_))))
                                              (let ((_%hd204367204488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204366204484%_)))
                                                    (_%tl204368204491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204366204484%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204367204488%_))
                                                    (let ((_%e204369204494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204367204488%_))))
                                                      (if (equal? _%e204369204494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204368204491%_))
                      (let ((_%e204370204498%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204368204491%_))))
                        (let ((_%hd204371204502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204370204498%_)))
                              (_%tl204372204505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204370204498%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204371204502%_))
                              (let ((_%e204373204508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd204371204502%_))))
                                (let ((_%hd204374204512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204373204508%_)))
                                      (_%tl204375204515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204373204508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204374204512%_))
                                      (if (let ((__tmp207941
                                                 |gxc[1]#_g207942_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207941
                                             _%hd204374204512%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204375204515%_))
                                              (let ((_%e204376204518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204375204515%_))))
                                                (let ((_%hd204377204522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204376204518%_)))
                                                      (_%tl204378204525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204376204518%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204378204525%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204372204505%_))
                                                          (let ((_%e204379204528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl204372204505%_))))
                    (let ((_%hd204380204532%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204379204528%_)))
                          (_%tl204381204535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204379204528%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204380204532%_))
                          (let ((_%e204382204538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204380204532%_))))
                            (if (equal? _%e204382204538%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204381204535%_))
                                    (let ((_%e204383204542%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl204381204535%_))))
                                      (let ((_%hd204384204546%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204383204542%_)))
                                            (_%tl204385204549%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204383204542%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204384204546%_))
                                            (let ((_%e204386204552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd204384204546%_))))
                                              (let ((_%hd204387204556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204386204552%_)))
                                                    (_%tl204388204559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204386204552%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204387204556%_))
                                                    (if (let ((__tmp207943
                                                               |gxc[1]#_g207944_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207943
                                                           _%hd204387204556%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204388204559%_))
                                                            (let ((_%e204389204562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl204388204559%_))))
                      (let ((_%hd204390204566%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204389204562%_)))
                            (_%tl204391204569%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204389204562%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204391204569%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204385204549%_))
                                (let ((_%e204392204572%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204385204549%_))))
                                  (let ((_%hd204393204576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204392204572%_)))
                                        (_%tl204394204579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204392204572%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd204393204576%_))
                                        (let ((_%e204395204582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd204393204576%_))))
                                          (if (equal? _%e204395204582%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204394204579%_))
                                                  (let ((_%e204396204586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204394204579%_))))
                                                    (let ((_%hd204397204590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204396204586%_)))
                                                          (_%tl204398204593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204396204586%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204397204590%_))
                                                          (let ((_%e204399204596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd204397204590%_))))
                    (let ((_%hd204400204600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204399204596%_)))
                          (_%tl204401204603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204399204596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204400204600%_))
                          (if (let ((__tmp207945 |gxc[1]#_g207946_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207945
                                 _%hd204400204600%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204401204603%_))
                                  (let ((_%e204402204606%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204401204603%_))))
                                    (let ((_%hd204403204610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204402204606%_)))
                                          (_%tl204404204613%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204402204606%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204404204613%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204398204593%_))
                                              (let ((_%e204405204616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204398204593%_))))
                                                (let ((_%hd204406204620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204405204616%_)))
                                                      (_%tl204407204623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204405204616%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd204406204620%_))
                                                      (let ((_%e204408204626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd204406204620%_))))
                (if (equal? _%e204408204626%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204407204623%_))
                        (let ((_%e204409204630%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204407204623%_))))
                          (let ((_%hd204410204634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204409204630%_)))
                                (_%tl204411204637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204409204630%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204410204634%_))
                                (let ((_%e204412204640%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd204410204634%_))))
                                  (let ((_%hd204413204644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204412204640%_)))
                                        (_%tl204414204647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204412204640%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd204413204644%_))
                                        (if (let ((__tmp207947
                                                   |gxc[1]#_g207948_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207947
                                               _%hd204413204644%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204414204647%_))
                                                (let ((_%e204415204650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204414204647%_))))
                                                  (let ((_%hd204416204654%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204415204650%_)))
                                                        (_%tl204417204657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204415204650%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204417204657%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204411204637%_))
                                                            ((lambda (_%L204660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L204662%_
                              _%L204663%_
                              _%L204664%_
                              _%L204665%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L204662%_))
                           (cons _%L204662%_
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
                       (cons _%L204664%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204660%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd204416204654%_
                     _%hd204403204610%_
                     _%hd204390204566%_
                     _%hd204377204522%_
                     _%hd204364204478%_)
                    (_%g204343204423%_ _%g204344204427%_))
                (_%g204343204423%_ _%g204344204427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204343204423%_
                                                 _%g204344204427%_))
                                            (_%g204343204423%_
                                             _%g204344204427%_))
                                        (_%g204343204423%_
                                         _%g204344204427%_))))
                                (_%g204343204423%_ _%g204344204427%_))))
                        (_%g204343204423%_ _%g204344204427%_))
                    (_%g204343204423%_ _%g204344204427%_)))
              (_%g204343204423%_ _%g204344204427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204343204423%_
                                               _%g204344204427%_))
                                          (_%g204343204423%_
                                           _%g204344204427%_))))
                                  (_%g204343204423%_ _%g204344204427%_))
                              (_%g204343204423%_ _%g204344204427%_))
                          (_%g204343204423%_ _%g204344204427%_))))
                  (_%g204343204423%_ _%g204344204427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g204343204423%_
                                                   _%g204344204427%_))
                                              (_%g204343204423%_
                                               _%g204344204427%_)))
                                        (_%g204343204423%_
                                         _%g204344204427%_))))
                                (_%g204343204423%_ _%g204344204427%_))
                            (_%g204343204423%_ _%g204344204427%_))))
                    (_%g204343204423%_ _%g204344204427%_))
                (_%g204343204423%_ _%g204344204427%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204343204423%_
                                                     _%g204344204427%_))))
                                            (_%g204343204423%_
                                             _%g204344204427%_))))
                                    (_%g204343204423%_ _%g204344204427%_))
                                (_%g204343204423%_ _%g204344204427%_)))
                          (_%g204343204423%_ _%g204344204427%_))))
                  (_%g204343204423%_ _%g204344204427%_))
              (_%g204343204423%_ _%g204344204427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204343204423%_
                                               _%g204344204427%_))
                                          (_%g204343204423%_
                                           _%g204344204427%_))
                                      (_%g204343204423%_ _%g204344204427%_))))
                              (_%g204343204423%_ _%g204344204427%_))))
                      (_%g204343204423%_ _%g204344204427%_))
                  (_%g204343204423%_ _%g204344204427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204343204423%_
                                                     _%g204344204427%_))))
                                            (_%g204343204423%_
                                             _%g204344204427%_))
                                        (_%g204343204423%_
                                         _%g204344204427%_))))
                                (_%g204343204423%_ _%g204344204427%_))
                            (_%g204343204423%_ _%g204344204427%_))
                        (_%g204343204423%_ _%g204344204427%_))))
                (_%g204343204423%_ _%g204344204427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204343204423%_
                                                 _%g204344204427%_))
                                            (_%g204343204423%_
                                             _%g204344204427%_)))
                                      (_%g204343204423%_ _%g204344204427%_))))
                              (_%g204343204423%_ _%g204344204427%_))))
                      (_%g204343204423%_ _%g204344204427%_)))))
          (_%g204342204725%_ _%sig204340%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx205497%_)
        (let* ((_%g205500205518%_
                (lambda (_%g205501205514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205501205514%_))))
               (_%g205499205573%_
                (lambda (_%g205501205522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205501205522%_))
                      (let ((_%e205504205525%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205501205522%_))))
                        (let ((_%hd205505205529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205504205525%_)))
                              (_%tl205506205532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205504205525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205506205532%_))
                              (let ((_%e205507205535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205506205532%_))))
                                (let ((_%hd205508205539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205507205535%_)))
                                      (_%tl205509205542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205507205535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205509205542%_))
                                      (let ((_%e205510205545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205509205542%_))))
                                        (let ((_%hd205511205549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205510205545%_)))
                                              (_%tl205512205552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205510205545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205512205552%_))
                                              ((lambda (_%L205555%_
                                                        _%L205557%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205557%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205555%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx205497%_
                                                        _%L205557%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx205497%_
                                                        _%L205555%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L205557%_
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
                                                   (cons _%L205555%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205500205518%_
                                                      _%g205501205522%_)))
                                               _%hd205511205549%_
                                               _%hd205508205539%_)
                                              (_%g205500205518%_
                                               _%g205501205522%_))))
                                      (_%g205500205518%_ _%g205501205522%_))))
                              (_%g205500205518%_ _%g205501205522%_))))
                      (_%g205500205518%_ _%g205501205522%_)))))
          (_%g205499205573%_ _%stx205497%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx205577%_)
        (let* ((_%g205580205604%_
                (lambda (_%g205581205600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205581205600%_))))
               (_%g205579205887%_
                (lambda (_%g205581205608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205581205608%_))
                      (let ((_%e205584205611%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205581205608%_))))
                        (let ((_%hd205585205615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205584205611%_)))
                              (_%tl205586205618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205584205611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205586205618%_))
                              (let ((_%e205587205621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205586205618%_))))
                                (let ((_%hd205588205625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205587205621%_)))
                                      (_%tl205589205628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205587205621%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205589205628%_))
                                      (let ((_g207949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205589205628%_
                                                '0))))
                                        (begin
                                          (let ((_g207950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207949_)
                                                       (##vector-length
                                                        _g207949_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207950_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207950_)))
                                          (let ((_%target205590205631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207949_ 0)))
                                                (_%tl205592205634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207949_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205592205634%_))
                                                (letrec ((_%loop205593205637%_
                                                          (lambda (_%hd205591205641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature205597205644%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205591205641%_))
                        (let ((_%e205594205647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205591205641%_))))
                          (let ((_%lp-hd205595205651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205594205647%_)))
                                (_%lp-tl205596205654%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205594205647%_))))
                            (_%loop205593205637%_
                             _%lp-tl205596205654%_
                             (cons _%lp-hd205595205651%_
                                   _%signature205597205644%_))))
                        (let ((_%signature205598205657%_
                               (reverse _%signature205597205644%_)))
                          ((lambda (_%L205661%_ _%L205663%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205663%_))
                                 (let* ((_%g205681205696%_
                                         (lambda (_%g205682205692%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205682205692%_))))
                                        (_%g205680205875%_
                                         (lambda (_%g205682205700%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205682205700%_))
                                               (let ((_%e205685205703%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205682205700%_))))
                                                 (let ((_%hd205686205707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205685205703%_)))
                                                       (_%tl205687205710%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205685205703%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205687205710%_))
                                                       (let ((_%e205688205713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205687205710%_))))
                 (let ((_%hd205689205717%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205688205713%_)))
                       (_%tl205690205720%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205688205713%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl205690205720%_))
                       ((lambda (_%L205723%_ _%L205725%_)
                          (let* ((_%g205741205749%_
                                  (lambda (_%g205742205745%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g205742205745%_))))
                                 (_%g205740205871%_
                                  (lambda (_%g205742205753%_)
                                    ((lambda (_%L205756%_)
                                       (let* ((_%unchecked205769%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L205723%_))
                                              (_%g205772205780%_
                                               (lambda (_%g205773205776%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205773205776%_))))
                                              (_%g205771205803%_
                                               (lambda (_%g205773205784%_)
                                                 ((lambda (_%L205787%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205756%_
                                                                (cons _%L205787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205773205784%_))))
                                         (_%g205771205803%_
                                          (if _%unchecked205769%_
                                              (let* ((_%g205807205822%_
                                                      (lambda (_%g205808205818%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205808205818%_))))
                                                     (_%g205806205867%_
                                                      (lambda (_%g205808205826%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205808205826%_))
                                                            (let ((_%e205811205829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205808205826%_))))
                      (let ((_%hd205812205833%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205811205829%_)))
                            (_%tl205813205836%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205811205829%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205813205836%_))
                            (let ((_%e205814205839%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205813205836%_))))
                              (let ((_%hd205815205843%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205814205839%_)))
                                    (_%tl205816205846%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205814205839%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205816205846%_))
                                    ((lambda (_%L205849%_ _%L205851%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205851%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205725%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205849%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205815205843%_
                                     _%hd205812205833%_)
                                    (_%g205807205822%_ _%g205808205826%_))))
                            (_%g205807205822%_ _%g205808205826%_))))
                    (_%g205807205822%_ _%g205808205826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205806205867%_
                                                 _%unchecked205769%_))
                                              '(begin)))))
                                     _%g205742205753%_))))
                            (_%g205740205871%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L205663%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L205725%_ '()))
                   (cons '#f (cons 'signature: (cons _%L205723%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd205689205717%_
                        _%hd205686205707%_)
                       (_%g205681205696%_ _%g205682205700%_))))
               (_%g205681205696%_ _%g205682205700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205681205696%_
                                                _%g205682205700%_)))))
                                   (_%g205680205875%_
                                    (|gxc[1]#parse-signature|
                                     _%stx205577%_
                                     _%L205663%_
                                     (let ((__tmp207951
                                            (lambda (_%g205878205881%_
                                                     _%g205879205884%_)
                                              (cons _%g205878205881%_
                                                    _%g205879205884%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207951
                                        '()
                                        _%L205661%_)))))
                                 (_%g205580205604%_ _%g205581205608%_)))
                           _%signature205598205657%_
                           _%hd205588205625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205593205637%_
                                                   _%target205590205631%_
                                                   '()))
                                                (_%g205580205604%_
                                                 _%g205581205608%_)))))
                                      (_%g205580205604%_ _%g205581205608%_))))
                              (_%g205580205604%_ _%g205581205608%_))))
                      (_%g205580205604%_ _%g205581205608%_)))))
          (_%g205579205887%_ _%stx205577%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205892%_)
        (let* ((_%g205895205919%_
                (lambda (_%g205896205915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205896205915%_))))
               (_%g205894206802%_
                (lambda (_%g205896205923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205896205923%_))
                      (let ((_%e205899205926%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205896205923%_))))
                        (let ((_%hd205900205930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205899205926%_)))
                              (_%tl205901205933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205899205926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205901205933%_))
                              (let ((_%e205902205936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205901205933%_))))
                                (let ((_%hd205903205940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205902205936%_)))
                                      (_%tl205904205943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205902205936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205904205943%_))
                                      (let ((_g207952_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205904205943%_
                                                '0))))
                                        (begin
                                          (let ((_g207953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207952_)
                                                       (##vector-length
                                                        _g207952_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207953_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207953_)))
                                          (let ((_%target205905205946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207952_ 0)))
                                                (_%tl205907205949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207952_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205907205949%_))
                                                (letrec ((_%loop205908205952%_
                                                          (lambda (_%hd205906205956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205912205959%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205906205956%_))
                        (let ((_%e205909205962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205906205956%_))))
                          (let ((_%lp-hd205910205966%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205909205962%_)))
                                (_%lp-tl205911205969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205909205962%_))))
                            (_%loop205908205952%_
                             _%lp-tl205911205969%_
                             (cons _%lp-hd205910205966%_
                                   _%case-signature205912205959%_))))
                        (let ((_%case-signature205913205972%_
                               (reverse _%case-signature205912205959%_)))
                          ((lambda (_%L205976%_ _%L205978%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205978%_))
                                 (let* ((_%signatures206009%_
                                         (map (lambda (_%g205995205997%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205892%_
                                                 _%L205978%_
                                                 _%g205995205997%_))
                                              (let ((__tmp207954
                                                     (lambda (_%g206000206003%_
                                                              _%g206001206006%_)
                                                       (cons _%g206000206003%_
                                                             _%g206001206006%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207954
                                                 '()
                                                 _%L205976%_))))
                                        (_%g206012206038%_
                                         (lambda (_%g206013206034%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206013206034%_))))
                                        (_%g206011206798%_
                                         (lambda (_%g206013206042%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g206013206042%_))
                                               (let ((_g207955_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g206013206042%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207956_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207955_)
                        (##vector-length _g207955_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207956_ 2)))
                 (error "Context expects 2 values" _g207956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target206016206045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207955_
                                                             0)))
                                                         (_%tl206018206048%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207955_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206018206048%_))
                                                         (letrec ((_%loop206019206051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd206017206055%_
                                    _%sig206023206058%_
                                    _%arity206024206060%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206017206055%_))
                                 (let ((_%e206020206063%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206017206055%_))))
                                   (let ((_%lp-hd206021206067%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206020206063%_)))
                                         (_%lp-tl206022206070%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206020206063%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd206021206067%_))
                                         (let ((_%e206027206073%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd206021206067%_))))
                                           (let ((_%hd206028206077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e206027206073%_)))
                                                 (_%tl206029206080%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e206027206073%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206029206080%_))
                                                 (let ((_%e206030206083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206029206080%_))))
                                                   (let ((_%hd206031206087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206030206083%_)))
                                                         (_%tl206032206090%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206030206083%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206032206090%_))
                                                         (_%loop206019206051%_
                                                          _%lp-tl206022206070%_
                                                          (cons _%hd206031206087%_
                                                                _%sig206023206058%_)
                                                          (cons _%hd206028206077%_
                                                                _%arity206024206060%_))
                                                         (_%g206012206038%_
                                                          _%g206013206042%_))))
                                                 (_%g206012206038%_
                                                  _%g206013206042%_))))
                                         (_%g206012206038%_
                                          _%g206013206042%_))))
                                 (let ((_%sig206025206093%_
                                        (reverse _%sig206023206058%_))
                                       (_%arity206026206096%_
                                        (reverse _%arity206024206060%_)))
                                   ((lambda (_%L206099%_ _%L206101%_)
                                      (let* ((_%g206118206126%_
                                              (lambda (_%g206119206122%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g206119206122%_))))
                                             (_%g206117206783%_
                                              (lambda (_%g206119206130%_)
                                                ((lambda (_%L206133%_)
                                                   (let* ((_%g206146206154%_
                                                           (lambda (_%g206147206150%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g206147206150%_))))
                  (_%g206145206176%_
                   (lambda (_%g206147206158%_)
                     ((lambda (_%L206161%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L206133%_ (cons _%L206161%_ '()))))
                      _%g206147206158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206145206176%_
                                                      (let ((_g207957_
                                                             (let _%loop206180%_ ((_%rest206183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures206009%_)
                                          (_%unchecked-proc206185%_ '#f)
                                          (_%unchecked-clauses206186%_ '()))
                       (let* ((_%rest206187206195%_ _%rest206183%_)
                              (_%else206189206207%_
                               (lambda ()
                                 (values _%unchecked-proc206185%_
                                         (reverse!
                                          _%unchecked-clauses206186%_))))
                              (_%K206191206648%_
                               (lambda (_%rest206211%_ _%hd206213%_)
                                 (let* ((_%g206215206302%_
                                         (lambda (_%g206216206298%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g206216206298%_))))
                                        (_%g206214206644%_
                                         (lambda (_%g206216206306%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g206216206306%_))
                                               (let ((_%e206223206309%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g206216206306%_))))
                                                 (let ((_%hd206224206313%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206223206309%_)))
                                                       (_%tl206225206316%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206223206309%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl206225206316%_))
                                                       (let ((_%e206226206319%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl206225206316%_))))
                 (let ((_%hd206227206323%_
                        (let ()
                          (declare (not safe))
                          (##car _%e206226206319%_)))
                       (_%tl206228206326%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e206226206319%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd206227206323%_))
                       (let ((_%e206229206329%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd206227206323%_))))
                         (let ((_%hd206230206333%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206229206329%_)))
                               (_%tl206231206336%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206229206329%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl206231206336%_))
                               (let ((_%e206232206339%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl206231206336%_))))
                                 (let ((_%hd206233206343%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206232206339%_)))
                                       (_%tl206234206346%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206232206339%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd206233206343%_))
                                       (let ((_%e206235206349%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd206233206343%_))))
                                         (if (equal? _%e206235206349%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206234206346%_))
                                                 (let ((_%e206236206353%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206234206346%_))))
                                                   (let ((_%hd206237206357%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206236206353%_)))
                                                         (_%tl206238206360%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206236206353%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd206237206357%_))
                                                         (let ((_%e206239206363%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd206237206357%_))))
                   (let ((_%hd206240206367%_
                          (let ()
                            (declare (not safe))
                            (##car _%e206239206363%_)))
                         (_%tl206241206370%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e206239206363%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd206240206367%_))
                         (if (let ((__tmp207959 |gxc[1]#_g207960_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207959
                                _%hd206240206367%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206241206370%_))
                                 (let ((_%e206242206373%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206241206370%_))))
                                   (let ((_%hd206243206377%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206242206373%_)))
                                         (_%tl206244206380%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206242206373%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl206244206380%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl206238206360%_))
                                             (let ((_%e206245206383%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl206238206360%_))))
                                               (let ((_%hd206246206387%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206245206383%_)))
                                                     (_%tl206247206390%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206245206383%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd206246206387%_))
                                                     (let ((_%e206248206393%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd206246206387%_))))
                                                       (if (equal? _%e206248206393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl206247206390%_))
                       (let ((_%e206249206397%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl206247206390%_))))
                         (let ((_%hd206250206401%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e206249206397%_)))
                               (_%tl206251206404%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e206249206397%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd206250206401%_))
                               (let ((_%e206252206407%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd206250206401%_))))
                                 (let ((_%hd206253206411%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e206252206407%_)))
                                       (_%tl206254206414%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e206252206407%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd206253206411%_))
                                       (if (let ((__tmp207961
                                                  |gxc[1]#_g207962_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207961
                                              _%hd206253206411%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206254206414%_))
                                               (let ((_%e206255206417%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206254206414%_))))
                                                 (let ((_%hd206256206421%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206255206417%_)))
                                                       (_%tl206257206424%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206255206417%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl206257206424%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl206251206404%_))
                                                           (let ((_%e206258206427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl206251206404%_))))
                     (let ((_%hd206259206431%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206258206427%_)))
                           (_%tl206260206434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206258206427%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd206259206431%_))
                           (let ((_%e206261206437%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd206259206431%_))))
                             (if (equal? _%e206261206437%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl206260206434%_))
                                     (let ((_%e206262206441%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl206260206434%_))))
                                       (let ((_%hd206263206445%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206262206441%_)))
                                             (_%tl206264206448%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206262206441%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd206263206445%_))
                                             (let ((_%e206265206451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd206263206445%_))))
                                               (let ((_%hd206266206455%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e206265206451%_)))
                                                     (_%tl206267206458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e206265206451%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd206266206455%_))
                                                     (if (let ((__tmp207963
                                                                |gxc[1]#_g207964_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207963
                                                            _%hd206266206455%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl206267206458%_))
                     (let ((_%e206268206461%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl206267206458%_))))
                       (let ((_%hd206269206465%_
                              (let ()
                                (declare (not safe))
                                (##car _%e206268206461%_)))
                             (_%tl206270206468%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e206268206461%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl206270206468%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl206264206448%_))
                                 (let ((_%e206271206471%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl206264206448%_))))
                                   (let ((_%hd206272206475%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206271206471%_)))
                                         (_%tl206273206478%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206271206471%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd206272206475%_))
                                         (let ((_%e206274206481%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd206272206475%_))))
                                           (if (equal? _%e206274206481%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl206273206478%_))
                                                   (let ((_%e206275206485%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl206273206478%_))))
                                                     (let ((_%hd206276206489%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e206275206485%_)))
                                                           (_%tl206277206492%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e206275206485%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd206276206489%_))
                                                           (let ((_%e206278206495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd206276206489%_))))
                     (let ((_%hd206279206499%_
                            (let ()
                              (declare (not safe))
                              (##car _%e206278206495%_)))
                           (_%tl206280206502%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e206278206495%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd206279206499%_))
                           (if (let ((__tmp207965 |gxc[1]#_g207966_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207965
                                  _%hd206279206499%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl206280206502%_))
                                   (let ((_%e206281206505%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl206280206502%_))))
                                     (let ((_%hd206282206509%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e206281206505%_)))
                                           (_%tl206283206512%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e206281206505%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl206283206512%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl206277206492%_))
                                               (let ((_%e206284206515%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl206277206492%_))))
                                                 (let ((_%hd206285206519%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e206284206515%_)))
                                                       (_%tl206286206522%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e206284206515%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd206285206519%_))
                                                       (let ((_%e206287206525%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd206285206519%_))))
                 (if (equal? _%e206287206525%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl206286206522%_))
                         (let ((_%e206288206529%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl206286206522%_))))
                           (let ((_%hd206289206533%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e206288206529%_)))
                                 (_%tl206290206536%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e206288206529%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd206289206533%_))
                                 (let ((_%e206291206539%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd206289206533%_))))
                                   (let ((_%hd206292206543%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e206291206539%_)))
                                         (_%tl206293206546%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e206291206539%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd206292206543%_))
                                         (if (let ((__tmp207967
                                                    |gxc[1]#_g207968_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207967
                                                _%hd206292206543%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl206293206546%_))
                                                 (let ((_%e206294206549%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl206293206546%_))))
                                                   (let ((_%hd206295206553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e206294206549%_)))
                                                         (_%tl206296206556%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e206294206549%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl206296206556%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl206290206536%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl206228206326%_))
                         ((lambda (_%L206559%_
                                   _%L206561%_
                                   _%L206562%_
                                   _%L206563%_
                                   _%L206564%_
                                   _%L206565%_)
                            (let ((_%clause206636%_
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
                                                     (cons _%L206565%_ '()))
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
                                                 (cons _%L206563%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206559%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked206638%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L206561%_))))
                              (_%loop206180%_
                               _%rest206211%_
                               (let ((_%$e206640%_ _%unchecked206638%_))
                                 (if _%$e206640%_
                                     _%$e206640%_
                                     _%unchecked-proc206185%_))
                               (cons _%clause206636%_
                                     _%unchecked-clauses206186%_))))
                          _%hd206295206553%_
                          _%hd206282206509%_
                          _%hd206269206465%_
                          _%hd206256206421%_
                          _%hd206243206377%_
                          _%hd206224206313%_)
                         (_%g206215206302%_ _%g206216206306%_))
                     (_%g206215206302%_ _%g206216206306%_))
                 (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g206215206302%_
                                                  _%g206216206306%_))
                                             (_%g206215206302%_
                                              _%g206216206306%_))
                                         (_%g206215206302%_
                                          _%g206216206306%_))))
                                 (_%g206215206302%_ _%g206216206306%_))))
                         (_%g206215206302%_ _%g206216206306%_))
                     (_%g206215206302%_ _%g206216206306%_)))
               (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206215206302%_
                                                _%g206216206306%_))
                                           (_%g206215206302%_
                                            _%g206216206306%_))))
                                   (_%g206215206302%_ _%g206216206306%_))
                               (_%g206215206302%_ _%g206216206306%_))
                           (_%g206215206302%_ _%g206216206306%_))))
                   (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g206215206302%_
                                                    _%g206216206306%_))
                                               (_%g206215206302%_
                                                _%g206216206306%_)))
                                         (_%g206215206302%_
                                          _%g206216206306%_))))
                                 (_%g206215206302%_ _%g206216206306%_))
                             (_%g206215206302%_ _%g206216206306%_))))
                     (_%g206215206302%_ _%g206216206306%_))
                 (_%g206215206302%_ _%g206216206306%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206215206302%_
                                                      _%g206216206306%_))))
                                             (_%g206215206302%_
                                              _%g206216206306%_))))
                                     (_%g206215206302%_ _%g206216206306%_))
                                 (_%g206215206302%_ _%g206216206306%_)))
                           (_%g206215206302%_ _%g206216206306%_))))
                   (_%g206215206302%_ _%g206216206306%_))
               (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206215206302%_
                                                _%g206216206306%_))
                                           (_%g206215206302%_
                                            _%g206216206306%_))
                                       (_%g206215206302%_ _%g206216206306%_))))
                               (_%g206215206302%_ _%g206216206306%_))))
                       (_%g206215206302%_ _%g206216206306%_))
                   (_%g206215206302%_ _%g206216206306%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g206215206302%_
                                                      _%g206216206306%_))))
                                             (_%g206215206302%_
                                              _%g206216206306%_))
                                         (_%g206215206302%_
                                          _%g206216206306%_))))
                                 (_%g206215206302%_ _%g206216206306%_))
                             (_%g206215206302%_ _%g206216206306%_))
                         (_%g206215206302%_ _%g206216206306%_))))
                 (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g206215206302%_
                                                  _%g206216206306%_))
                                             (_%g206215206302%_
                                              _%g206216206306%_)))
                                       (_%g206215206302%_ _%g206216206306%_))))
                               (_%g206215206302%_ _%g206216206306%_))))
                       (_%g206215206302%_ _%g206216206306%_))))
               (_%g206215206302%_ _%g206216206306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206215206302%_
                                                _%g206216206306%_)))))
                                   (_%g206214206644%_ _%hd206213%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest206187206195%_))
                             (let ((_%hd206192206652%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest206187206195%_)))
                                   (_%tl206193206655%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest206187206195%_))))
                               (let* ((_%hd206658%_ _%hd206192206652%_)
                                      (_%rest206661%_ _%tl206193206655%_))
                                 (_%K206191206648%_
                                  _%rest206661%_
                                  _%hd206658%_)))
                             (_%else206189206207%_))))))
                (begin
                  (let ((_g207958_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207957_)
                               (##vector-length _g207957_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207958_ 2)))
                        (error "Context expects 2 values" _g207958_)))
                  (let ((_%unchecked-proc206664%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207957_ 0)))
                        (_%unchecked-clauses206666%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207957_ 1))))
                    (if _%unchecked-proc206664%_
                        (let* ((_%g206668206692%_
                                (lambda (_%g206669206688%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g206669206688%_))))
                               (_%g206667206779%_
                                (lambda (_%g206669206696%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g206669206696%_))
                                      (let ((_%e206672206699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g206669206696%_))))
                                        (let ((_%hd206673206703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206672206699%_)))
                                              (_%tl206674206706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206672206699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206674206706%_))
                                              (let ((_%e206675206709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206674206706%_))))
                                                (let ((_%hd206676206713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206675206709%_)))
                                                      (_%tl206677206716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206675206709%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd206676206713%_))
                                                      (let ((_g207969_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd206676206713%_ '0))))
                (begin
                  (let ((_g207970_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207969_)
                               (##vector-length _g207969_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207970_ 2)))
                        (error "Context expects 2 values" _g207970_)))
                  (let ((_%target206678206719%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207969_ 0)))
                        (_%tl206680206722%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207969_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206680206722%_))
                        (letrec ((_%loop206681206725%_
                                  (lambda (_%hd206679206729%_
                                           _%clause206685206732%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd206679206729%_))
                                        (let ((_%e206682206735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd206679206729%_))))
                                          (let ((_%lp-hd206683206739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e206682206735%_)))
                                                (_%lp-tl206684206742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e206682206735%_))))
                                            (_%loop206681206725%_
                                             _%lp-tl206684206742%_
                                             (cons _%lp-hd206683206739%_
                                                   _%clause206685206732%_))))
                                        (let ((_%clause206686206745%_
                                               (reverse _%clause206685206732%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206677206716%_))
                                              ((lambda (_%L206749%_
                                                        _%L206751%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206751%_
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
                                             (let ((__tmp207971
                                                    (lambda (_%g206770206773%_
                                                             _%g206771206776%_)
                                                      (cons _%g206770206773%_
                                                            _%g206771206776%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207971
                                                '()
                                                _%L206749%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause206686206745%_
                                               _%hd206673206703%_)
                                              (_%g206668206692%_
                                               _%g206669206696%_)))))))
                          (_%loop206681206725%_ _%target206678206719%_ '()))
                        (_%g206668206692%_ _%g206669206696%_)))))
              (_%g206668206692%_ _%g206669206696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206668206692%_
                                               _%g206669206696%_))))
                                      (_%g206668206692%_ _%g206669206696%_)))))
                          (_%g206667206779%_
                           (list _%unchecked-proc206664%_
                                 _%unchecked-clauses206666%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g206119206130%_))))
                                        (_%g206117206783%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205978%_
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
                                          _%L206099%_
                                          _%L206101%_))
                                       (let ((__tmp207972
                                              (lambda (_%g206786206790%_
                                                       _%g206787206793%_
                                                       _%g206788206795%_)
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
                                (cons _%g206787206793%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206786206790%_ '())))))
              _%g206788206795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207972
                                          '()
                                          _%L206099%_
                                          _%L206101%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig206025206093%_
                                    _%arity206026206096%_))))))
                   (_%loop206019206051%_ _%target206016206045%_ '() '()))
                 (_%g206012206038%_ _%g206013206042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g206012206038%_
                                                _%g206013206042%_)))))
                                   (_%g206011206798%_ _%signatures206009%_))
                                 (_%g205895205919%_ _%g205896205923%_)))
                           _%case-signature205913205972%_
                           _%hd205903205940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205908205952%_
                                                   _%target205905205946%_
                                                   '()))
                                                (_%g205895205919%_
                                                 _%g205896205923%_)))))
                                      (_%g205895205919%_ _%g205896205923%_))))
                              (_%g205895205919%_ _%g205896205923%_))))
                      (_%g205895205919%_ _%g205896205923%_)))))
          (_%g205894206802%_ _%stx205892%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206810%_)
        (let* ((_%__stx207792207793%_ _%$stx206810%_)
               (_%g206816206876%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207792207793%_)))))
          (let ((_%__kont207795207796%_
                 (lambda (_%L207098%_ _%L207100%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207100%_ '()))
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
                                                       (cons _%L207100%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207098%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207797207798%_
                 (lambda (_%L207023%_ _%L207025%_ _%L207026%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L207026%_ '()))
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
                                                       (cons _%L207026%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L207025%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L207023%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207799207800%_
                 (lambda (_%L206937%_ _%L206939%_ _%L206940%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206940%_ '()))
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
                                                       (cons _%L206940%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206939%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206937%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207792207793%_))
                (let ((_%e206820207054%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207792207793%_))))
                  (let ((_%tl206822207061%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206820207054%_)))
                        (_%hd206821207058%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206820207054%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206822207061%_))
                        (let ((_%e206823207064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206822207061%_))))
                          (let ((_%tl206825207071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206823207064%_)))
                                (_%hd206824207068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206823207064%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206824207068%_))
                                (let ((_%e206826207074%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206824207068%_))))
                                  (if (equal? _%e206826207074%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206825207071%_))
                                          (let ((_%e206827207078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206825207071%_))))
                                            (let ((_%tl206829207085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206827207078%_)))
                                                  (_%hd206828207082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206827207078%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206829207085%_))
                                                  (let ((_%e206830207088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206829207085%_))))
                                                    (let ((_%tl206832207095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206830207088%_)))
                                                          (_%hd206831207092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206830207088%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206832207095%_))
                                                          (_%__kont207795207796%_
                                                           _%hd206831207092%_
                                                           _%hd206828207082%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206816206876%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206816206876%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206816206876%_)))
                                      (if (equal? _%e206826207074%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206825207071%_))
                                              (let ((_%e206843206993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206825207071%_))))
                                                (let ((_%tl206845207000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206843206993%_)))
                                                      (_%hd206844206997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206843206993%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206845207000%_))
                                                      (let ((_%e206846207003%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206845207000%_))))
                (let ((_%tl206848207010%_
                       (let () (declare (not safe)) (##cdr _%e206846207003%_)))
                      (_%hd206847207007%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206846207003%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206848207010%_))
                      (let ((_%e206849207013%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206848207010%_))))
                        (let ((_%tl206851207020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206849207013%_)))
                              (_%hd206850207017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206849207013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206851207020%_))
                              (_%__kont207797207798%_
                               _%hd206850207017%_
                               _%hd206847207007%_
                               _%hd206844206997%_)
                              (let ()
                                (declare (not safe))
                                (_%g206816206876%_)))))
                      (let () (declare (not safe)) (_%g206816206876%_)))))
              (let () (declare (not safe)) (_%g206816206876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206816206876%_)))
                                          (if (equal? _%e206826207074%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206825207071%_))
                                                  (let ((_%e206862206907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206825207071%_))))
                                                    (let ((_%tl206864206914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206862206907%_)))
                                                          (_%hd206863206911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206862206907%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206864206914%_))
                                                          (let ((_%e206865206917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206864206914%_))))
                    (let ((_%tl206867206924%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206865206917%_)))
                          (_%hd206866206921%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206865206917%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206867206924%_))
                          (let ((_%e206868206927%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206867206924%_))))
                            (let ((_%tl206870206934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206868206927%_)))
                                  (_%hd206869206931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206868206927%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206870206934%_))
                                  (_%__kont207799207800%_
                                   _%hd206869206931%_
                                   _%hd206866206921%_
                                   _%hd206863206911%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206816206876%_)))))
                          (let () (declare (not safe)) (_%g206816206876%_)))))
                  (let () (declare (not safe)) (_%g206816206876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206816206876%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206816206876%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206816206876%_)))))
                        (let () (declare (not safe)) (_%g206816206876%_)))))
                (let () (declare (not safe)) (_%g206816206876%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx207122%_)
        (let* ((_%g207126207146%_
                (lambda (_%g207127207142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207127207142%_))))
               (_%g207125207217%_
                (lambda (_%g207127207150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207127207150%_))
                      (let ((_%e207129207153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207127207150%_))))
                        (let ((_%hd207130207157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207129207153%_)))
                              (_%tl207131207160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207129207153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207131207160%_))
                              (let ((_g207973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207131207160%_
                                        '0))))
                                (begin
                                  (let ((_g207974_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207973_)
                                               (##vector-length _g207973_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207974_ 2)))
                                        (error "Context expects 2 values"
                                               _g207974_)))
                                  (let ((_%target207132207163%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207973_ 0)))
                                        (_%tl207134207166%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207973_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207134207166%_))
                                        (letrec ((_%loop207135207169%_
                                                  (lambda (_%hd207133207173%_
                                                           _%decl207139207176%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207133207173%_))
                                                        (let ((_%e207136207179%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd207133207173%_))))
                  (let ((_%lp-hd207137207183%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207136207179%_)))
                        (_%lp-tl207138207186%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207136207179%_))))
                    (_%loop207135207169%_
                     _%lp-tl207138207186%_
                     (cons _%lp-hd207137207183%_ _%decl207139207176%_))))
                (let ((_%decl207140207189%_ (reverse _%decl207139207176%_)))
                  ((lambda (_%L207193%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207975
                                  (lambda (_%g207208207211%_ _%g207209207214%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g207208207211%_)
                                          _%g207209207214%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207975 '() _%L207193%_))))
                   _%decl207140207189%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207135207169%_
                                           _%target207132207163%_
                                           '()))
                                        (_%g207126207146%_
                                         _%g207127207150%_)))))
                              (_%g207126207146%_ _%g207127207150%_))))
                      (_%g207126207146%_ _%g207127207150%_)))))
          (_%g207125207217%_ _%$stx207122%_))))))
