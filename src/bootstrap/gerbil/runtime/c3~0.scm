(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1770342546)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords116843%_
               _%get-precedence-list116837116844%_
               _%struct?116838116845%_
               _%eq116839116846%_
               _%get-name116840116847%_
               _%rhead116848%_
               _%supers116849%_)
        (let* ((_%get-precedence-list116851%_
                (if (eq? _%get-precedence-list116837116844%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%get-precedence-list116837116844%_))
               (_%struct?116853%_
                (if (eq? _%struct?116838116845%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%struct?116838116845%_))
               (_%eq116855%_
                (if (eq? _%eq116839116846%_ absent-value)
                    eq?
                    _%eq116839116846%_))
               (_%get-name116857%_
                (if (eq? _%get-name116840116847%_ absent-value)
                    identity
                    _%get-name116840116847%_)))
          (if (null? _%supers116849%_)
              (values (reverse _%rhead116848%_) '#f)
              (if (null? (cdr _%supers116849%_))
                  (let ((_%pl116862%_
                         (_%get-precedence-list116851%_
                          (car _%supers116849%_))))
                    (values (append-reverse _%rhead116848%_ _%pl116862%_)
                            (let ()
                              (declare (not safe))
                              (find _%struct?116853%_ _%pl116862%_))))
                  (let ((_%pls116865%_
                         (map _%get-precedence-list116851%_ _%supers116849%_))
                        (_%sis116866%_ '()))
                    (letrec* ((_%get-names116868%_
                               (lambda (_%lst117145%_)
                                 (map _%get-name116857%_ _%lst117145%_)))
                              (_%err116869%_
                               (lambda _%a117143%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names116868%_
                                         (reverse _%rhead116848%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names116868%_
                                                 _%pls116865%_))
                                        'single-inheritance-suffix:
                                        (_%get-names116868%_ _%sis116866%_)
                                        _%a117143%_)))
                              (_%eqlist?116870%_
                               (lambda (_%l1117137%_ _%l2117138%_)
                                 (let ((_%$e117140%_
                                        (eq? _%l1117137%_ _%l2117138%_)))
                                   (if _%$e117140%_
                                       _%$e117140%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap2 _%eq116855%_
                                                      _%l1117137%_
                                                      _%l2117138%_))
                                           (let ((__tmp117193
                                                  (length _%l1117137%_))
                                                 (__tmp117192
                                                  (length _%l2117138%_)))
                                             (declare (not safe))
                                             (##fx= __tmp117193 __tmp117192))
                                           '#f)))))
                              (_%merge-sis!116871%_
                               (lambda (_%sis2117122%_)
                                 (if (null? _%sis2117122%_)
                                     '#!void
                                     (if (null? _%sis116866%_)
                                         (set! _%sis116866%_ _%sis2117122%_)
                                         (let _%loop117127%_ ((_%t1117129%_
                                                               _%sis116866%_)
                                                              (_%t2117130%_
                                                               _%sis2117122%_))
                                           (if (_%eqlist?116870%_
                                                _%t1117129%_
                                                _%sis2117122%_)
                                               '#!void
                                               (if (_%eqlist?116870%_
                                                    _%t2117130%_
                                                    _%sis116866%_)
                                                   (set! _%sis116866%_
                                                         _%sis2117122%_)
                                                   (if (null? _%t1117129%_)
                                                       (if (member (car _%sis116866%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2117130%_
                           _%eq116855%_)
                   (set! _%sis116866%_ _%sis2117122%_)
                   (_%err116869%_
                    'struct-incompatibility:
                    (cons (_%get-names116868%_ _%sis116866%_)
                          (cons (_%get-names116868%_ _%sis2117122%_) '()))))
               (if (null? _%t2117130%_)
                   (if (member (car _%sis2117122%_) _%t1117129%_ _%eq116855%_)
                       '#!void
                       (_%err116869%_
                        'struct-incompatibility:
                        (cons (_%get-names116868%_ _%sis116866%_)
                              (cons (_%get-names116868%_ _%sis2117122%_)
                                    '()))))
                   (_%loop117127%_
                    (cdr _%t1117129%_)
                    (cdr _%t2117130%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls116872%_
                               (let ((__tmp117194
                                      (lambda (_%pl117117%_)
                                        (let ((_g117195_
                                               (let ()
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  _%struct?116853%_
                                                  _%pl117117%_
                                                  '()))))
                                          (begin
                                            (let ((_g117196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g117195_)
                                                         (##values-length
                                                          _g117195_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g117196_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g117196_)))
                                            (let ((_%tl117119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g117195_
                                                      0)))
                                                  (_%rh117120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g117195_
                                                      1))))
                                              (begin
                                                (_%merge-sis!116871%_
                                                 _%tl117119%_)
                                                _%rh117120%_)))))))
                                 (declare (not safe))
                                 (##map __tmp117194 _%pls116865%_)))
                              (_%unsisr-rpl116873%_
                               (lambda (_%rpl117063%_)
                                 (let _%u117065%_ ((_%pl-rhead117067%_
                                                    _%rpl117063%_)
                                                   (_%pl-tail117068%_ '())
                                                   (_%sis-rhead117069%_
                                                    (reverse _%sis116866%_))
                                                   (_%sis-tail117070%_ '()))
                                   (let* ((_%pl-rhead117071117080%_
                                           _%pl-rhead117067%_)
                                          (_%E117074117084%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%pl-rhead117071117080%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%K117078117114%_
                                            (lambda () _%pl-tail117068%_))
                                           (_%K117075117098%_
                                            (lambda (_%plrh117088%_
                                                     _%c117089%_)
                                              (if (member _%c117089%_
                                                          _%sis-tail117070%_
                                                          _%eq116855%_)
                                                  (_%err116869%_
                                                   'precedence-list-head:
                                                   (_%get-names116868%_
                                                    (reverse _%pl-rhead117067%_))
                                                   'precedence-list-tail:
                                                   (_%get-names116868%_
                                                    _%pl-tail117068%_)
                                                   'single-inheritance-head:
                                                   (_%get-names116868%_
                                                    (reverse _%sis-rhead117069%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names116868%_
                                                    _%sis-tail117070%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name116857%_
                                                    _%c117089%_))
                                                  (let ((_g117197_
                                                         (let ((__tmp117199
                                                                (lambda (_%g117090117092%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%eq116855%_ _%c117089%_ _%g117090117092%_))))
                   (declare (not safe))
                   (__append-reverse-until
                    __tmp117199
                    _%sis-rhead117069%_
                    _%sis-tail117070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g117198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g117197_)
                           (##values-length _g117197_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g117198_ 2)))
                    (error "Context expects 2 values" _g117198_)))
              (let ((_%sis-rh2117095%_
                     (let () (declare (not safe)) (##values-ref _g117197_ 0)))
                    (_%sis-tl2117096%_
                     (let () (declare (not safe)) (##values-ref _g117197_ 1))))
                (if (null? _%sis-rh2117095%_)
                    (_%u117065%_
                     _%plrh117088%_
                     (cons _%c117089%_ _%pl-tail117068%_)
                     '()
                     _%sis-tl2117096%_)
                    (_%u117065%_
                     _%plrh117088%_
                     _%pl-tail117068%_
                     (cdr _%sis-rh2117095%_)
                     _%sis-tl2117096%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%try-match117073117110%_
                                              (lambda ()
                                                (if (pair? _%pl-rhead117071117080%_)
                                                    (let ((_%tl117077117103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%pl-rhead117071117080%_)))
                                                          (_%hd117076117101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%pl-rhead117071117080%_))))
                                                      (let ((_%c117106%_
                                                             _%hd117076117101%_)
                                                            (_%plrh117108%_
                                                             _%tl117077117103%_))
                                                        (_%K117075117098%_
                                                         _%plrh117108%_
                                                         _%c117106%_)))
                                                    (_%E117074117084%_)))))
                                         (if (null? _%pl-rhead117071117080%_)
                                             (_%K117078117114%_)
                                             (_%try-match117073117110%_))))))))
                              (_g117200_
                               (let ((_g117201_
                                      (let ((__tmp117203
                                             (reverse _%supers116849%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls116872%_
                                         __tmp117203))))
                                 #!void
                                 _g117201_))
                              (_%hpls116874%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl116873%_ _%rpls116872%_)))
                              (_%c3-select-next116875%_
                               (lambda (_%tails117013%_)
                                 (let ((_%candidate?117019%_
                                        (lambda (_%c117015%_)
                                          (let ((__tmp117204
                                                 (lambda (_%tail117017%_)
                                                   (not (member _%c117015%_
                                                                (cdr _%tail117017%_)
                                                                _%eq116855%_)))))
                                            (declare (not safe))
                                            (__andmap1
                                             __tmp117204
                                             _%tails117013%_)))))
                                   (let _%loop117021%_ ((_%ts117023%_
                                                         _%tails117013%_))
                                     (let* ((_%ts117024117034%_ _%ts117023%_)
                                            (_%else117026117042%_
                                             (lambda () (_%err116869%_)))
                                            (_%K117028117048%_
                                             (lambda (_%rts117045%_
                                                      _%c117046%_)
                                               (if (_%candidate?117019%_
                                                    _%c117046%_)
                                                   _%c117046%_
                                                   (_%loop117021%_
                                                    _%rts117045%_)))))
                                       (if (pair? _%ts117024117034%_)
                                           (let ((_%hd117029117051%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%ts117024117034%_)))
                                                 (_%tl117030117053%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%ts117024117034%_))))
                                             (if (pair? _%hd117029117051%_)
                                                 (let* ((_%hd117031117056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd117029117051%_)))
                                                        (_%c117059%_
                                                         _%hd117031117056%_)
                                                        (_%rts117061%_
                                                         _%tl117030117053%_))
                                                   (_%K117028117048%_
                                                    _%rts117061%_
                                                    _%c117059%_))
                                                 (_%err116869%_)))
                                           (_%err116869%_)))))))
                              (_%remove-next!116876%_
                               (lambda (_%next116958%_ _%tails116959%_)
                                 (let _%loop116961%_ ((_%t116963%_
                                                       _%tails116959%_))
                                   (let* ((_%t116964116975%_ _%t116963%_)
                                          (_%E116967116979%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%t116964116975%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%K116973117010%_
                                            (lambda () _%tails116959%_))
                                           (_%K116968116987%_
                                            (lambda (_%more116983%_
                                                     _%tail116984%_
                                                     _%head116985%_)
                                              (if (_%eq116855%_
                                                   _%head116985%_
                                                   _%next116958%_)
                                                  (set-car!
                                                   _%t116963%_
                                                   _%tail116984%_)
                                                  '#!void)
                                              (_%loop116961%_
                                               _%more116983%_))))
                                       (let ((_%try-match116966117006%_
                                              (lambda ()
                                                (if (pair? _%t116964116975%_)
                                                    (let ((_%tl116970116992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%t116964116975%_)))
                                                          (_%hd116969116990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%t116964116975%_))))
                                                      (if (pair? _%hd116969116990%_)
                                                          (let ((_%tl116972116997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd116969116990%_)))
                        (_%hd116971116995%_
                         (let ()
                           (declare (not safe))
                           (##car _%hd116969116990%_))))
                    (let ((_%head117000%_ _%hd116971116995%_)
                          (_%tail117002%_ _%tl116972116997%_)
                          (_%more117004%_ _%tl116970116992%_))
                      (_%K116968116987%_
                       _%more117004%_
                       _%tail117002%_
                       _%head117000%_)))
                  (_%E116967116979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116967116979%_)))))
                                         (if (null? _%t116964116975%_)
                                             (_%K116973117010%_)
                                             (_%try-match116966117006%_))))))))
                              (_%precedence-list116877%_
                               (let _%c3loop116908%_ ((_%rhead116910%_
                                                       _%rhead116848%_)
                                                      (_%tails116911%_
                                                       _%hpls116874%_))
                                 (let* ((_%tails116913%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails116911%_)))
                                        (_%tails116914116924%_ _%tails116913%_)
                                        (_%else116917116935%_
                                         (lambda ()
                                           (let ((_%next116932%_
                                                  (_%c3-select-next116875%_
                                                   _%tails116913%_)))
                                             (_%c3loop116908%_
                                              (cons _%next116932%_
                                                    _%rhead116910%_)
                                              (_%remove-next!116876%_
                                               _%next116932%_
                                               _%tails116913%_))))))
                                   (let ((_%K116922116955%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead116910%_
                                             _%sis116866%_)))
                                         (_%K116919116941%_
                                          (lambda (_%tail116939%_)
                                            (append-reverse
                                             _%rhead116910%_
                                             (append _%tail116939%_
                                                     _%sis116866%_)))))
                                     (let ((_%try-match116916116951%_
                                            (lambda ()
                                              (if (pair? _%tails116914116924%_)
                                                  (let ((_%tl116921116946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tails116914116924%_)))
                                                        (_%hd116920116944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tails116914116924%_))))
                                                    (if (null? _%tl116921116946%_)
                                                        (let ((_%tail116949%_
                                                               _%hd116920116944%_))
                                                          (_%K116919116941%_
                                                           _%tail116949%_))
                                                        (_%else116917116935%_)))
                                                  (_%else116917116935%_)))))
                                       (if (null? _%tails116914116924%_)
                                           (_%K116922116955%_)
                                           (_%try-match116916116951%_)))))))
                              (_%super-struct116878%_
                               (let* ((_%sis116879116887%_ _%sis116866%_)
                                      (_%else116881116895%_ (lambda () '#f))
                                      (_%K116883116900%_
                                       (lambda (_%s116898%_) _%s116898%_)))
                                 (if (pair? _%sis116879116887%_)
                                     (let* ((_%hd116884116903%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%sis116879116887%_)))
                                            (_%s116906%_ _%hd116884116903%_))
                                       (_%K116883116900%_ _%s116906%_))
                                     (_%else116881116895%_)))))
                      (values _%precedence-list116877%_
                              _%super-struct116878%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords117150%_ . _%args117151%_)
        (apply c4-linearize__%
               _%@@keywords117150%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords117150%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords117150%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords117150%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords117150%_
                  'get-name:
                  absent-value))
               _%args117151%_)))
    (define c4-linearize
      (lambda _%args116841117157%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%args116841117157%_)))))
