(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1781138347)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords121880%_
               _%$%get-precedence-list121874121881%_
               _%$%struct?121875121882%_
               _%$%eq121876121883%_
               _%$%get-name121877121884%_
               _%rhead121885%_
               _%supers121886%_)
        (let* ((_%get-precedence-list121888%_
                (if (eq? _%$%get-precedence-list121874121881%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list121874121881%_))
               (_%struct?121890%_
                (if (eq? _%$%struct?121875121882%_ absent-value)
                    (error '"Missing required keyword argument" 'struct:)
                    _%$%struct?121875121882%_))
               (_%eq121892%_
                (if (eq? _%$%eq121876121883%_ absent-value)
                    eq?
                    _%$%eq121876121883%_))
               (_%get-name121894%_
                (if (eq? _%$%get-name121877121884%_ absent-value)
                    identity
                    _%$%get-name121877121884%_)))
          (if (null? _%supers121886%_)
              (values (reverse _%rhead121885%_) '#f)
              (if (null? (cdr _%supers121886%_))
                  (let ((_%pl121899%_
                         (_%get-precedence-list121888%_
                          (car _%supers121886%_))))
                    (values (append-reverse _%rhead121885%_ _%pl121899%_)
                            (let* ((_%pred121901%_ _%struct?121890%_)
                                   (_%lst121904%_ _%pl121899%_))
                              (if (procedure? _%pred121901%_)
                                  (let ((_%pred121909%_ _%pred121901%_))
                                    (declare (not safe))
                                    (__find _%pred121909%_ _%lst121904%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/c3
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%pred121901%_)
                                    '#!void)))))
                  (let ((_%pls121929%_
                         (map _%get-precedence-list121888%_ _%supers121886%_))
                        (_%sis121930%_ '()))
                    (letrec* ((_%get-names121932%_
                               (lambda (_%lst122266%_)
                                 (map _%get-name121894%_ _%lst122266%_)))
                              (_%err121933%_
                               (lambda _%a122264%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names121932%_
                                         (reverse _%rhead121885%_))
                                        'precedence-lists:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names121932%_
                                                 _%pls121929%_))
                                        'single-inheritance-suffix:
                                        (_%get-names121932%_ _%sis121930%_)
                                        _%a122264%_)))
                              (_%eqlist?121934%_
                               (lambda (_%l1122258%_ _%l2122259%_)
                                 (let ((_%$e122261%_
                                        (eq? _%l1122258%_ _%l2122259%_)))
                                   (if _%$e122261%_
                                       _%$e122261%_
                                       (if (let ()
                                             (declare (not safe))
                                             (andmap__1
                                              _%eq121892%_
                                              _%l1122258%_
                                              _%l2122259%_))
                                           (let ((__tmp122314
                                                  (length _%l1122258%_))
                                                 (__tmp122313
                                                  (length _%l2122259%_)))
                                             (declare (not safe))
                                             (##fx= __tmp122314 __tmp122313))
                                           '#f)))))
                              (_%merge-sis!121935%_
                               (lambda (_%sis2122243%_)
                                 (if (null? _%sis2122243%_)
                                     '#!void
                                     (if (null? _%sis121930%_)
                                         (set! _%sis121930%_ _%sis2122243%_)
                                         (let _%loop122248%_ ((_%t1122250%_
                                                               _%sis121930%_)
                                                              (_%t2122251%_
                                                               _%sis2122243%_))
                                           (if (_%eqlist?121934%_
                                                _%t1122250%_
                                                _%sis2122243%_)
                                               '#!void
                                               (if (_%eqlist?121934%_
                                                    _%t2122251%_
                                                    _%sis121930%_)
                                                   (set! _%sis121930%_
                                                         _%sis2122243%_)
                                                   (if (null? _%t1122250%_)
                                                       (if (member (car _%sis121930%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%t2122251%_
                           _%eq121892%_)
                   (set! _%sis121930%_ _%sis2122243%_)
                   (_%err121933%_
                    'struct-incompatibility:
                    (cons (_%get-names121932%_ _%sis121930%_)
                          (cons (_%get-names121932%_ _%sis2122243%_) '()))))
               (if (null? _%t2122251%_)
                   (if (member (car _%sis2122243%_) _%t1122250%_ _%eq121892%_)
                       '#!void
                       (_%err121933%_
                        'struct-incompatibility:
                        (cons (_%get-names121932%_ _%sis121930%_)
                              (cons (_%get-names121932%_ _%sis2122243%_)
                                    '()))))
                   (_%loop122248%_
                    (cdr _%t1122250%_)
                    (cdr _%t2122251%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%rpls121936%_
                               (let ((__tmp122315
                                      (lambda (_%pl122214%_)
                                        (let ((_g122316_
                                               (let* ((_%pred122216%_
                                                       _%struct?121890%_)
                                                      (_%rhead122219%_
                                                       _%pl122214%_)
                                                      (_%tail122222%_ '()))
                                                 (if (procedure?
                                                      _%pred122216%_)
                                                     (let ((_%pred122227%_
                                                            _%pred122216%_))
                                                       (declare (not safe))
                                                       (__append-reverse-until
                                                        _%pred122227%_
                                                        _%rhead122219%_
                                                        _%tail122222%_))
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/c3
                                                        'contract:
                                                        'procedure?
                                                        'value:
                                                        _%pred122216%_)
                                                       '#!void)))))
                                          (begin
                                            (let ((_g122317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g122316_)
                                                         (##values-length
                                                          _g122316_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g122317_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g122317_)))
                                            (let ((_%tl122240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122316_
                                                      0)))
                                                  (_%rh122241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g122316_
                                                      1))))
                                              (begin
                                                (_%merge-sis!121935%_
                                                 _%tl122240%_)
                                                _%rh122241%_)))))))
                                 (declare (not safe))
                                 (##map __tmp122315 _%pls121929%_)))
                              (_%unsisr-rpl121937%_
                               (lambda (_%rpl122127%_)
                                 (let _%u122129%_ ((_%pl-rhead122131%_
                                                    _%rpl122127%_)
                                                   (_%pl-tail122132%_ '())
                                                   (_%sis-rhead122133%_
                                                    (reverse _%sis121930%_))
                                                   (_%sis-tail122134%_ '()))
                                   (let* ((_%$%pl-rhead122135122144%_
                                           _%pl-rhead122131%_)
                                          (_%$%E122138122148%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%pl-rhead122135122144%_
                                                    '([])
                                                    '([c . plrh]))
                                             '#!void)))
                                     (let ((_%$%K122142122211%_
                                            (lambda () _%pl-tail122132%_))
                                           (_%$%K122139122195%_
                                            (lambda (_%plrh122152%_
                                                     _%c122153%_)
                                              (if (member _%c122153%_
                                                          _%sis-tail122134%_
                                                          _%eq121892%_)
                                                  (_%err121933%_
                                                   'precedence-list-head:
                                                   (_%get-names121932%_
                                                    (reverse _%pl-rhead122131%_))
                                                   'precedence-list-tail:
                                                   (_%get-names121932%_
                                                    _%pl-tail122132%_)
                                                   'single-inheritance-head:
                                                   (_%get-names121932%_
                                                    (reverse _%sis-rhead122133%_))
                                                   'single-inheritance-tail:
                                                   (_%get-names121932%_
                                                    _%sis-tail122134%_)
                                                   'super-out-of-order-vs-single-inheritance-tail:
                                                   (_%get-name121894%_
                                                    _%c122153%_))
                                                  (let ((_g122318_
                                                         (let* ((_%pred122159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g122154122156%_)
                           (_%eq121892%_ _%c122153%_ _%$%g122154122156%_)))
                        (_%rhead122162%_ _%sis-rhead122133%_)
                        (_%tail122165%_ _%sis-tail122134%_)
                        (_%pred122170%_ _%pred122159%_))
                   (declare (not safe))
                   (__append-reverse-until
                    _%pred122170%_
                    _%rhead122162%_
                    _%tail122165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g122319_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g122318_)
                           (##values-length _g122318_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g122319_ 2)))
                    (error "Context expects 2 values" _g122319_)))
              (let ((_%sis-rh2122192%_
                     (let () (declare (not safe)) (##values-ref _g122318_ 0)))
                    (_%sis-tl2122193%_
                     (let () (declare (not safe)) (##values-ref _g122318_ 1))))
                (if (null? _%sis-rh2122192%_)
                    (_%u122129%_
                     _%plrh122152%_
                     (cons _%c122153%_ _%pl-tail122132%_)
                     '()
                     _%sis-tl2122193%_)
                    (_%u122129%_
                     _%plrh122152%_
                     _%pl-tail122132%_
                     (cdr _%sis-rh2122192%_)
                     _%sis-tl2122193%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match122137122207%_
                                              (lambda ()
                                                (if (pair? _%$%pl-rhead122135122144%_)
                                                    (let ((_%$%tl122141122200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%pl-rhead122135122144%_)))
                                                          (_%$%hd122140122198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%pl-rhead122135122144%_))))
                                                      (let ((_%c122203%_
                                                             _%$%hd122140122198%_)
                                                            (_%plrh122205%_
                                                             _%$%tl122141122200%_))
                                                        (_%$%K122139122195%_
                                                         _%plrh122205%_
                                                         _%c122203%_)))
                                                    (_%$%E122138122148%_)))))
                                         (if (null? _%$%pl-rhead122135122144%_)
                                             (_%$%K122142122211%_)
                                             (_%$%try-match122137122207%_))))))))
                              (_g122320_
                               (let ((_g122321_
                                      (let ((__tmp122323
                                             (reverse _%supers121886%_)))
                                        (declare (not safe))
                                        (append1!
                                         _%rpls121936%_
                                         __tmp122323))))
                                 #!void
                                 _g122321_))
                              (_%hpls121938%_
                               (let ()
                                 (declare (not safe))
                                 (##map _%unsisr-rpl121937%_ _%rpls121936%_)))
                              (_%c3-select-next121939%_
                               (lambda (_%tails122077%_)
                                 (let ((_%candidate?122083%_
                                        (lambda (_%c122079%_)
                                          (let ((__tmp122324
                                                 (lambda (_%tail122081%_)
                                                   (not (member _%c122079%_
                                                                (cdr _%tail122081%_)
                                                                _%eq121892%_)))))
                                            (declare (not safe))
                                            (andmap__0
                                             __tmp122324
                                             _%tails122077%_)))))
                                   (let _%loop122085%_ ((_%ts122087%_
                                                         _%tails122077%_))
                                     (let* ((_%$%ts122088122098%_ _%ts122087%_)
                                            (_%$%else122090122106%_
                                             (lambda () (_%err121933%_)))
                                            (_%$%K122092122112%_
                                             (lambda (_%rts122109%_
                                                      _%c122110%_)
                                               (if (_%candidate?122083%_
                                                    _%c122110%_)
                                                   _%c122110%_
                                                   (_%loop122085%_
                                                    _%rts122109%_)))))
                                       (if (pair? _%$%ts122088122098%_)
                                           (let ((_%$%hd122093122115%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%ts122088122098%_)))
                                                 (_%$%tl122094122117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%ts122088122098%_))))
                                             (if (pair? _%$%hd122093122115%_)
                                                 (let* ((_%$%hd122095122120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%hd122093122115%_)))
                                                        (_%c122123%_
                                                         _%$%hd122095122120%_)
                                                        (_%rts122125%_
                                                         _%$%tl122094122117%_))
                                                   (_%$%K122092122112%_
                                                    _%rts122125%_
                                                    _%c122123%_))
                                                 (_%err121933%_)))
                                           (_%err121933%_)))))))
                              (_%remove-next!121940%_
                               (lambda (_%next122022%_ _%tails122023%_)
                                 (let _%loop122025%_ ((_%t122027%_
                                                       _%tails122023%_))
                                   (let* ((_%$%t122028122039%_ _%t122027%_)
                                          (_%$%E122031122043%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t122028122039%_
                                                    '([])
                                                    '([[head . tail] . more]))
                                             '#!void)))
                                     (let ((_%$%K122037122074%_
                                            (lambda () _%tails122023%_))
                                           (_%$%K122032122051%_
                                            (lambda (_%more122047%_
                                                     _%tail122048%_
                                                     _%head122049%_)
                                              (if (_%eq121892%_
                                                   _%head122049%_
                                                   _%next122022%_)
                                                  (set-car!
                                                   _%t122027%_
                                                   _%tail122048%_)
                                                  '#!void)
                                              (_%loop122025%_
                                               _%more122047%_))))
                                       (let ((_%$%try-match122030122070%_
                                              (lambda ()
                                                (if (pair? _%$%t122028122039%_)
                                                    (let ((_%$%tl122034122056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%t122028122039%_)))
                                                          (_%$%hd122033122054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%t122028122039%_))))
                                                      (if (pair? _%$%hd122033122054%_)
                                                          (let ((_%$%tl122036122061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd122033122054%_)))
                        (_%$%hd122035122059%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd122033122054%_))))
                    (let ((_%head122064%_ _%$%hd122035122059%_)
                          (_%tail122066%_ _%$%tl122036122061%_)
                          (_%more122068%_ _%$%tl122034122056%_))
                      (_%$%K122032122051%_
                       _%more122068%_
                       _%tail122066%_
                       _%head122064%_)))
                  (_%$%E122031122043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E122031122043%_)))))
                                         (if (null? _%$%t122028122039%_)
                                             (_%$%K122037122074%_)
                                             (_%$%try-match122030122070%_))))))))
                              (_%precedence-list121941%_
                               (let _%c3loop121972%_ ((_%rhead121974%_
                                                       _%rhead121885%_)
                                                      (_%tails121975%_
                                                       _%hpls121938%_))
                                 (let* ((_%tails121977%_
                                         (let ()
                                           (declare (not safe))
                                           (remove-nulls! _%tails121975%_)))
                                        (_%$%tails121978121988%_
                                         _%tails121977%_)
                                        (_%$%else121981121999%_
                                         (lambda ()
                                           (let ((_%next121996%_
                                                  (_%c3-select-next121939%_
                                                   _%tails121977%_)))
                                             (_%c3loop121972%_
                                              (cons _%next121996%_
                                                    _%rhead121974%_)
                                              (_%remove-next!121940%_
                                               _%next121996%_
                                               _%tails121977%_))))))
                                   (let ((_%$%K121986122019%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead121974%_
                                             _%sis121930%_)))
                                         (_%$%K121983122005%_
                                          (lambda (_%tail122003%_)
                                            (append-reverse
                                             _%rhead121974%_
                                             (append _%tail122003%_
                                                     _%sis121930%_)))))
                                     (let ((_%$%try-match121980122015%_
                                            (lambda ()
                                              (if (pair? _%$%tails121978121988%_)
                                                  (let ((_%$%tl121985122010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails121978121988%_)))
                                                        (_%$%hd121984122008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails121978121988%_))))
                                                    (if (null? _%$%tl121985122010%_)
                                                        (let ((_%tail122013%_
                                                               _%$%hd121984122008%_))
                                                          (_%$%K121983122005%_
                                                           _%tail122013%_))
                                                        (_%$%else121981121999%_)))
                                                  (_%$%else121981121999%_)))))
                                       (if (null? _%$%tails121978121988%_)
                                           (_%$%K121986122019%_)
                                           (_%$%try-match121980122015%_)))))))
                              (_%super-struct121942%_
                               (let* ((_%$%sis121943121951%_ _%sis121930%_)
                                      (_%$%else121945121959%_ (lambda () '#f))
                                      (_%$%K121947121964%_
                                       (lambda (_%s121962%_) _%s121962%_)))
                                 (if (pair? _%$%sis121943121951%_)
                                     (let* ((_%$%hd121948121967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%sis121943121951%_)))
                                            (_%s121970%_ _%$%hd121948121967%_))
                                       (_%$%K121947121964%_ _%s121970%_))
                                     (_%$%else121945121959%_)))))
                      (values _%precedence-list121941%_
                              _%super-struct121942%_))))))))
    (define c4-linearize__@
      (lambda (_%@@keywords122271%_ . _%args122272%_)
        (apply c4-linearize__%
               _%@@keywords122271%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122271%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122271%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords122271%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords122271%_
                  'get-name:
                  absent-value))
               _%args122272%_)))
    (define c4-linearize
      (lambda _%$%args121878122278%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args121878122278%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list121828%_
               _%direct-slot-list121829%_
               _%mixin-slot-names121830%_
               _%result121831%_)
        (let* ((_%next-slot121833%_ '1)
               (_%slot-table121835%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots121837%_ (cons 'class '()))
               (_%process-slot121862%_
                (lambda (_%slot121839%_)
                  (if (symbol? _%slot121839%_)
                      '#!void
                      (error '"invalid slot name" _%slot121839%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table121835%_
                              _%slot121839%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121835%_
                           _%slot121839%_
                           _%next-slot121833%_))
                        (let ((__tmp122325
                               (let ((_%sym121841%_ _%slot121839%_))
                                 (if (symbol? _%sym121841%_)
                                     (let ((_%sym121846%_ _%sym121841%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym121846%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym121841%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table121835%_
                           __tmp122325
                           _%next-slot121833%_))
                        (set! _%r-slots121837%_
                              (cons _%slot121839%_ _%r-slots121837%_))
                        (set! _%next-slot121833%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot121833%_ '1))))
                      '#!void)))
               (_%process-slots121868%_
                (lambda (_%$%g121863121865%_)
                  (for-each _%process-slot121862%_ _%$%g121863121865%_))))
          (let ((__tmp122327
                 (lambda (_%mixin121871%_)
                   (_%process-slots121868%_
                    (_%mixin-slot-names121830%_ _%mixin121871%_))))
                (__tmp122326 (reverse _%precedence-list121828%_)))
            (declare (not safe))
            (##for-each __tmp122327 __tmp122326))
          (_%process-slots121868%_ _%direct-slot-list121829%_)
          (_%result121831%_
           (reverse! _%r-slots121837%_)
           _%slot-table121835%_))))))
