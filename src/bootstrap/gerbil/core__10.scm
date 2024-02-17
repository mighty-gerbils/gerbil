(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49993_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49994_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50051_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50052_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50053_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50055_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50056_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50057_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50058_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50059_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50060_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50061_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50062_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50063_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50064_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50457_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50541_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50561_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50562_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50691_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50692_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50693_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50694_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50695_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp49977 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp49977
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30641_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30641_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30638_)
        (if (gx#identifier? _stx30638_)
            (let ((__tmp49978 (gx#syntax-local-value _stx30638_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49978))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28944_ _match-stx28946_)
        (letrec ((_parse128948_
                  (lambda (_hd29301_)
                    (let* ((___stx4487744878_ _hd29301_)
                           (_g2932729469_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4487744878_))))
                      (let ((___kont4488044881_
                             (lambda (_L30401_ _L30403_)
                               (let* ((___stx4479744798_ _L30401_)
                                      (_g3042030453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4479744798_))))
                                 (let ((___kont4480044801_
                                        (lambda ()
                                          (let ((__tmp49979
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30403_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49979))))
                                       (___kont4480244803_
                                        (lambda (_L30594_)
                                          (let ((__tmp49980
                                                 (let ((__tmp49981
                                                        (let ((__tmp49982
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128948_ _L30594_))))
                  (declare (not safe))
                  (cons __tmp49982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49981))))
                                            (declare (not safe))
                                            (cons '?: __tmp49980))))
                                       (___kont4480444805_
                                        (lambda (_L30564_)
                                          (let ((__tmp49983
                                                 (let ((__tmp49984
                                                        (let ((__tmp49985
                                                               (let ((__tmp49986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128948_ _L30564_))))
                         (declare (not safe))
                         (cons __tmp49986 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49984))))
                                            (declare (not safe))
                                            (cons '?: __tmp49983))))
                                       (___kont4480644807_
                                        (lambda (_L30515_ _L30517_)
                                          (let ((__tmp49987
                                                 (let ((__tmp49988
                                                        (let ((__tmp49989
                                                               (let ((__tmp49990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49991
                                     (let ((__tmp49992
                                            (let ()
                                              (declare (not safe))
                                              (_parse128948_ _L30515_))))
                                       (declare (not safe))
                                       (cons __tmp49992 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49991))))
                         (declare (not safe))
                         (cons _L30517_ __tmp49990))))
                  (declare (not safe))
                  (cons ':: __tmp49989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49988))))
                                            (declare (not safe))
                                            (cons '?: __tmp49987))))
                                       (___kont4480844809_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28955_ _hd29301_)))))
                                   (let ((_g3041630605_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4479744798_)
                                                (let ((_e3042530584_
                                                       (gx#syntax-e
                                                        ___stx4479744798_)))
                                                  (let ((_tl3042330591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3042530584_)))
                                                        (_hd3042430588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3042530584_))))
                                                    (if (gx#stx-null?
                                                         _tl3042330591_)
                                                        (___kont4480244803_
                                                         _hd3042430588_)
                                                        (if (gx#identifier?
                                                             _hd3042430588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49994_|
                         _hd3042430588_)
                        (if (gx#stx-pair? _tl3042330591_)
                            (let ((_e3043230554_ (gx#syntax-e _tl3042330591_)))
                              (let ((_tl3043030561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3043230554_)))
                                    (_hd3043130558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3043230554_))))
                                (if (gx#stx-null? _tl3043030561_)
                                    (___kont4480444805_ _hd3043130558_)
                                    (___kont4480844809_))))
                            (___kont4480844809_))
                        (___kont4480844809_))
                    (if (gx#stx-datum? _hd3042430588_)
                        (let ((_e3043830481_ (gx#stx-e _hd3042430588_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3043830481_ '::))
                              (if (gx#stx-pair? _tl3042330591_)
                                  (let ((_e3044130485_
                                         (gx#syntax-e _tl3042330591_)))
                                    (let ((_tl3043930492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3044130485_)))
                                          (_hd3044030489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3044130485_))))
                                      (if (gx#stx-pair? _tl3043930492_)
                                          (let ((_e3044430495_
                                                 (gx#syntax-e _tl3043930492_)))
                                            (let ((_tl3044230502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3044430495_)))
                                                  (_hd3044330499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3044430495_))))
                                              (if (gx#identifier?
                                                   _hd3044330499_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49993_|
                                                       _hd3044330499_)
                                                      (if (gx#stx-pair?
                                                           _tl3044230502_)
                                                          (let ((_e3044730505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3044230502_)))
                    (let ((_tl3044530512_
                           (let () (declare (not safe)) (##cdr _e3044730505_)))
                          (_hd3044630509_
                           (let ()
                             (declare (not safe))
                             (##car _e3044730505_))))
                      (if (gx#stx-null? _tl3044530512_)
                          (___kont4480644807_ _hd3044630509_ _hd3044030489_)
                          (___kont4480844809_))))
                  (___kont4480844809_))
              (___kont4480844809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4480844809_))))
                                          (___kont4480844809_))))
                                  (___kont4480844809_))
                              (___kont4480844809_)))
                        (___kont4480844809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4480844809_)))))
                                     (if (gx#stx-null? ___stx4479744798_)
                                         (___kont4480044801_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3041630605_))))))))
                            (___kont4488244883_
                             (lambda (_L30306_)
                               (let* ((___stx4477944780_ _L30306_)
                                      (_g3031830329_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4477944780_))))
                                 (let ((___kont4478244783_
                                        (lambda (_L30357_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30357_))))
                                       (___kont4478444785_
                                        (lambda ()
                                          (let ((__tmp49995
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30306_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49995)))))
                                   (if (gx#stx-pair? ___stx4477944780_)
                                       (let ((_e3032330347_
                                              (gx#syntax-e ___stx4477944780_)))
                                         (let ((_tl3032130354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3032330347_)))
                                               (_hd3032230351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3032330347_))))
                                           (if (gx#stx-null? _tl3032130354_)
                                               (___kont4478244783_
                                                _hd3032230351_)
                                               (___kont4478444785_))))
                                       (___kont4478444785_))))))
                            (___kont4488444885_
                             (lambda (_L30221_)
                               (let* ((___stx4476144762_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4476144762_))))
                                 (let ((___kont4476444765_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30272_))))
                                       (___kont4476644767_
                                        (lambda ()
                                          (let ((__tmp49996
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49996)))))
                                   (if (gx#stx-pair? ___stx4476144762_)
                                       (let ((_e3023830262_
                                              (gx#syntax-e ___stx4476144762_)))
                                         (let ((_tl3023630269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023830262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023830262_))))
                                           (if (gx#stx-null? _tl3023630269_)
                                               (___kont4476444765_
                                                _hd3023730266_)
                                               (___kont4476644767_))))
                                       (___kont4476644767_))))))
                            (___kont4488644887_
                             (lambda (_L30191_)
                               (let ((__tmp49997
                                      (let ((__tmp49998
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30191_))))
                                        (declare (not safe))
                                        (cons __tmp49998 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49997))))
                            (___kont4488844889_
                             (lambda (_L30147_ _L30149_)
                               (let ((__tmp49999
                                      (let ((__tmp50002
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30149_)))
                                            (__tmp50000
                                             (let ((__tmp50001
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L30147_))))
                                               (declare (not safe))
                                               (cons __tmp50001 '()))))
                                        (declare (not safe))
                                        (cons __tmp50002 __tmp50000))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49999))))
                            (___kont4489044891_
                             (lambda (_L30091_ _L30093_ _L30094_)
                               (if (gx#stx-null? _L30091_)
                                   (let ((__tmp50010
                                          (let ((__tmp50013
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp50011
                                                 (let ((__tmp50012
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128948_
                                                           _L30093_))))
                                                   (declare (not safe))
                                                   (cons __tmp50012 '()))))
                                            (declare (not safe))
                                            (cons __tmp50013 __tmp50011))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp50010))
                                   (let ((__tmp50003
                                          (let ((__tmp50009
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp50004
                                                 (let ((__tmp50005
                                                        (let ((__tmp50006
                                                               (let ((__tmp50008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp50007
                              (let ()
                                (declare (not safe))
                                (cons _L30093_ _L30091_))))
                         (declare (not safe))
                         (cons __tmp50008 __tmp50007))))
                  (declare (not safe))
                  (_parse128948_ __tmp50006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50005 '()))))
                                            (declare (not safe))
                                            (cons __tmp50009 __tmp50004))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp50003)))))
                            (___kont4489244893_
                             (lambda (_L30043_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28950_ _L30043_))))
                            (___kont4489444895_
                             (lambda (_L30013_)
                               (let ((__tmp50014
                                      (let ((__tmp50015
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30013_))))
                                        (declare (not safe))
                                        (cons __tmp50015 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp50014))))
                            (___kont4489644897_
                             (lambda (_L29976_)
                               (let ((__tmp50016
                                      (let ((__tmp50017
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29976_))))
                                        (declare (not safe))
                                        (cons __tmp50017 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp50016))))
                            (___kont4489844899_
                             (lambda (_L29952_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29952_))))
                            (___kont4490044901_
                             (lambda (_L29914_)
                               (let ((__tmp50018
                                      (let ((__tmp50019
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29914_))))
                                        (declare (not safe))
                                        (cons __tmp50019 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp50018))))
                            (___kont4490244903_
                             (lambda (_L29886_)
                               (let ((__tmp50020
                                      (let ((__tmp50021
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29886_))))
                                        (declare (not safe))
                                        (cons __tmp50021 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp50020))))
                            (___kont4490444905_
                             (lambda (_L29847_)
                               (let ((__tmp50022
                                      (let ((__tmp50023
                                             (let ((__tmp50024
                                                    (let ((__tmp50025
                                                           (lambda (_g2986029863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2986129866_)
                     (let ()
                       (declare (not safe))
                       (cons _g2986029863_ _g2986129866_)))))
              (declare (not safe))
              (foldr1 __tmp50025 '() _L29847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                __tmp50024))))
                                        (declare (not safe))
                                        (cons __tmp50023 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp50022))))
                            (___kont4490844909_
                             (lambda (_L29793_ _L29795_)
                               (let ((__tmp50026
                                      (let ((__tmp50029
                                             (gx#syntax-local-value _L29795_))
                                            (__tmp50027
                                             (let ((__tmp50028
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28951_
                                                       _L29793_))))
                                               (declare (not safe))
                                               (cons __tmp50028 '()))))
                                        (declare (not safe))
                                        (cons __tmp50029 __tmp50027))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp50026))))
                            (___kont4491044911_
                             (lambda (_L29763_ _L29765_)
                               (let ((__tmp50030
                                      (let ((__tmp50033
                                             (gx#syntax-local-value _L29765_))
                                            (__tmp50031
                                             (let ((__tmp50032
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28953_
                                                       _L29763_))))
                                               (declare (not safe))
                                               (cons __tmp50032 '()))))
                                        (declare (not safe))
                                        (cons __tmp50033 __tmp50031))))
                                 (declare (not safe))
                                 (cons 'class: __tmp50030))))
                            (___kont4491244913_
                             (lambda (_L29723_ _L29725_)
                               (let ((__tmp50034
                                      (let ((__tmp50035
                                             (let ((__tmp50040
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp50036
                                                    (let ((__tmp50037
                                                           (let ((__tmp50039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp50038
                          (let () (declare (not safe)) (cons _L29723_ '()))))
                     (declare (not safe))
                     (cons __tmp50039 __tmp50038))))
              (declare (not safe))
              (cons _L29725_ __tmp50037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50040 __tmp50036))))
                                        (declare (not safe))
                                        (cons __tmp50035 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp50034))))
                            (___kont4491444915_
                             (lambda (_L29683_)
                               (let ((__tmp50041
                                      (let ((__tmp50042 (gx#stx-e _L29683_)))
                                        (declare (not safe))
                                        (cons __tmp50042 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp50041))))
                            (___kont4491644917_
                             (lambda (_L29643_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28954_ _L29643_))))
                            (___kont4491844919_
                             (lambda (_L29599_ _L29601_)
                               (let ((__tmp50043
                                      (let ((__tmp50044
                                             (let ((__tmp50045
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L29599_))))
                                               (declare (not safe))
                                               (cons __tmp50045 '()))))
                                        (declare (not safe))
                                        (cons _L29601_ __tmp50044))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp50043))))
                            (___kont4492044921_
                             (lambda (_L29547_)
                               (let ((__tmp50046
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29547_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29301_))
                                        (let ((_$e29558_
                                               (gx#stx-source _hd29301_)))
                                          (if _$e29558_
                                              _$e29558_
                                              (gx#stx-source _stx28944_)))))))
                                 (declare (not safe))
                                 (_parse128948_ __tmp50046))))
                            (___kont4492244923_
                             (lambda (_L29521_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4492444925_
                             (lambda (_L29505_)
                               (let ((__tmp50047
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29505_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp50047))))
                            (___kont4492644927_
                             (lambda (_L29487_)
                               (let ((__tmp50048
                                      (let ((__tmp50049 (gx#stx-e _L29487_)))
                                        (declare (not safe))
                                        (cons __tmp50049 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp50048))))
                            (___kont4492844929_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28955_ _hd29301_)))))
                        (let* ((_g2932529498_
                                (lambda ()
                                  (let ((_L29487_ ___stx4487744878_))
                                    (if (gx#stx-datum? _L29487_)
                                        (___kont4492644927_ _L29487_)
                                        (___kont4492844929_)))))
                               (_g2932429514_
                                (lambda ()
                                  (let ((_L29505_ ___stx4487744878_))
                                    (if (and (gx#identifier? _L29505_)
                                             (let ((__tmp50050
                                                    (gx#ellipsis? _L29505_)))
                                               (declare (not safe))
                                               (not __tmp50050)))
                                        (___kont4492444925_ _L29505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932529498_))))))
                               (_g2932329530_
                                (lambda ()
                                  (let ((_L29521_ ___stx4487744878_))
                                    (if (gx#underscore? _L29521_)
                                        (___kont4492244923_ _L29521_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932429514_))))))
                               (___match4520445205_
                                (lambda (_e2946029537_
                                         _hd2945929541_
                                         _tl2945829544_)
                                  (let ((_L29547_ _hd2945929541_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29547_))
                                        (___kont4492044921_ _L29547_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932329530_))))))
                               (___match4513845139_
                                (lambda (_e2942829703_
                                         _hd2942729707_
                                         _tl2942629710_
                                         _e2943129713_
                                         _hd2943029717_
                                         _tl2942929720_)
                                  (let ((_L29723_ _hd2943029717_)
                                        (_L29725_ _hd2942729707_))
                                    (if (and (gx#identifier? _L29725_)
                                             (or (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4491244913_ _L29723_ _L29725_)
                                        (if (gx#identifier? _hd2942729707_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50052_|
                                                 _hd2942729707_)
                                                (___kont4491444915_
                                                 _hd2943029717_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g50051_|
                                                     _hd2942729707_)
                                                    (___kont4491644917_
                                                     _hd2943029717_)
                                                    (___match4520445205_
                                                     _e2942829703_
                                                     _hd2942729707_
                                                     _tl2942629710_)))
                                            (___match4520445205_
                                             _e2942829703_
                                             _hd2942729707_
                                             _tl2942629710_))))))
                               (___match4512445125_
                                (lambda (_e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_)
                                  (let ((_L29763_ _tl2942129760_)
                                        (_L29765_ _hd2942229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29765_))
                                        (___kont4491044911_ _L29763_ _L29765_)
                                        (if (gx#stx-pair? _tl2942129760_)
                                            (let ((_e2943129713_
                                                   (gx#syntax-e
                                                    _tl2942129760_)))
                                              (let ((_tl2942929720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2943129713_)))
                                                    (_hd2943029717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2943129713_))))
                                                (if (gx#stx-null?
                                                     _tl2942929720_)
                                                    (___match4513845139_
                                                     _e2942329753_
                                                     _hd2942229757_
                                                     _tl2942129760_
                                                     _e2943129713_
                                                     _hd2943029717_
                                                     _tl2942929720_)
                                                    (if (gx#identifier?
                                                         _hd2942229757_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g50052_|
                                                             _hd2942229757_)
                                                            (___match4520445205_
                                                             _e2942329753_
                                                             _hd2942229757_
                                                             _tl2942129760_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g50051_|
                         _hd2942229757_)
                        (___match4520445205_
                         _e2942329753_
                         _hd2942229757_
                         _tl2942129760_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50053_|
                             _hd2942229757_)
                            (if (gx#stx-pair? _tl2942929720_)
                                (let ((_e2945629589_
                                       (gx#syntax-e _tl2942929720_)))
                                  (let ((_tl2945429596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2945629589_)))
                                        (_hd2945529593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2945629589_))))
                                    (if (gx#stx-null? _tl2945429596_)
                                        (___kont4491844919_
                                         _hd2945529593_
                                         _hd2943029717_)
                                        (___match4520445205_
                                         _e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_))))
                                (___match4520445205_
                                 _e2942329753_
                                 _hd2942229757_
                                 _tl2942129760_))
                            (___match4520445205_
                             _e2942329753_
                             _hd2942229757_
                             _tl2942129760_))))
                (___match4520445205_
                 _e2942329753_
                 _hd2942229757_
                 _tl2942129760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4520445205_
                                             _e2942329753_
                                             _hd2942229757_
                                             _tl2942129760_))))))
                               (___match4511845119_
                                (lambda (_e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)
                                  (let ((_L29793_ _tl2941629790_)
                                        (_L29795_ _hd2941729787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29795_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4490844909_ _L29793_ _L29795_)
                                        (___match4512445125_
                                         _e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)))))
                               (___match4511245113_
                                (lambda (_e2940429813_
                                         ___splice4490644907_
                                         _target2940529817_
                                         _tl2940729820_)
                                  (letrec ((_loop2940829823_
                                            (lambda (_hd2940629827_
                                                     _body2941229830_)
                                              (if (gx#stx-pair? _hd2940629827_)
                                                  (let ((_e2940929833_
                                                         (gx#syntax-e
                                                          _hd2940629827_)))
                                                    (let ((_lp-tl2941129840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2940929833_)))
                                                          (_lp-hd2941029837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2940929833_))))
                                                      (let ((__tmp50054
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2941029837_ _body2941229830_))))
                (declare (not safe))
                (_loop2940829823_ _lp-tl2941129840_ __tmp50054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2941329843_
                                                         (reverse _body2941229830_)))
                                                    (___kont4490444905_
                                                     _body2941329843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2940829823_
                                       _target2940529817_
                                       '())))))
                               (_g2931529869_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4487744878_)
                                      (let ((_e2940429813_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4487744878_))))
                                        (if (gx#stx-pair/null? _e2940429813_)
                                            (let ((___splice4490644907_
                                                   (gx#syntax-split-splice
                                                    _e2940429813_
                                                    '0)))
                                              (let ((_tl2940729820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4490644907_
                                                        '1)))
                                                    (_target2940529817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4490644907_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2940729820_)
                                                    (___match4511245113_
                                                     _e2940429813_
                                                     ___splice4490644907_
                                                     _target2940529817_
                                                     _tl2940729820_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2932329530_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2932329530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2932329530_)))))
                               (_g2931129986_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4487744878_)
                                      (let ((_e2938729972_
                                             (unbox (gx#syntax-e
                                                     ___stx4487744878_))))
                                        (___kont4489644897_ _e2938729972_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2931529869_)))))
                               (___match4496644967_
                                (lambda (_e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)
                                  (let ((_L30221_ _tl2934230218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4488444885_ _L30221_)
                                        (___match4511845119_
                                         _e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)))))
                               (___match4495644957_
                                (lambda (_e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_)
                                  (let ((_L30306_ _tl2933830303_))
                                    (if (gx#stx-list? _L30306_)
                                        (___kont4488244883_ _L30306_)
                                        (___match4511845119_
                                         _e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_))))))
                          (if (gx#stx-pair? ___stx4487744878_)
                              (let ((_e2933330381_
                                     (gx#syntax-e ___stx4487744878_)))
                                (let ((_tl2933130388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2933330381_)))
                                      (_hd2933230385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2933330381_))))
                                  (if (gx#identifier? _hd2933230385_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50064_|
                                           _hd2933230385_)
                                          (if (gx#stx-pair? _tl2933130388_)
                                              (let ((_e2933630391_
                                                     (gx#syntax-e
                                                      _tl2933130388_)))
                                                (let ((_tl2933430398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2933630391_)))
                                                      (_hd2933530395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2933630391_))))
                                                  (___kont4488044881_
                                                   _tl2933430398_
                                                   _hd2933530395_)))
                                              (___match4511845119_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50063_|
                                               _hd2933230385_)
                                              (___match4495644957_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50062_|
                                                   _hd2933230385_)
                                                  (___match4496644967_
                                                   _e2933330381_
                                                   _hd2933230385_
                                                   _tl2933130388_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50061_|
                                                       _hd2933230385_)
                                                      (if (gx#stx-pair?
                                                           _tl2933130388_)
                                                          (let ((_e2935130181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2933130388_)))
                    (let ((_tl2934930188_
                           (let () (declare (not safe)) (##cdr _e2935130181_)))
                          (_hd2935030185_
                           (let ()
                             (declare (not safe))
                             (##car _e2935130181_))))
                      (if (gx#stx-null? _tl2934930188_)
                          (___kont4488644887_ _hd2935030185_)
                          (___match4511845119_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))))
                  (___match4511845119_
                   _e2933330381_
                   _hd2933230385_
                   _tl2933130388_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g50060_|
                   _hd2933230385_)
                  (if (gx#stx-pair? _tl2933130388_)
                      (let ((_e2935930127_ (gx#syntax-e _tl2933130388_)))
                        (let ((_tl2935730134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2935930127_)))
                              (_hd2935830131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2935930127_))))
                          (if (gx#stx-pair? _tl2935730134_)
                              (let ((_e2936230137_
                                     (gx#syntax-e _tl2935730134_)))
                                (let ((_tl2936030144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2936230137_)))
                                      (_hd2936130141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2936230137_))))
                                  (if (gx#stx-null? _tl2936030144_)
                                      (___kont4488844889_
                                       _hd2936130141_
                                       _hd2935830131_)
                                      (___match4511845119_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (___match4511845119_
                               _e2933330381_
                               _hd2933230385_
                               _tl2933130388_))))
                      (___match4511845119_
                       _e2933330381_
                       _hd2933230385_
                       _tl2933130388_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g50059_|
                       _hd2933230385_)
                      (if (gx#stx-pair? _tl2933130388_)
                          (let ((_e2937130071_ (gx#syntax-e _tl2933130388_)))
                            (let ((_tl2936930078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2937130071_)))
                                  (_hd2937030075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2937130071_))))
                              (if (gx#stx-pair? _tl2936930078_)
                                  (let ((_e2937430081_
                                         (gx#syntax-e _tl2936930078_)))
                                    (let ((_tl2937230088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2937430081_)))
                                          (_hd2937330085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2937430081_))))
                                      (___kont4489044891_
                                       _tl2937230088_
                                       _hd2937330085_
                                       _hd2937030075_)))
                                  (___match4511845119_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))))
                          (___match4511845119_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g50058_|
                           _hd2933230385_)
                          (___kont4489244893_ _tl2933130388_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50057_|
                               _hd2933230385_)
                              (if (gx#stx-pair? _tl2933130388_)
                                  (let ((_e2938530003_
                                         (gx#syntax-e _tl2933130388_)))
                                    (let ((_tl2938330010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2938530003_)))
                                          (_hd2938430007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2938530003_))))
                                      (if (gx#stx-null? _tl2938330010_)
                                          (___kont4489444895_ _hd2938430007_)
                                          (___match4511845119_
                                           _e2933330381_
                                           _hd2933230385_
                                           _tl2933130388_))))
                                  (___match4511845119_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50056_|
                                   _hd2933230385_)
                                  (if (gx#stx-pair? _tl2933130388_)
                                      (let ((_e2939429942_
                                             (gx#syntax-e _tl2933130388_)))
                                        (let ((_tl2939229949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2939429942_)))
                                              (_hd2939329946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2939429942_))))
                                          (if (gx#stx-null? _tl2939229949_)
                                              (___kont4489844899_
                                               _hd2939329946_)
                                              (___kont4490044901_
                                               _tl2933130388_))))
                                      (___kont4490044901_ _tl2933130388_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50055_|
                                       _hd2933230385_)
                                      (___kont4490244903_ _tl2933130388_)
                                      (___match4511845119_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4511845119_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (let ()
                                (declare (not safe))
                                (_g2931129986_))))))))
                 (_parse-list28950_
                  (lambda (_body29130_)
                    (let* ((___stx4520745208_ _body29130_)
                           (_g2913629165_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4520745208_))))
                      (let ((___kont4521045211_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29283_))))
                            (___kont4521245213_
                             (lambda (_L29235_ _L29237_ _L29238_)
                               (let ((__tmp50065
                                      (let ((__tmp50068
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29238_)))
                                            (__tmp50066
                                             (let ((__tmp50067
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29235_))))
                                               (declare (not safe))
                                               (cons __tmp50067 '()))))
                                        (declare (not safe))
                                        (cons __tmp50068 __tmp50066))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp50065))))
                            (___kont4521445215_
                             (lambda (_L29193_ _L29195_)
                               (let ((__tmp50069
                                      (let ((__tmp50072
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29195_)))
                                            (__tmp50070
                                             (let ((__tmp50071
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29193_))))
                                               (declare (not safe))
                                               (cons __tmp50071 '()))))
                                        (declare (not safe))
                                        (cons __tmp50072 __tmp50070))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp50069))))
                            (___kont4521645217_
                             (lambda ()
                               (if (gx#stx-null? _body29130_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp50073
                                              (gx#stx-pair? _body29130_)))
                                         (declare (not safe))
                                         (not __tmp50073))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128948_ _body29130_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28955_ _body29130_)))))))
                        (let* ((___match4525645257_
                                (lambda (_e2915929183_
                                         _hd2915829187_
                                         _tl2915729190_)
                                  (let ((_L29193_ _tl2915729190_)
                                        (_L29195_ _hd2915829187_))
                                    (if (let ((__tmp50074
                                               (gx#ellipsis? _L29195_)))
                                          (declare (not safe))
                                          (not __tmp50074))
                                        (___kont4521445215_ _L29193_ _L29195_)
                                        (___kont4521645217_)))))
                               (___match4525045251_
                                (lambda (_e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_
                                         _e2915429225_
                                         _hd2915329229_
                                         _tl2915229232_)
                                  (let ((_L29235_ _tl2915229232_)
                                        (_L29237_ _hd2915329229_)
                                        (_L29238_ _hd2915029219_))
                                    (if (gx#ellipsis? _L29237_)
                                        (___kont4521245213_
                                         _L29235_
                                         _L29237_
                                         _L29238_)
                                        (___match4525645257_
                                         _e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_))))))
                          (if (gx#stx-pair? ___stx4520745208_)
                              (let ((_e2914129259_
                                     (gx#syntax-e ___stx4520745208_)))
                                (let ((_tl2913929266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2914129259_)))
                                      (_hd2914029263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2914129259_))))
                                  (if (gx#stx-datum? _hd2914029263_)
                                      (let ((_e2914229269_
                                             (gx#stx-e _hd2914029263_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2914229269_ '::))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2914529273_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2914329280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2914529273_)))
                                                        (_hd2914429277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2914529273_))))
                                                    (if (gx#stx-null?
                                                         _tl2914329280_)
                                                        (___kont4521045211_
                                                         _hd2914429277_)
                                                        (___match4525045251_
                                                         _e2914129259_
                                                         _hd2914029263_
                                                         _tl2913929266_
                                                         _e2914529273_
                                                         _hd2914429277_
                                                         _tl2914329280_))))
                                                (___match4525645257_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2915429225_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2915229232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2915429225_)))
                                                        (_hd2915329229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2915429225_))))
                                                    (___match4525045251_
                                                     _e2914129259_
                                                     _hd2914029263_
                                                     _tl2913929266_
                                                     _e2915429225_
                                                     _hd2915329229_
                                                     _tl2915229232_)))
                                                (___match4525645257_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))))
                                      (if (gx#stx-pair? _tl2913929266_)
                                          (let ((_e2915429225_
                                                 (gx#syntax-e _tl2913929266_)))
                                            (let ((_tl2915229232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2915429225_)))
                                                  (_hd2915329229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2915429225_))))
                                              (___match4525045251_
                                               _e2914129259_
                                               _hd2914029263_
                                               _tl2913929266_
                                               _e2915429225_
                                               _hd2915329229_
                                               _tl2915229232_)))
                                          (___match4525645257_
                                           _e2914129259_
                                           _hd2914029263_
                                           _tl2913929266_)))))
                              (___kont4521645217_)))))))
                 (_parse-vector28951_
                  (lambda (_body29127_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28952_ _body29127_))
                        (let ((__tmp50077
                               (let ((__tmp50078
                                      (gx#stx-map _parse128948_ _body29127_)))
                                 (declare (not safe))
                                 (cons __tmp50078 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp50077))
                        (let ((__tmp50075
                               (let ((__tmp50076
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28950_ _body29127_))))
                                 (declare (not safe))
                                 (cons __tmp50076 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp50075)))))
                 (_simple-vector?28952_
                  (lambda (_body29064_)
                    (let* ((___stx4525945260_ _body29064_)
                           (_g2906829080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4525945260_))))
                      (let ((___kont4526245263_
                             (lambda (_L29108_ _L29110_)
                               (if (let ((__tmp50079 (gx#ellipsis? _L29110_)))
                                     (declare (not safe))
                                     (not __tmp50079))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28952_ _L29108_))
                                   '#f)))
                            (___kont4526445265_
                             (lambda () (gx#stx-null? _body29064_))))
                        (if (gx#stx-pair? ___stx4525945260_)
                            (let ((_e2907429098_
                                   (gx#syntax-e ___stx4525945260_)))
                              (let ((_tl2907229105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2907429098_)))
                                    (_hd2907329102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2907429098_))))
                                (___kont4526245263_
                                 _tl2907229105_
                                 _hd2907329102_)))
                            (___kont4526445265_))))))
                 (_parse-class-body28953_
                  (lambda (_body28973_)
                    (let _recur28976_ ((_rest28979_ _body28973_))
                      (let* ((___stx4527545276_ _rest28979_)
                             (_g2898328999_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4527545276_))))
                        (let ((___kont4527845279_
                               (lambda (_L29037_ _L29039_ _L29040_)
                                 (let ((__tmp50080
                                        (let ((__tmp50082
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128948_ _L29039_)))
                                              (__tmp50081
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28976_ _L29037_))))
                                          (declare (not safe))
                                          (cons __tmp50082 __tmp50081))))
                                   (declare (not safe))
                                   (cons _L29040_ __tmp50080))))
                              (___kont4528045281_
                               (lambda ()
                                 (if (gx#stx-null? _rest28979_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28955_ _rest28979_))))))
                          (let ((___match4529445295_
                                 (lambda (_e2899029017_
                                          _hd2898929021_
                                          _tl2898829024_
                                          _e2899329027_
                                          _hd2899229031_
                                          _tl2899129034_)
                                   (let ((_L29037_ _tl2899129034_)
                                         (_L29039_ _hd2899229031_)
                                         (_L29040_ _hd2898929021_))
                                     (if (gx#stx-keyword? _L29040_)
                                         (___kont4527845279_
                                          _L29037_
                                          _L29039_
                                          _L29040_)
                                         (___kont4528045281_))))))
                            (if (gx#stx-pair? ___stx4527545276_)
                                (let ((_e2899029017_
                                       (gx#syntax-e ___stx4527545276_)))
                                  (let ((_tl2898829024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2899029017_)))
                                        (_hd2898929021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2899029017_))))
                                    (if (gx#stx-pair? _tl2898829024_)
                                        (let ((_e2899329027_
                                               (gx#syntax-e _tl2898829024_)))
                                          (let ((_tl2899129034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2899329027_)))
                                                (_hd2899229031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2899329027_))))
                                            (___match4529445295_
                                             _e2899029017_
                                             _hd2898929021_
                                             _tl2898829024_
                                             _e2899329027_
                                             _hd2899229031_
                                             _tl2899129034_)))
                                        (___kont4528045281_))))
                                (___kont4528045281_))))))))
                 (_parse-qq28954_
                  (lambda (_hd28960_)
                    (let ((_g2896228969_
                           (lambda (_g2896328965_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2896328965_))))
                      (declare (not safe))
                      (_g2896228969_ _hd28960_))))
                 (_parse-error28955_
                  (lambda (_hd28957_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28946_
                               (let ((__tmp50084
                                      (let ((__tmp50085
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28957_ '()))))
                                        (declare (not safe))
                                        (cons _stx28944_ __tmp50085))))
                                 (declare (not safe))
                                 (cons _match-stx28946_ __tmp50084))
                               (let ((__tmp50083
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28957_ '()))))
                                 (declare (not safe))
                                 (cons _stx28944_ __tmp50083)))))))
          (let () (declare (not safe)) (_parse128948_ _stx28944_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30628_)
        (let ((_match-stx30631_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30628_
           _match-stx30631_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g50087_
        (let ((_g50086_ (let () (declare (not safe)) (##length _g50087_))))
          (cond ((let () (declare (not safe)) (##fx= _g50086_ 1))
                 (apply (lambda (_stx30628_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30628_)))
                        _g50087_))
                ((let () (declare (not safe)) (##fx= _g50086_ 2))
                 (apply (lambda (_stx30634_ _match-stx30636_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30634_
                             _match-stx30636_)))
                        _g50087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g50087_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28928_)
        (call-with-current-continuation
         (lambda (_E28932_)
           (with-exception-handler
            (let ((_E!28935_ (current-exception-handler)))
              (lambda (_e28938_)
                (if (syntax-error? _e28938_)
                    (_E28932_ '#f)
                    (_E!28935_ _e28938_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28928_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27663_)
        (letrec ((_loop27666_
                  (lambda (_ptree27953_ _vars27955_ _K27956_)
                    (let* ((___stx4539345394_ _ptree27953_)
                           (_g2796928079_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4539345394_))))
                      (let ((___kont4539645397_
                             (lambda (_L28709_)
                               (let* ((___stx4531345314_ _L28709_)
                                      (_g2872628760_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4531345314_))))
                                 (let ((___kont4531645317_
                                        (lambda (_L28909_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28909_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4531845319_
                                        (lambda (_L28878_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28878_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4532045321_
                                        (lambda (_L28826_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28826_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4532245323_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4531345314_)
                                       (let ((_e2873128899_
                                              (gx#syntax-e ___stx4531345314_)))
                                         (let ((_tl2872928906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2873128899_)))
                                               (_hd2873028903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2873128899_))))
                                           (if (gx#stx-null? _tl2872928906_)
                                               (___kont4531645317_
                                                _hd2873028903_)
                                               (if (gx#stx-datum?
                                                    _hd2873028903_)
                                                   (let ((_e2873628864_
                                                          (gx#stx-e
                                                           _hd2873028903_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2873628864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2872928906_)
                     (let ((_e2873928868_ (gx#syntax-e _tl2872928906_)))
                       (let ((_tl2873728875_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2873928868_)))
                             (_hd2873828872_
                              (let ()
                                (declare (not safe))
                                (##car _e2873928868_))))
                         (if (gx#stx-null? _tl2873728875_)
                             (___kont4531845319_ _hd2873828872_)
                             (___kont4532245323_))))
                     (___kont4532245323_))
                 (if (let () (declare (not safe)) (equal? _e2873628864_ '::))
                     (if (gx#stx-pair? _tl2872928906_)
                         (let ((_e2874728792_ (gx#syntax-e _tl2872928906_)))
                           (let ((_tl2874528799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2874728792_)))
                                 (_hd2874628796_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2874728792_))))
                             (if (gx#stx-pair? _tl2874528799_)
                                 (let ((_e2875028802_
                                        (gx#syntax-e _tl2874528799_)))
                                   (let ((_tl2874828809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2875028802_)))
                                         (_hd2874928806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2875028802_))))
                                     (if (gx#stx-datum? _hd2874928806_)
                                         (let ((_e2875128812_
                                                (gx#stx-e _hd2874928806_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2875128812_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2874828809_)
                                                   (let ((_e2875428816_
                                                          (gx#syntax-e
                                                           _tl2874828809_)))
                                                     (let ((_tl2875228823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2875428816_)))
                                                           (_hd2875328820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2875428816_))))
                                                       (if (gx#stx-null?
                                                            _tl2875228823_)
                                                           (___kont4532045321_
                                                            _hd2875328820_)
                                                           (___kont4532245323_))))
                                                   (___kont4532245323_))
                                               (___kont4532245323_)))
                                         (___kont4532245323_))))
                                 (___kont4532245323_))))
                         (___kont4532245323_))
                     (___kont4532245323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4532245323_)))))
                                       (___kont4532245323_))))))
                            (___kont4539845399_
                             (lambda (_L28596_ _L28598_)
                               (let* ((___stx4529745298_ _L28596_)
                                      (_g2861428626_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4529745298_))))
                                 (let ((___kont4530045301_
                                        (lambda (_L28654_ _L28656_)
                                          (let ((__tmp50088
                                                 (lambda (_g2866828670_)
                                                   (let ((__tmp50089
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27666_
                                                      __tmp50089
                                                      _g2866828670_
                                                      _K27956_)))))
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28656_
                                             _vars27955_
                                             __tmp50088))))
                                       (___kont4530245303_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4529745298_)
                                       (let ((_e2862028644_
                                              (gx#syntax-e ___stx4529745298_)))
                                         (let ((_tl2861828651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2862028644_)))
                                               (_hd2861928648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2862028644_))))
                                           (___kont4530045301_
                                            _tl2861828651_
                                            _hd2861928648_)))
                                       (___kont4530245303_))))))
                            (___kont4540045401_
                             (lambda (_L28565_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28565_ _vars27955_ _K27956_))))
                            (___kont4540245403_
                             (lambda (_L28511_ _L28513_)
                               (let ((__tmp50090
                                      (lambda (_g2852828530_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28511_
                                           _g2852828530_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28513_
                                  _vars27955_
                                  __tmp50090))))
                            (___kont4540445405_
                             (lambda (_L28447_ _L28449_)
                               (let ((__tmp50091
                                      (lambda (_g2846428466_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28447_
                                           _g2846428466_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28449_
                                  _vars27955_
                                  __tmp50091))))
                            (___kont4540645407_
                             (lambda (_L28392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28392_ _vars27955_ _K27956_))))
                            (___kont4540845409_
                             (lambda (_L28342_ _L28344_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28342_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4541045411_
                             (lambda (_L28299_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28299_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4541245413_
                             (lambda (_L28242_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27670_
                                  _L28242_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4541445415_
                             (lambda (_L28183_ _L28185_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28183_ _vars27955_ _K27956_))))
                            (___kont4541645417_
                             (lambda (_L28121_)
                               (if (let ((__tmp50092
                                          (lambda (_g2813628138_)
                                            (gx#bound-identifier=?
                                             _g2813628138_
                                             _L28121_))))
                                     (declare (not safe))
                                     (find __tmp50092 _vars27955_))
                                   (_K27956_ _vars27955_)
                                   (_K27956_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28121_ _vars27955_))))))
                            (___kont4541845419_
                             (lambda () (_K27956_ _vars27955_))))
                        (let* ((___match4555045551_
                                (lambda (_e2802828322_
                                         _hd2802728326_
                                         _tl2802628329_
                                         _e2803128332_
                                         _hd2803028336_
                                         _tl2802928339_)
                                  (let ((_L28342_ _hd2803028336_)
                                        (_L28344_ _hd2802728326_))
                                    (if (or (gx#stx-eq? 'values: _L28344_)
                                            (gx#stx-eq? 'vector: _L28344_))
                                        (___kont4540845409_ _L28342_ _L28344_)
                                        (if (gx#stx-datum? _hd2802728326_)
                                            (let ((_e2803628275_
                                                   (gx#stx-e _hd2802728326_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2803628275_
                                                            'struct:))
                                                  (___kont4541845419_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2803628275_
                                                                'class:))
                                                      (___kont4541845419_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2803628275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4541845419_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2803628275_ 'var:))
                      (___kont4541645417_ _hd2803028336_)
                      (___kont4541845419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4541845419_))))))
                               (___match4544445445_
                                (lambda (_e2798328586_
                                         _hd2798228590_
                                         _tl2798128593_)
                                  (let ((_L28596_ _tl2798128593_)
                                        (_L28598_ _hd2798228590_))
                                    (if (or (gx#stx-eq? 'and: _L28598_)
                                            (gx#stx-eq? 'or: _L28598_))
                                        (___kont4539845399_ _L28596_ _L28598_)
                                        (if (gx#stx-datum? _hd2798228590_)
                                            (let ((_e2798828551_
                                                   (gx#stx-e _hd2798228590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2798828551_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2798128593_)
                                                      (let ((_e2799128555_
                                                             (gx#syntax-e
                                                              _tl2798128593_)))
                                                        (let ((_tl2798928562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2799128555_)))
                      (_hd2799028559_
                       (let () (declare (not safe)) (##car _e2799128555_))))
                  (if (gx#stx-null? _tl2798928562_)
                      (___kont4540045401_ _hd2799028559_)
                      (___kont4541845419_))))
              (___kont4541845419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2798828551_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2798128593_)
                                                          (let ((_e2800028491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2798128593_)))
                    (let ((_tl2799828498_
                           (let () (declare (not safe)) (##cdr _e2800028491_)))
                          (_hd2799928495_
                           (let ()
                             (declare (not safe))
                             (##car _e2800028491_))))
                      (if (gx#stx-pair? _tl2799828498_)
                          (let ((_e2800328501_ (gx#syntax-e _tl2799828498_)))
                            (let ((_tl2800128508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2800328501_)))
                                  (_hd2800228505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2800328501_))))
                              (if (gx#stx-null? _tl2800128508_)
                                  (___kont4540245403_
                                   _hd2800228505_
                                   _hd2799928495_)
                                  (___kont4541845419_))))
                          (if (gx#stx-null? _tl2799828498_)
                              (___match4555045551_
                               _e2798328586_
                               _hd2798228590_
                               _tl2798128593_
                               _e2800028491_
                               _hd2799928495_
                               _tl2799828498_)
                              (___kont4541845419_)))))
                  (___kont4541845419_))
              (if (let () (declare (not safe)) (equal? _e2798828551_ 'splice:))
                  (if (gx#stx-pair? _tl2798128593_)
                      (let ((_e2801228427_ (gx#syntax-e _tl2798128593_)))
                        (let ((_tl2801028434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2801228427_)))
                              (_hd2801128431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2801228427_))))
                          (if (gx#stx-pair? _tl2801028434_)
                              (let ((_e2801528437_
                                     (gx#syntax-e _tl2801028434_)))
                                (let ((_tl2801328444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2801528437_)))
                                      (_hd2801428441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2801528437_))))
                                  (if (gx#stx-null? _tl2801328444_)
                                      (___kont4540445405_
                                       _hd2801428441_
                                       _hd2801128431_)
                                      (___kont4541845419_))))
                              (if (gx#stx-null? _tl2801028434_)
                                  (___match4555045551_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2801228427_
                                   _hd2801128431_
                                   _tl2801028434_)
                                  (___kont4541845419_)))))
                      (___kont4541845419_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2798828551_ 'box:))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2802328382_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802128389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802328382_)))
                                  (_hd2802228386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802328382_))))
                              (if (gx#stx-null? _tl2802128389_)
                                  (___kont4540645407_ _hd2802228386_)
                                  (___kont4541845419_))))
                          (___kont4541845419_))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2803128332_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802928339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2803128332_)))
                                  (_hd2803028336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2803128332_))))
                              (if (gx#stx-null? _tl2802928339_)
                                  (___match4555045551_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2803128332_
                                   _hd2803028336_
                                   _tl2802928339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2798828551_ 'struct:))
                                      (if (gx#stx-pair? _tl2802928339_)
                                          (let ((_e2804228289_
                                                 (gx#syntax-e _tl2802928339_)))
                                            (let ((_tl2804028296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2804228289_)))
                                                  (_hd2804128293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2804228289_))))
                                              (if (gx#stx-null? _tl2804028296_)
                                                  (___kont4541045411_
                                                   _hd2804128293_)
                                                  (___kont4541845419_))))
                                          (___kont4541845419_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2798828551_ 'class:))
                                          (if (gx#stx-pair? _tl2802928339_)
                                              (let ((_e2805328232_
                                                     (gx#syntax-e
                                                      _tl2802928339_)))
                                                (let ((_tl2805128239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2805328232_)))
                                                      (_hd2805228236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2805328232_))))
                                                  (if (gx#stx-null?
                                                       _tl2805128239_)
                                                      (___kont4541245413_
                                                       _hd2805228236_)
                                                      (___kont4541845419_))))
                                              (___kont4541845419_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2798828551_ 'apply:))
                                              (if (gx#stx-pair? _tl2802928339_)
                                                  (let ((_e2806528173_
                                                         (gx#syntax-e
                                                          _tl2802928339_)))
                                                    (let ((_tl2806328180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2806528173_)))
                                                          (_hd2806428177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2806528173_))))
                                                      (if (gx#stx-null?
                                                           _tl2806328180_)
                                                          (___kont4541445415_
                                                           _hd2806428177_
                                                           _hd2803028336_)
                                                          (___kont4541845419_))))
                                                  (___kont4541845419_))
                                              (___kont4541845419_)))))))
                          (___kont4541845419_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2798128593_)
                                                (let ((_e2803128332_
                                                       (gx#syntax-e
                                                        _tl2798128593_)))
                                                  (let ((_tl2802928339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2803128332_)))
                                                        (_hd2803028336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2803128332_))))
                                                    (if (gx#stx-null?
                                                         _tl2802928339_)
                                                        (___match4555045551_
                                                         _e2798328586_
                                                         _hd2798228590_
                                                         _tl2798128593_
                                                         _e2803128332_
                                                         _hd2803028336_
                                                         _tl2802928339_)
                                                        (___kont4541845419_))))
                                                (___kont4541845419_))))))))
                          (if (gx#stx-pair? ___stx4539345394_)
                              (let ((_e2797428685_
                                     (gx#syntax-e ___stx4539345394_)))
                                (let ((_tl2797228692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2797428685_)))
                                      (_hd2797328689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2797428685_))))
                                  (if (gx#stx-datum? _hd2797328689_)
                                      (let ((_e2797528695_
                                             (gx#stx-e _hd2797328689_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2797528695_ '?:))
                                            (if (gx#stx-pair? _tl2797228692_)
                                                (let ((_e2797828699_
                                                       (gx#syntax-e
                                                        _tl2797228692_)))
                                                  (let ((_tl2797628706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2797828699_)))
                                                        (_hd2797728703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2797828699_))))
                                                    (___kont4539645397_
                                                     _tl2797628706_)))
                                                (___match4544445445_
                                                 _e2797428685_
                                                 _hd2797328689_
                                                 _tl2797228692_))
                                            (___match4544445445_
                                             _e2797428685_
                                             _hd2797328689_
                                             _tl2797228692_)))
                                      (___match4544445445_
                                       _e2797428685_
                                       _hd2797328689_
                                       _tl2797228692_))))
                              (___kont4541845419_)))))))
                 (_loop-vector27668_
                  (lambda (_body27829_ _vars27831_ _K27832_)
                    (let* ((___stx4565145652_ _body27829_)
                           (_g2783527858_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4565145652_))))
                      (let ((___kont4565445655_
                             (lambda (_L27935_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27669_
                                  _L27935_
                                  _vars27831_
                                  _K27832_))))
                            (___kont4565645657_
                             (lambda (_L27889_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27889_
                                  _vars27831_
                                  _K27832_)))))
                        (if (gx#stx-pair? ___stx4565145652_)
                            (let ((_e2784027911_
                                   (gx#syntax-e ___stx4565145652_)))
                              (let ((_tl2783827918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2784027911_)))
                                    (_hd2783927915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2784027911_))))
                                (if (gx#stx-datum? _hd2783927915_)
                                    (let ((_e2784127921_
                                           (gx#stx-e _hd2783927915_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2784127921_ 'simple:))
                                          (if (gx#stx-pair? _tl2783827918_)
                                              (let ((_e2784427925_
                                                     (gx#syntax-e
                                                      _tl2783827918_)))
                                                (let ((_tl2784227932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784427925_)))
                                                      (_hd2784327929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784427925_))))
                                                  (if (gx#stx-null?
                                                       _tl2784227932_)
                                                      (___kont4565445655_
                                                       _hd2784327929_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2783527858_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2784127921_ 'list:))
                                              (if (gx#stx-pair? _tl2783827918_)
                                                  (let ((_e2785227879_
                                                         (gx#syntax-e
                                                          _tl2783827918_)))
                                                    (let ((_tl2785027886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785227879_)))
                                                          (_hd2785127883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785227879_))))
                                                      (if (gx#stx-null?
                                                           _tl2785027886_)
                                                          (___kont4565645657_
                                                           _hd2785127883_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2783527858_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2783527858_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2783527858_)))))
                            (let () (declare (not safe)) (_g2783527858_)))))))
                 (_loop-list27669_
                  (lambda (_rest27759_ _vars27761_ _K27762_)
                    (let* ((___stx4570145702_ _rest27759_)
                           (_g2776527777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4570145702_))))
                      (let ((___kont4570445705_
                             (lambda (_L27805_ _L27807_)
                               (let ((__tmp50093
                                      (lambda (_g2781927821_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27669_
                                           _L27805_
                                           _g2781927821_
                                           _K27762_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27807_
                                  _vars27761_
                                  __tmp50093))))
                            (___kont4570645707_
                             (lambda () (_K27762_ _vars27761_))))
                        (if (gx#stx-pair? ___stx4570145702_)
                            (let ((_e2777127795_
                                   (gx#syntax-e ___stx4570145702_)))
                              (let ((_tl2776927802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2777127795_)))
                                    (_hd2777027799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2777127795_))))
                                (___kont4570445705_
                                 _tl2776927802_
                                 _hd2777027799_)))
                            (___kont4570645707_))))))
                 (_loop-class-list27670_
                  (lambda (_rest27672_ _vars27674_ _K27675_)
                    (let* ((___stx4571745718_ _rest27672_)
                           (_g2767827693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4571745718_))))
                      (let ((___kont4572045721_
                             (lambda (_L27731_ _L27733_)
                               (let ((__tmp50094
                                      (lambda (_g2774927751_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27670_
                                           _L27731_
                                           _g2774927751_
                                           _K27675_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27733_
                                  _vars27674_
                                  __tmp50094))))
                            (___kont4572245723_
                             (lambda () (_K27675_ _vars27674_))))
                        (if (gx#stx-pair? ___stx4571745718_)
                            (let ((_e2768427711_
                                   (gx#syntax-e ___stx4571745718_)))
                              (let ((_tl2768227718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768427711_)))
                                    (_hd2768327715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768427711_))))
                                (if (gx#stx-pair? _tl2768227718_)
                                    (let ((_e2768727721_
                                           (gx#syntax-e _tl2768227718_)))
                                      (let ((_tl2768527728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2768727721_)))
                                            (_hd2768627725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2768727721_))))
                                        (___kont4572045721_
                                         _tl2768527728_
                                         _hd2768627725_)))
                                    (___kont4572245723_))))
                            (___kont4572245723_)))))))
          (let ()
            (declare (not safe))
            (_loop27666_ _ptree27663_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24624_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)
        (letrec ((_generate124631_
                  (lambda (_tgt25876_ _ptree25878_ _K25879_ _E25880_)
                    (let* ((_g2588225890_
                            (lambda (_g2588325886_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2588325886_)))
                           (_g2588127659_
                            (lambda (_g2588325894_)
                              ((lambda (_L25897_)
                                 (let ()
                                   (let* ((___stx4595345954_ _ptree25878_)
                                          (_g2592426066_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4595345954_))))
                                     (let ((___kont4595645957_
                                            (lambda (_L27374_ _L27376_)
                                              (let* ((___stx4587145872_
                                                      _L27374_)
                                                     (_g2739327428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4587145872_))))
                                                (let ((___kont4587445875_
                                                       (lambda ()
                                                         (let ((__tmp50095
                                                                (let ((__tmp50098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50101 (gx#datum->syntax '#f '?))
                                     (__tmp50099
                                      (let ((__tmp50100
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp50100))))
                                 (declare (not safe))
                                 (cons __tmp50101 __tmp50099)))
                              (__tmp50096
                               (let ((__tmp50097
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons _K25879_ __tmp50097))))
                          (declare (not safe))
                          (cons __tmp50098 __tmp50096))))
                   (declare (not safe))
                   (cons 'if __tmp50095))))
              (___kont4587645877_
               (lambda (_L27629_)
                 (let ((__tmp50102
                        (let ((__tmp50106
                               (let ((__tmp50109 (gx#datum->syntax '#f '?))
                                     (__tmp50107
                                      (let ((__tmp50108
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp50108))))
                                 (declare (not safe))
                                 (cons __tmp50109 __tmp50107)))
                              (__tmp50103
                               (let ((__tmp50105
                                      (let ()
                                        (declare (not safe))
                                        (_generate124631_
                                         _tgt25876_
                                         _L27629_
                                         _K25879_
                                         _E25880_)))
                                     (__tmp50104
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50105 __tmp50104))))
                          (declare (not safe))
                          (cons __tmp50106 __tmp50103))))
                   (declare (not safe))
                   (cons 'if __tmp50102))))
              (___kont4587845879_
               (lambda (_L27567_)
                 (let* ((_g2758127589_
                         (lambda (_g2758227585_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2758227585_)))
                        (_g2758027608_
                         (lambda (_g2758227593_)
                           ((lambda (_L27596_)
                              (let ()
                                (let ((__tmp50110
                                       (let ((__tmp50117
                                              (let ((__tmp50118
                                                     (let ((__tmp50119
                                                            (let ((__tmp50120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50121
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L27376_ __tmp50121))))
                      (declare (not safe))
                      (cons __tmp50120 '()))))
               (declare (not safe))
               (cons _L27596_ __tmp50119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50118 '())))
                                             (__tmp50111
                                              (let ((__tmp50112
                                                     (let ((__tmp50113
                                                            (let ((__tmp50114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50116
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27596_
                                     _L27567_
                                     _K25879_
                                     _E25880_)))
                                 (__tmp50115
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp50116 __tmp50115))))
                      (declare (not safe))
                      (cons _L27596_ __tmp50114))))
               (declare (not safe))
               (cons 'if __tmp50113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50112 '()))))
                                         (declare (not safe))
                                         (cons __tmp50117 __tmp50111))))
                                  (declare (not safe))
                                  (cons 'let __tmp50110))))
                            _g2758227593_)))
                        (__tmp50122 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2758027608_ __tmp50122))))
              (___kont4588045881_
               (lambda (_L27483_ _L27485_)
                 (let* ((_g2750527513_
                         (lambda (_g2750627509_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2750627509_)))
                        (_g2750427532_
                         (lambda (_g2750627517_)
                           ((lambda (_L27520_)
                              (let ()
                                (let ((__tmp50123
                                       (let ((__tmp50135
                                              (let ((__tmp50138
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp50136
                                                     (let ((__tmp50137
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27376_ __tmp50137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50138 __tmp50136)))
                                             (__tmp50124
                                              (let ((__tmp50126
                                                     (let ((__tmp50127
                                                            (let ((__tmp50130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50131
                                  (let ((__tmp50132
                                         (let ((__tmp50133
                                                (let ((__tmp50134
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25897_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27485_ __tmp50134))))
                                           (declare (not safe))
                                           (cons __tmp50133 '()))))
                                    (declare (not safe))
                                    (cons _L27520_ __tmp50132))))
                             (declare (not safe))
                             (cons __tmp50131 '())))
                          (__tmp50128
                           (let ((__tmp50129
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27520_
                                     _L27483_
                                     _K25879_
                                     _E25880_))))
                             (declare (not safe))
                             (cons __tmp50129 '()))))
                      (declare (not safe))
                      (cons __tmp50130 __tmp50128))))
               (declare (not safe))
               (cons 'let __tmp50127)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50125
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50126 __tmp50125))))
                                         (declare (not safe))
                                         (cons __tmp50135 __tmp50124))))
                                  (declare (not safe))
                                  (cons 'if __tmp50123))))
                            _g2750627517_)))
                        (__tmp50139 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2750427532_ __tmp50139)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2739027640_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4587145872_)
                                                               (let ((_e2739827619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4587145872_)))
                         (let ((_tl2739627626_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2739827619_)))
                               (_hd2739727623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2739827619_))))
                           (if (gx#stx-null? _tl2739627626_)
                               (___kont4587645877_ _hd2739727623_)
                               (if (gx#stx-datum? _hd2739727623_)
                                   (let ((_e2740327553_
                                          (gx#stx-e _hd2739727623_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2740327553_ '=>:))
                                         (if (gx#stx-pair? _tl2739627626_)
                                             (let ((_e2740627557_
                                                    (gx#syntax-e
                                                     _tl2739627626_)))
                                               (let ((_tl2740427564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2740627557_)))
                                                     (_hd2740527561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2740627557_))))
                                                 (if (gx#stx-null?
                                                      _tl2740427564_)
                                                     (___kont4587845879_
                                                      _hd2740527561_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2739327428_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2740327553_ '::))
                                             (if (gx#stx-pair? _tl2739627626_)
                                                 (let ((_e2741527449_
                                                        (gx#syntax-e
                                                         _tl2739627626_)))
                                                   (let ((_tl2741327456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2741527449_)))
                                                         (_hd2741427453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2741527449_))))
                                                     (if (gx#stx-pair?
                                                          _tl2741327456_)
                                                         (let ((_e2741827459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2741327456_)))
                   (let ((_tl2741627466_
                          (let () (declare (not safe)) (##cdr _e2741827459_)))
                         (_hd2741727463_
                          (let () (declare (not safe)) (##car _e2741827459_))))
                     (if (gx#stx-datum? _hd2741727463_)
                         (let ((_e2741927469_ (gx#stx-e _hd2741727463_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2741927469_ '=>:))
                               (if (gx#stx-pair? _tl2741627466_)
                                   (let ((_e2742227473_
                                          (gx#syntax-e _tl2741627466_)))
                                     (let ((_tl2742027480_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2742227473_)))
                                           (_hd2742127477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2742227473_))))
                                       (if (gx#stx-null? _tl2742027480_)
                                           (___kont4588045881_
                                            _hd2742127477_
                                            _hd2741427453_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_)))
                               (let () (declare (not safe)) (_g2739327428_))))
                         (let () (declare (not safe)) (_g2739327428_)))))
                 (let () (declare (not safe)) (_g2739327428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2739327428_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_))))))
                       (let () (declare (not safe)) (_g2739327428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4587145872_)
                                                        (___kont4587445875_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2739027640_))))))))
                                           (___kont4595845959_
                                            (lambda (_L27271_)
                                              (let* ((___stx4585545856_
                                                      _L27271_)
                                                     (_g2728427296_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4585545856_))))
                                                (let ((___kont4585845859_
                                                       (lambda (_L27324_
                                                                _L27326_)
                                                         (let ((__tmp50140
                                                                (let ((__tmp50141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27324_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp50141
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27326_
                    __tmp50140
                    _E25880_))))
              (___kont4586045861_ (lambda () _K25879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4585545856_)
                                                      (let ((_e2729027314_
                                                             (gx#syntax-e
                                                              ___stx4585545856_)))
                                                        (let ((_tl2728827321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2729027314_)))
                      (_hd2728927318_
                       (let () (declare (not safe)) (##car _e2729027314_))))
                  (___kont4585845859_ _tl2728827321_ _hd2728927318_)))
              (___kont4586045861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4596045961_
                                            (lambda (_L27178_)
                                              (let* ((___stx4583945840_
                                                      _L27178_)
                                                     (_g2719127203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4583945840_))))
                                                (let ((___kont4584245843_
                                                       (lambda (_L27231_
                                                                _L27233_)
                                                         (let ((__tmp50142
                                                                (let ((__tmp50143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27231_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp50143
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27233_
                    _K25879_
                    __tmp50142))))
              (___kont4584445845_ (lambda () _E25880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4583945840_)
                                                      (let ((_e2719727221_
                                                             (gx#syntax-e
                                                              ___stx4583945840_)))
                                                        (let ((_tl2719527228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2719727221_)))
                      (_hd2719627225_
                       (let () (declare (not safe)) (##car _e2719727221_))))
                  (___kont4584245843_ _tl2719527228_ _hd2719627225_)))
              (___kont4584445845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4596245963_
                                            (lambda (_L27143_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124631_
                                                 _tgt25876_
                                                 _L27143_
                                                 _E25880_
                                                 _K25879_))))
                                           (___kont4596445965_
                                            (lambda (_L27025_ _L27027_)
                                              (let* ((_g2704427059_
                                                      (lambda (_g2704527055_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2704527055_)))
                                                     (_g2704327108_
                                                      (lambda (_g2704527063_)
                                                        (if (gx#stx-pair?
                                                             _g2704527063_)
                                                            (let ((_e2705027066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2704527063_)))
                      (let ((_hd2704927070_
                             (let ()
                               (declare (not safe))
                               (##car _e2705027066_)))
                            (_tl2704827073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2705027066_))))
                        (if (gx#stx-pair? _tl2704827073_)
                            (let ((_e2705327076_ (gx#syntax-e _tl2704827073_)))
                              (let ((_hd2705227080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2705327076_)))
                                    (_tl2705127083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2705327076_))))
                                (if (gx#stx-null? _tl2705127083_)
                                    ((lambda (_L27086_ _L27088_)
                                       (let ()
                                         (let ((__tmp50144
                                                (let ((__tmp50182
                                                       (let ((__tmp50184
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp50183
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25897_ '()))))
                 (declare (not safe))
                 (cons __tmp50184 __tmp50183)))
              (__tmp50145
               (let ((__tmp50147
                      (let ((_hd-pat27104_ (gx#stx-e _L27027_))
                            (_tl-pat27106_ (gx#stx-e _L27025_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27104_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27106_ '(any:))))
                            _K25879_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27106_ '(any:)))
                                (let ((__tmp50173
                                       (let ((__tmp50176
                                              (let ((__tmp50177
                                                     (let ((__tmp50178
                                                            (let ((__tmp50179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50181 (gx#datum->syntax '#f '##car))
                                 (__tmp50180
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons __tmp50181 __tmp50180))))
                      (declare (not safe))
                      (cons __tmp50179 '()))))
               (declare (not safe))
               (cons _L27088_ __tmp50178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50177 '())))
                                             (__tmp50174
                                              (let ((__tmp50175
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124631_
                                                        _L27088_
                                                        _L27027_
                                                        _K25879_
                                                        _E25880_))))
                                                (declare (not safe))
                                                (cons __tmp50175 '()))))
                                         (declare (not safe))
                                         (cons __tmp50176 __tmp50174))))
                                  (declare (not safe))
                                  (cons 'let __tmp50173))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27104_ '(any:)))
                                    (let ((__tmp50164
                                           (let ((__tmp50167
                                                  (let ((__tmp50168
                                                         (let ((__tmp50169
                                                                (let ((__tmp50170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50172 (gx#datum->syntax '#f '##cdr))
                                     (__tmp50171
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50172 __tmp50171))))
                          (declare (not safe))
                          (cons __tmp50170 '()))))
                   (declare (not safe))
                   (cons _L27086_ __tmp50169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50168 '())))
                                                 (__tmp50165
                                                  (let ((__tmp50166
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124631_
                                                            _L27086_
                                                            _L27025_
                                                            _K25879_
                                                            _E25880_))))
                                                    (declare (not safe))
                                                    (cons __tmp50166 '()))))
                                             (declare (not safe))
                                             (cons __tmp50167 __tmp50165))))
                                      (declare (not safe))
                                      (cons 'let __tmp50164))
                                    (let ((__tmp50148
                                           (let ((__tmp50152
                                                  (let ((__tmp50159
                                                         (let ((__tmp50160
                                                                (let ((__tmp50161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50163 (gx#datum->syntax '#f '##car))
                                     (__tmp50162
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50163 __tmp50162))))
                          (declare (not safe))
                          (cons __tmp50161 '()))))
                   (declare (not safe))
                   (cons _L27088_ __tmp50160)))
                (__tmp50153
                 (let ((__tmp50154
                        (let ((__tmp50155
                               (let ((__tmp50156
                                      (let ((__tmp50158
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp50157
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50158 __tmp50157))))
                                 (declare (not safe))
                                 (cons __tmp50156 '()))))
                          (declare (not safe))
                          (cons _L27086_ __tmp50155))))
                   (declare (not safe))
                   (cons __tmp50154 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50159
                                                          __tmp50153)))
                                                 (__tmp50149
                                                  (let ((__tmp50150
                                                         (let ((__tmp50151
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124631_
                           _L27086_
                           _L27025_
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_ _L27088_ _L27027_ __tmp50151 _E25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50150 '()))))
                                             (declare (not safe))
                                             (cons __tmp50152 __tmp50149))))
                                      (declare (not safe))
                                      (cons 'let __tmp50148)))))))
                     (__tmp50146
                      (let () (declare (not safe)) (cons _E25880_ '()))))
                 (declare (not safe))
                 (cons __tmp50147 __tmp50146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50182
                                                        __tmp50145))))
                                           (declare (not safe))
                                           (cons 'if __tmp50144))))
                                     _hd2705227080_
                                     _hd2704927070_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2704427059_ _g2704527063_)))))
                            (let ()
                              (declare (not safe))
                              (_g2704427059_ _g2704527063_)))))
                    (let ()
                      (declare (not safe))
                      (_g2704427059_ _g2704527063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50185
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2704327108_ __tmp50185))))
                                           (___kont4596645967_
                                            (lambda ()
                                              (let ((__tmp50186
                                                     (let ((__tmp50189
                                                            (let ((__tmp50191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp50190
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp50191 __tmp50190)))
                   (__tmp50187
                    (let ((__tmp50188
                           (let () (declare (not safe)) (cons _E25880_ '()))))
                      (declare (not safe))
                      (cons _K25879_ __tmp50188))))
               (declare (not safe))
               (cons __tmp50189 __tmp50187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp50186))))
                                           (___kont4596845969_
                                            (lambda (_L26941_ _L26943_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24633_
                                                 _tgt25876_
                                                 _L26943_
                                                 _L26941_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4597045971_
                                            (lambda (_L26855_)
                                              (let* ((_g2686926877_
                                                      (lambda (_g2687026873_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2687026873_)))
                                                     (_g2686826896_
                                                      (lambda (_g2687026881_)
                                                        ((lambda (_L26884_)
                                                           (let ()
                                                             (let ((__tmp50192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50205
                                   (let ((__tmp50207
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp50206
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50207 __tmp50206)))
                                  (__tmp50193
                                   (let ((__tmp50195
                                          (let ((__tmp50196
                                                 (let ((__tmp50199
                                                        (let ((__tmp50200
                                                               (let ((__tmp50201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp50202
                                     (let ((__tmp50204
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp50203
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25897_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50204 __tmp50203))))
                                (declare (not safe))
                                (cons __tmp50202 '()))))
                         (declare (not safe))
                         (cons _L26884_ __tmp50201))))
                  (declare (not safe))
                  (cons __tmp50200 '())))
               (__tmp50197
                (let ((__tmp50198
                       (let ()
                         (declare (not safe))
                         (_generate124631_
                          _L26884_
                          _L26855_
                          _K25879_
                          _E25880_))))
                  (declare (not safe))
                  (cons __tmp50198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50199
                                                         __tmp50197))))
                                            (declare (not safe))
                                            (cons 'let __tmp50196)))
                                         (__tmp50194
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50195 __tmp50194))))
                              (declare (not safe))
                              (cons __tmp50205 __tmp50193))))
                       (declare (not safe))
                       (cons 'if __tmp50192))))
                 _g2687026881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50208
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2686826896_ __tmp50208))))
                                           (___kont4597245973_
                                            (lambda (_L26660_)
                                              (let* ((___stx4578945790_
                                                      _L26660_)
                                                     (_g2667526698_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4578945790_))))
                                                (let ((___kont4579245793_
                                                       (lambda (_L26775_)
                                                         (let* ((_g2678926797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2679026793_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2679026793_)))
                        (_g2678826816_
                         (lambda (_g2679026801_)
                           ((lambda (_L26804_)
                              (let ()
                                (let ((__tmp50209
                                       (let ((__tmp50213
                                              (let ((__tmp50219
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp50214
                                                     (let ((__tmp50216
                                                            (let ((__tmp50218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp50217
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp50218 __tmp50217)))
                   (__tmp50215
                    (let () (declare (not safe)) (cons _L26804_ '()))))
               (declare (not safe))
               (cons __tmp50216 __tmp50215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50219 __tmp50214)))
                                             (__tmp50210
                                              (let ((__tmp50212
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24634_
                                                        _tgt25876_
                                                        _L26775_
                                                        '0
                                                        _K25879_
                                                        _E25880_)))
                                                    (__tmp50211
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50212 __tmp50211))))
                                         (declare (not safe))
                                         (cons __tmp50213 __tmp50210))))
                                  (declare (not safe))
                                  (cons 'if __tmp50209))))
                            _g2679026801_)))
                        (__tmp50220 (gx#stx-length _L26775_)))
                   (declare (not safe))
                   (_g2678826816_ __tmp50220))))
              (___kont4579445795_
               (lambda (_L26729_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24635_
                    _tgt25876_
                    _L26729_
                    'values->list
                    _K25879_
                    _E25880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4578945790_)
                                                      (let ((_e2668026751_
                                                             (gx#syntax-e
                                                              ___stx4578945790_)))
                                                        (let ((_tl2667826758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2668026751_)))
                      (_hd2667926755_
                       (let () (declare (not safe)) (##car _e2668026751_))))
                  (if (gx#stx-datum? _hd2667926755_)
                      (let ((_e2668126761_ (gx#stx-e _hd2667926755_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2668126761_ 'simple:))
                            (if (gx#stx-pair? _tl2667826758_)
                                (let ((_e2668426765_
                                       (gx#syntax-e _tl2667826758_)))
                                  (let ((_tl2668226772_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2668426765_)))
                                        (_hd2668326769_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2668426765_))))
                                    (if (gx#stx-null? _tl2668226772_)
                                        (___kont4579245793_ _hd2668326769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2667526698_)))))
                                (let () (declare (not safe)) (_g2667526698_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2668126761_ 'list:))
                                (if (gx#stx-pair? _tl2667826758_)
                                    (let ((_e2669226719_
                                           (gx#syntax-e _tl2667826758_)))
                                      (let ((_tl2669026726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2669226719_)))
                                            (_hd2669126723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2669226719_))))
                                        (if (gx#stx-null? _tl2669026726_)
                                            (___kont4579445795_ _hd2669126723_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2667526698_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2667526698_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2667526698_)))))
                      (let () (declare (not safe)) (_g2667526698_)))))
              (let () (declare (not safe)) (_g2667526698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4597445975_
                                            (lambda (_L26465_)
                                              (let* ((___stx4573945740_
                                                      _L26465_)
                                                     (_g2648026503_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4573945740_))))
                                                (let ((___kont4574245743_
                                                       (lambda (_L26580_)
                                                         (let* ((_g2659426602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2659526598_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2659526598_)))
                        (_g2659326621_
                         (lambda (_g2659526606_)
                           ((lambda (_L26609_)
                              (let ()
                                (let ((__tmp50221
                                       (let ((__tmp50236
                                              (let ((__tmp50238
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp50237
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25897_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50238 __tmp50237)))
                                             (__tmp50222
                                              (let ((__tmp50224
                                                     (let ((__tmp50225
                                                            (let ((__tmp50229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50235 (gx#datum->syntax '#f '##fx=))
                                 (__tmp50230
                                  (let ((__tmp50232
                                         (let ((__tmp50234
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp50233
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25897_ '()))))
                                           (declare (not safe))
                                           (cons __tmp50234 __tmp50233)))
                                        (__tmp50231
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50232 __tmp50231))))
                             (declare (not safe))
                             (cons __tmp50235 __tmp50230)))
                          (__tmp50226
                           (let ((__tmp50228
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24634_
                                     _tgt25876_
                                     _L26580_
                                     '0
                                     _K25879_
                                     _E25880_)))
                                 (__tmp50227
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp50228 __tmp50227))))
                      (declare (not safe))
                      (cons __tmp50229 __tmp50226))))
               (declare (not safe))
               (cons 'if __tmp50225)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50223
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50224 __tmp50223))))
                                         (declare (not safe))
                                         (cons __tmp50236 __tmp50222))))
                                  (declare (not safe))
                                  (cons 'if __tmp50221))))
                            _g2659526606_)))
                        (__tmp50239 (gx#stx-length _L26580_)))
                   (declare (not safe))
                   (_g2659326621_ __tmp50239))))
              (___kont4574445745_
               (lambda (_L26534_)
                 (let ((__tmp50240
                        (let ((__tmp50244
                               (let ((__tmp50246
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp50245
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50246 __tmp50245)))
                              (__tmp50241
                               (let ((__tmp50243
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24635_
                                         _tgt25876_
                                         _L26534_
                                         'vector->list
                                         _K25879_
                                         _E25880_)))
                                     (__tmp50242
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50243 __tmp50242))))
                          (declare (not safe))
                          (cons __tmp50244 __tmp50241))))
                   (declare (not safe))
                   (cons 'if __tmp50240)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4573945740_)
                                                      (let ((_e2648526556_
                                                             (gx#syntax-e
                                                              ___stx4573945740_)))
                                                        (let ((_tl2648326563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2648526556_)))
                      (_hd2648426560_
                       (let () (declare (not safe)) (##car _e2648526556_))))
                  (if (gx#stx-datum? _hd2648426560_)
                      (let ((_e2648626566_ (gx#stx-e _hd2648426560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2648626566_ 'simple:))
                            (if (gx#stx-pair? _tl2648326563_)
                                (let ((_e2648926570_
                                       (gx#syntax-e _tl2648326563_)))
                                  (let ((_tl2648726577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2648926570_)))
                                        (_hd2648826574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2648926570_))))
                                    (if (gx#stx-null? _tl2648726577_)
                                        (___kont4574245743_ _hd2648826574_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2648026503_)))))
                                (let () (declare (not safe)) (_g2648026503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2648626566_ 'list:))
                                (if (gx#stx-pair? _tl2648326563_)
                                    (let ((_e2649726524_
                                           (gx#syntax-e _tl2648326563_)))
                                      (let ((_tl2649526531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2649726524_)))
                                            (_hd2649626528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2649726524_))))
                                        (if (gx#stx-null? _tl2649526531_)
                                            (___kont4574445745_ _hd2649626528_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2648026503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2648026503_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2648026503_)))))
                      (let () (declare (not safe)) (_g2648026503_)))))
              (let () (declare (not safe)) (_g2648026503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4597645977_
                                            (lambda (_L26416_ _L26418_)
                                              (let ((__tmp50247
                                                     (gx#stx-e _L26418_)))
                                                (declare (not safe))
                                                (_generate-struct24636_
                                                 __tmp50247
                                                 _tgt25876_
                                                 _L26416_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4597845979_
                                            (lambda (_L26357_ _L26359_)
                                              (let ((__tmp50248
                                                     (gx#stx-e _L26359_)))
                                                (declare (not safe))
                                                (_generate-class24639_
                                                 __tmp50248
                                                 _tgt25876_
                                                 _L26357_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4598045981_
                                            (lambda (_L26260_)
                                              (let* ((_g2627426282_
                                                      (lambda (_g2627526278_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2627526278_)))
                                                     (_g2627326301_
                                                      (lambda (_g2627526286_)
                                                        ((lambda (_L26289_)
                                                           (let ()
                                                             (let ((__tmp50249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50252
                                   (let ((__tmp50253
                                          (let ((__tmp50254
                                                 (let ((__tmp50255
                                                        (let ((__tmp50257
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp50256
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26260_ '()))))
                  (declare (not safe))
                  (cons __tmp50257 __tmp50256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50255 '()))))
                                            (declare (not safe))
                                            (cons _L25897_ __tmp50254))))
                                     (declare (not safe))
                                     (cons _L26289_ __tmp50253)))
                                  (__tmp50250
                                   (let ((__tmp50251
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons _K25879_ __tmp50251))))
                              (declare (not safe))
                              (cons __tmp50252 __tmp50250))))
                       (declare (not safe))
                       (cons 'if __tmp50249))))
                 _g2627526286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50258
                                                      (let ((_e26305_
                                                             (gx#stx-e
                                                              _L26260_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26305_))
                        (keyword? _e26305_)
                        (let () (declare (not safe)) (immediate? _e26305_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26305_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2627326301_ __tmp50258))))
                                           (___kont4598245983_
                                            (lambda (_L26180_ _L26182_)
                                              (let* ((_g2619826206_
                                                      (lambda (_g2619926202_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2619926202_)))
                                                     (_g2619726225_
                                                      (lambda (_g2619926210_)
                                                        ((lambda (_L26213_)
                                                           (let ()
                                                             (let ((__tmp50259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50262
                                   (let ((__tmp50263
                                          (let ((__tmp50264
                                                 (let ((__tmp50265
                                                        (let ((__tmp50266
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25897_ '()))))
                  (declare (not safe))
                  (cons _L26182_ __tmp50266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50265 '()))))
                                            (declare (not safe))
                                            (cons _L26213_ __tmp50264))))
                                     (declare (not safe))
                                     (cons __tmp50263 '())))
                                  (__tmp50260
                                   (let ((__tmp50261
                                          (let ()
                                            (declare (not safe))
                                            (_generate124631_
                                             _L26213_
                                             _L26180_
                                             _K25879_
                                             _E25880_))))
                                     (declare (not safe))
                                     (cons __tmp50261 '()))))
                              (declare (not safe))
                              (cons __tmp50262 __tmp50260))))
                       (declare (not safe))
                       (cons 'let __tmp50259))))
                 _g2619926210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50267
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619726225_ __tmp50267))))
                                           (___kont4598445985_
                                            (lambda (_L26122_)
                                              (let ((__tmp50268
                                                     (let ((__tmp50270
                                                            (let ((__tmp50271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50272
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L26122_ __tmp50272))))
                      (declare (not safe))
                      (cons __tmp50271 '())))
                   (__tmp50269
                    (let () (declare (not safe)) (cons _K25879_ '()))))
               (declare (not safe))
               (cons __tmp50270 __tmp50269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp50268))))
                                           (___kont4598645987_
                                            (lambda () _K25879_)))
                                       (if (gx#stx-pair? ___stx4595345954_)
                                           (let ((_e2593027350_
                                                  (gx#syntax-e
                                                   ___stx4595345954_)))
                                             (let ((_tl2592827357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2593027350_)))
                                                   (_hd2592927354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2593027350_))))
                                               (if (gx#stx-datum?
                                                    _hd2592927354_)
                                                   (let ((_e2593127360_
                                                          (gx#stx-e
                                                           _hd2592927354_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2593427364_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2593227371_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2593427364_)))
                             (_hd2593327368_
                              (let ()
                                (declare (not safe))
                                (##car _e2593427364_))))
                         (___kont4595645957_ _tl2593227371_ _hd2593327368_)))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let () (declare (not safe)) (equal? _e2593127360_ 'and:))
                     (___kont4595845959_ _tl2592827357_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'or:))
                         (___kont4596045961_ _tl2592827357_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'not:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2595227133_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2595027140_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2595227133_)))
                                         (_hd2595127137_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2595227133_))))
                                     (if (gx#stx-null? _tl2595027140_)
                                         (___kont4596245963_ _hd2595127137_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'cons:))
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2596127005_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2595927012_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2596127005_)))
                                             (_hd2596027009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2596127005_))))
                                         (if (gx#stx-pair? _tl2595927012_)
                                             (let ((_e2596427015_
                                                    (gx#syntax-e
                                                     _tl2595927012_)))
                                               (let ((_tl2596227022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2596427015_)))
                                                     (_hd2596327019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2596427015_))))
                                                 (if (gx#stx-null?
                                                      _tl2596227022_)
                                                     (___kont4596445965_
                                                      _hd2596327019_
                                                      _hd2596027009_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'null:))
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4596645967_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2593127360_ 'splice:))
                                         (if (gx#stx-pair? _tl2592827357_)
                                             (let ((_e2597726921_
                                                    (gx#syntax-e
                                                     _tl2592827357_)))
                                               (let ((_tl2597526928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2597726921_)))
                                                     (_hd2597626925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2597726921_))))
                                                 (if (gx#stx-pair?
                                                      _tl2597526928_)
                                                     (let ((_e2598026931_
                                                            (gx#syntax-e
                                                             _tl2597526928_)))
                                                       (let ((_tl2597826938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2598026931_)))
                     (_hd2597926935_
                      (let () (declare (not safe)) (##car _e2598026931_))))
                 (if (gx#stx-null? _tl2597826938_)
                     (___kont4596845969_ _hd2597926935_ _hd2597626925_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2593127360_ 'box:))
                                             (if (gx#stx-pair? _tl2592827357_)
                                                 (let ((_e2598826845_
                                                        (gx#syntax-e
                                                         _tl2592827357_)))
                                                   (let ((_tl2598626852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2598826845_)))
                                                         (_hd2598726849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2598826845_))))
                                                     (if (gx#stx-null?
                                                          _tl2598626852_)
                                                         (___kont4597045971_
                                                          _hd2598726849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2592426066_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2593127360_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2592827357_)
                                                     (let ((_e2599626650_
                                                            (gx#syntax-e
                                                             _tl2592827357_)))
                                                       (let ((_tl2599426657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2599626650_)))
                     (_hd2599526654_
                      (let () (declare (not safe)) (##car _e2599626650_))))
                 (if (gx#stx-null? _tl2599426657_)
                     (___kont4597245973_ _hd2599526654_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2593127360_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2592827357_)
                                                         (let ((_e2600426455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2592827357_)))
                   (let ((_tl2600226462_
                          (let () (declare (not safe)) (##cdr _e2600426455_)))
                         (_hd2600326459_
                          (let () (declare (not safe)) (##car _e2600426455_))))
                     (if (gx#stx-null? _tl2600226462_)
                         (___kont4597445975_ _hd2600326459_)
                         (let () (declare (not safe)) (_g2592426066_)))))
                 (let () (declare (not safe)) (_g2592426066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2601326396_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2601126403_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2601326396_)))
                             (_hd2601226400_
                              (let ()
                                (declare (not safe))
                                (##car _e2601326396_))))
                         (if (gx#stx-pair? _tl2601126403_)
                             (let ((_e2601626406_
                                    (gx#syntax-e _tl2601126403_)))
                               (let ((_tl2601426413_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2601626406_)))
                                     (_hd2601526410_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2601626406_))))
                                 (if (gx#stx-null? _tl2601426413_)
                                     (___kont4597645977_
                                      _hd2601526410_
                                      _hd2601226400_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2593127360_ 'class:))
                     (if (gx#stx-pair? _tl2592827357_)
                         (let ((_e2602526337_ (gx#syntax-e _tl2592827357_)))
                           (let ((_tl2602326344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2602526337_)))
                                 (_hd2602426341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2602526337_))))
                             (if (gx#stx-pair? _tl2602326344_)
                                 (let ((_e2602826347_
                                        (gx#syntax-e _tl2602326344_)))
                                   (let ((_tl2602626354_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2602826347_)))
                                         (_hd2602726351_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2602826347_))))
                                     (if (gx#stx-null? _tl2602626354_)
                                         (___kont4597845979_
                                          _hd2602726351_
                                          _hd2602426341_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2592426066_)))))
                         (let () (declare (not safe)) (_g2592426066_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'datum:))
                         (if (gx#stx-pair? _tl2592827357_)
                             (let ((_e2603626250_
                                    (gx#syntax-e _tl2592827357_)))
                               (let ((_tl2603426257_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2603626250_)))
                                     (_hd2603526254_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2603626250_))))
                                 (if (gx#stx-null? _tl2603426257_)
                                     (___kont4598045981_ _hd2603526254_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'apply:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2604526160_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2604326167_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2604526160_)))
                                         (_hd2604426164_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2604526160_))))
                                     (if (gx#stx-pair? _tl2604326167_)
                                         (let ((_e2604826170_
                                                (gx#syntax-e _tl2604326167_)))
                                           (let ((_tl2604626177_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2604826170_)))
                                                 (_hd2604726174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2604826170_))))
                                             (if (gx#stx-null? _tl2604626177_)
                                                 (___kont4598245983_
                                                  _hd2604726174_
                                                  _hd2604426164_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'var:))
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2605626112_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2605426119_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2605626112_)))
                                             (_hd2605526116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2605626112_))))
                                         (if (gx#stx-null? _tl2605426119_)
                                             (___kont4598445985_
                                              _hd2605526116_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'any:))
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4598645987_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2592426066_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2592426066_)))))))
                               _g2588325894_))))
                      (declare (not safe))
                      (_g2588127659_ _tgt25876_))))
                 (_generate-splice24633_
                  (lambda (_tgt25248_ _hd25250_ _rest25251_ _K25252_ _E25253_)
                    (let* ((_g2525525272_
                            (lambda (_g2525625268_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2525625268_)))
                           (_g2525425872_
                            (lambda (_g2525625276_)
                              (if (gx#stx-pair/null? _g2525625276_)
                                  (let ((_g50273_
                                         (gx#syntax-split-splice
                                          _g2525625276_
                                          '0)))
                                    (begin
                                      (let ((_g50274_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g50273_)
                                                   (##vector-length _g50273_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g50274_ 2)))
                                            (error "Context expects 2 values"
                                                   _g50274_)))
                                      (let ((_target2525825279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50273_ 0)))
                                            (_tl2526025282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50273_ 1))))
                                        (if (gx#stx-null? _tl2526025282_)
                                            (letrec ((_loop2526125285_
                                                      (lambda (_hd2525925289_
                                                               _var2526525292_)
                                                        (if (gx#stx-pair?
                                                             _hd2525925289_)
                                                            (let ((_e2526225295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2525925289_)))
                      (let ((_lp-hd2526325299_
                             (let ()
                               (declare (not safe))
                               (##car _e2526225295_)))
                            (_lp-tl2526425302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2526225295_))))
                        (let ((__tmp50365
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2526325299_ _var2526525292_))))
                          (declare (not safe))
                          (_loop2526125285_ _lp-tl2526425302_ __tmp50365))))
                    (let ((_var2526625305_ (reverse _var2526525292_)))
                      ((lambda (_L25309_)
                         (let ()
                           (let* ((_g2532525342_
                                   (lambda (_g2532625338_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2532625338_)))
                                  (_g2532425860_
                                   (lambda (_g2532625346_)
                                     (if (gx#stx-pair/null? _g2532625346_)
                                         (let ((_g50275_
                                                (gx#syntax-split-splice
                                                 _g2532625346_
                                                 '0)))
                                           (begin
                                             (let ((_g50276_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g50275_)
                                                          (##vector-length
                                                           _g50275_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g50276_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g50276_)))
                                             (let ((_target2532825349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50275_
                                                       0)))
                                                   (_tl2533025352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50275_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2533025352_)
                                                   (letrec ((_loop2533125355_
                                                             (lambda (_hd2532925359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2533525362_)
                       (if (gx#stx-pair? _hd2532925359_)
                           (let ((_e2533225365_ (gx#syntax-e _hd2532925359_)))
                             (let ((_lp-hd2533325369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2533225365_)))
                                   (_lp-tl2533425372_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2533225365_))))
                               (let ((__tmp50362
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2533325369_
                                              _var-r2533525362_))))
                                 (declare (not safe))
                                 (_loop2533125355_
                                  _lp-tl2533425372_
                                  __tmp50362))))
                           (let ((_var-r2533625375_
                                  (reverse _var-r2533525362_)))
                             ((lambda (_L25379_)
                                (let ()
                                  (let* ((_g2539625413_
                                          (lambda (_g2539725409_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2539725409_)))
                                         (_g2539525848_
                                          (lambda (_g2539725417_)
                                            (if (gx#stx-pair/null?
                                                 _g2539725417_)
                                                (let ((_g50277_
                                                       (gx#syntax-split-splice
                                                        _g2539725417_
                                                        '0)))
                                                  (begin
                                                    (let ((_g50278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50277_)
                         (##vector-length _g50277_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g50278_ 2)))
                  (error "Context expects 2 values" _g50278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2539925420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50277_
                                                              0)))
                                                          (_tl2540125423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50277_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2540125423_)
                                                          (letrec ((_loop2540225426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2540025430_ _init2540625433_)
                              (if (gx#stx-pair? _hd2540025430_)
                                  (let ((_e2540325436_
                                         (gx#syntax-e _hd2540025430_)))
                                    (let ((_lp-hd2540425440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2540325436_)))
                                          (_lp-tl2540525443_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2540325436_))))
                                      (let ((__tmp50358
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2540425440_
                                                     _init2540625433_))))
                                        (declare (not safe))
                                        (_loop2540225426_
                                         _lp-tl2540525443_
                                         __tmp50358))))
                                  (let ((_init2540725446_
                                         (reverse _init2540625433_)))
                                    ((lambda (_L25450_)
                                       (let ()
                                         (let* ((_g2546725475_
                                                 (lambda (_g2546825471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2546825471_)))
                                                (_g2546625844_
                                                 (lambda (_g2546825479_)
                                                   ((lambda (_L25482_)
                                                      (let ()
                                                        (let* ((_g2549525503_
                                                                (lambda (_g2549625499_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2549625499_)))
                       (_g2549425840_
                        (lambda (_g2549625507_)
                          ((lambda (_L25510_)
                             (let ()
                               (let* ((_g2552325531_
                                       (lambda (_g2552425527_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2552425527_)))
                                      (_g2552225836_
                                       (lambda (_g2552425535_)
                                         ((lambda (_L25538_)
                                            (let ()
                                              (let* ((_g2555125559_
                                                      (lambda (_g2555225555_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2555225555_)))
                                                     (_g2555025832_
                                                      (lambda (_g2555225563_)
                                                        ((lambda (_L25566_)
                                                           (let ()
                                                             (let* ((_g2557925587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2558025583_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2558025583_)))
                            (_g2557825828_
                             (lambda (_g2558025591_)
                               ((lambda (_L25594_)
                                  (let ()
                                    (let* ((_g2560725615_
                                            (lambda (_g2560825611_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2560825611_)))
                                           (_g2560625824_
                                            (lambda (_g2560825619_)
                                              ((lambda (_L25622_)
                                                 (let ()
                                                   (let* ((_g2563525643_
                                                           (lambda (_g2563625639_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2563625639_)))
                                                          (_g2563425820_
                                                           (lambda (_g2563625647_)
                                                             ((lambda (_L25650_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2566325671_
                                  (lambda (_g2566425667_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2566425667_)))
                                 (_g2566225805_
                                  (lambda (_g2566425675_)
                                    ((lambda (_L25678_)
                                       (let ()
                                         (let* ((_g2569125699_
                                                 (lambda (_g2569225695_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2569225695_)))
                                                (_g2569025793_
                                                 (lambda (_g2569225703_)
                                                   ((lambda (_L25706_)
                                                      (let ()
                                                        (let* ((_g2571925727_
                                                                (lambda (_g2572025723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2572025723_)))
                       (_g2571825789_
                        (lambda (_g2572025731_)
                          ((lambda (_L25734_)
                             (let ()
                               (let ()
                                 (let ((__tmp50332
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp50279
                                        (let ((__tmp50285
                                               (let ((__tmp50323
                                                      (let ((__tmp50324
                                                             (let ((__tmp50325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50331 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50326
                                   (let ((__tmp50328
                                          (let ((__tmp50329
                                                 (let ((__tmp50330
                                                        (lambda (_g2575625759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2575725762_)
                  (let ()
                    (declare (not safe))
                    (cons _g2575625759_ _g2575725762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp50330
                                                           '()
                                                           _L25309_))))
                                            (declare (not safe))
                                            (cons _L25622_ __tmp50329)))
                                         (__tmp50327
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50328 __tmp50327))))
                              (declare (not safe))
                              (cons __tmp50331 __tmp50326))))
                       (declare (not safe))
                       (cons __tmp50325 '()))))
                (declare (not safe))
                (cons _L25510_ __tmp50324)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50286
                                                      (let ((__tmp50313
                                                             (let ((__tmp50314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50315
                                   (let ((__tmp50322
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp50316
                                          (let ((__tmp50318
                                                 (let ((__tmp50319
                                                        (let ((__tmp50320
                                                               (let ((__tmp50321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575425765_ _g2575525768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575425765_ _g2575525768_)))))
                         (declare (not safe))
                         (foldr1 __tmp50321 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp50320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25594_ __tmp50319)))
                                                (__tmp50317
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50318 __tmp50317))))
                                     (declare (not safe))
                                     (cons __tmp50322 __tmp50316))))
                              (declare (not safe))
                              (cons __tmp50315 '()))))
                       (declare (not safe))
                       (cons _L25566_ __tmp50314)))
                    (__tmp50287
                     (let ((__tmp50288
                            (let ((__tmp50289
                                   (let ((__tmp50290
                                          (let ((__tmp50312
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50291
                                                 (let ((__tmp50309
                                                        (let ((__tmp50310
                                                               (let ((__tmp50311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2575225771_ _g2575325774_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575225771_ _g2575325774_)))))
                         (declare (not safe))
                         (foldr1 __tmp50311 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp50310)))
               (__tmp50292
                (let ((__tmp50293
                       (let ((__tmp50308 (gx#datum->syntax '#f 'if))
                             (__tmp50294
                              (let ((__tmp50305
                                     (let ((__tmp50307
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp50306
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25622_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50307 __tmp50306)))
                                    (__tmp50295
                                     (let ((__tmp50297
                                            (let ((__tmp50298
                                                   (let ((__tmp50302
                                                          (let ((__tmp50304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp50303
                         (let () (declare (not safe)) (cons _L25622_ '()))))
                    (declare (not safe))
                    (cons __tmp50304 __tmp50303)))
                 (__tmp50299
                  (let ((__tmp50300
                         (let ((__tmp50301
                                (lambda (_g2575025777_ _g2575125780_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2575025777_ _g2575125780_)))))
                           (declare (not safe))
                           (foldr1 __tmp50301 '() _L25379_))))
                    (declare (not safe))
                    (cons _L25622_ __tmp50300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50302
                                                           __tmp50299))))
                                              (declare (not safe))
                                              (cons _L25566_ __tmp50298)))
                                           (__tmp50296
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25706_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50297 __tmp50296))))
                                (declare (not safe))
                                (cons __tmp50305 __tmp50295))))
                         (declare (not safe))
                         (cons __tmp50308 __tmp50294))))
                  (declare (not safe))
                  (cons __tmp50293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50309
                                                         __tmp50292))))
                                            (declare (not safe))
                                            (cons __tmp50312 __tmp50291))))
                                     (declare (not safe))
                                     (cons __tmp50290 '()))))
                              (declare (not safe))
                              (cons _L25538_ __tmp50289))))
                       (declare (not safe))
                       (cons __tmp50288 '()))))
                (declare (not safe))
                (cons __tmp50313 __tmp50287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50323 __tmp50286)))
                                              (__tmp50280
                                               (let ((__tmp50281
                                                      (let ((__tmp50282
                                                             (let ((__tmp50283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50284
                                   (lambda (_g2574825783_ _g2574925786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2574825783_ _g2574925786_)))))
                              (declare (not safe))
                              (foldr1 __tmp50284 '() _L25450_))))
                       (declare (not safe))
                       (cons _L25482_ __tmp50283))))
                (declare (not safe))
                (cons _L25538_ __tmp50282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50281 '()))))
                                          (declare (not safe))
                                          (cons __tmp50285 __tmp50280))))
                                   (declare (not safe))
                                   (cons __tmp50332 __tmp50279)))))
                           _g2572025731_)))
                       (__tmp50333
                        (let ()
                          (declare (not safe))
                          (_generate124631_
                           _L25594_
                           _hd25250_
                           _L25678_
                           _L25706_))))
                  (declare (not safe))
                  (_g2571825789_ __tmp50333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2569225703_)))
                                                (__tmp50334
                                                 (let ((__tmp50335
                                                        (let ((__tmp50336
                                                               (let ((__tmp50337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2579625799_ _g2579725802_)
                                (let ((__tmp50338
                                       (let ((__tmp50340
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp50339
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2579625799_ '()))))
                                         (declare (not safe))
                                         (cons __tmp50340 __tmp50339))))
                                  (declare (not safe))
                                  (cons __tmp50338 _g2579725802_)))))
                         (declare (not safe))
                         (foldr1 __tmp50337 '() _L25379_))))
                  (declare (not safe))
                  (cons _L25622_ __tmp50336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25510_
                                                         __tmp50335))))
                                           (declare (not safe))
                                           (_g2569025793_ __tmp50334))))
                                     _g2566425675_)))
                                 (__tmp50341
                                  (let ((__tmp50342
                                         (let ((__tmp50349
                                                (let ((__tmp50351
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp50350
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25622_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp50351
                                                        __tmp50350)))
                                               (__tmp50343
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25379_
                                                   _L25309_)
                                                  (let ((__tmp50344
                                                         (lambda (_g2580825812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2580925815_
                          _g2581025817_)
                   (let ((__tmp50345
                          (let ((__tmp50348 (gx#datum->syntax '#f 'cons))
                                (__tmp50346
                                 (let ((__tmp50347
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2580825812_ '()))))
                                   (declare (not safe))
                                   (cons _g2580925815_ __tmp50347))))
                            (declare (not safe))
                            (cons __tmp50348 __tmp50346))))
                     (declare (not safe))
                     (cons __tmp50345 _g2581025817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp50344
                                                            '()
                                                            _L25379_
                                                            _L25309_)))))
                                           (declare (not safe))
                                           (cons __tmp50349 __tmp50343))))
                                    (declare (not safe))
                                    (cons _L25538_ __tmp50342))))
                            (declare (not safe))
                            (_g2566225805_ __tmp50341))))
                      _g2563625647_)))
                  (__tmp50352
                   (let ()
                     (declare (not safe))
                     (_generate124631_
                      _L25622_
                      _rest25251_
                      _K25252_
                      _E25253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2563425820_
                                                      __tmp50352))))
                                               _g2560825619_)))
                                           (__tmp50353 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2560625824_ __tmp50353))))
                                _g2558025591_)))
                            (__tmp50354 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2557825828_ __tmp50354))))
                 _g2555225563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50355
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2555025832_ __tmp50355))))
                                          _g2552425535_)))
                                      (__tmp50356 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2552225836_ __tmp50356))))
                           _g2549625507_)))
                       (__tmp50357 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2549425840_ __tmp50357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2546825479_))))
                                           (declare (not safe))
                                           (_g2546625844_ _tgt25248_))))
                                     _init2540725446_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2540225426_ _target2539925420_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2539625413_ _g2539725417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2539625413_
                                                   _g2539725417_)))))
                                         (__tmp50359
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp50360
                                                   (lambda (_g2585125854_
                                                            _g2585225857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2585125854_
                                                             _g2585225857_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp50360
                                                      '()
                                                      _L25309_)))
                                           (let ((__tmp50361
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp50361 '())))))
                                    (declare (not safe))
                                    (_g2539525848_ __tmp50359))))
                              _var-r2533625375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2533125355_
                                                        _target2532825349_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2532525342_
                                                      _g2532625346_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2532525342_ _g2532625346_)))))
                                  (__tmp50363
                                   (gx#gentemps
                                    (let ((__tmp50364
                                           (lambda (_g2586325866_
                                                    _g2586425869_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2586325866_
                                                     _g2586425869_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp50364 '() _L25309_)))))
                             (declare (not safe))
                             (_g2532425860_ __tmp50363))))
                       _var2526625305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2526125285_
                                                 _target2525825279_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2525525272_
                                               _g2525625276_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2525525272_ _g2525625276_)))))
                           (__tmp50366
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25250_))))
                      (declare (not safe))
                      (_g2525425872_ __tmp50366))))
                 (_generate-simple-vector24634_
                  (lambda (_tgt25090_
                           _body25092_
                           _start25093_
                           _K25094_
                           _E25095_)
                    (let _recur25097_ ((_rest25100_ _body25092_)
                                       (_off25102_ _start25093_))
                      (let* ((___stx4631146312_ _rest25100_)
                             (_g2510525117_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4631146312_))))
                        (let ((___kont4631446315_
                               (lambda (_L25145_ _L25147_)
                                 (let* ((_g2516225181_
                                         (lambda (_g2516325177_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2516325177_)))
                                        (_g2516125240_
                                         (lambda (_g2516325185_)
                                           (if (gx#stx-pair? _g2516325185_)
                                               (let ((_e2516925188_
                                                      (gx#syntax-e
                                                       _g2516325185_)))
                                                 (let ((_hd2516825192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2516925188_)))
                                                       (_tl2516725195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2516925188_))))
                                                   (if (gx#stx-pair?
                                                        _tl2516725195_)
                                                       (let ((_e2517225198_
                                                              (gx#syntax-e
                                                               _tl2516725195_)))
                                                         (let ((_hd2517125202_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2517225198_)))
                       (_tl2517025205_
                        (let () (declare (not safe)) (##cdr _e2517225198_))))
                   (if (gx#stx-pair? _tl2517025205_)
                       (let ((_e2517525208_ (gx#syntax-e _tl2517025205_)))
                         (let ((_hd2517425212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2517525208_)))
                               (_tl2517325215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2517525208_))))
                           (if (gx#stx-null? _tl2517325215_)
                               ((lambda (_L25218_ _L25220_ _L25221_)
                                  (let ()
                                    (let ((__tmp50367
                                           (let ((__tmp50372
                                                  (let ((__tmp50373
                                                         (let ((__tmp50374
                                                                (let ((__tmp50375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50378
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp50376
                                      (let ((__tmp50377
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25218_ '()))))
                                        (declare (not safe))
                                        (cons _L25220_ __tmp50377))))
                                 (declare (not safe))
                                 (cons __tmp50378 __tmp50376))))
                          (declare (not safe))
                          (cons __tmp50375 '()))))
                   (declare (not safe))
                   (cons _L25221_ __tmp50374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50373 '())))
                                                 (__tmp50368
                                                  (let ((__tmp50369
                                                         (let ((__tmp50370
                                                                (let ((__tmp50371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25102_ '1))))
                          (declare (not safe))
                          (_recur25097_ _L25145_ __tmp50371))))
                   (declare (not safe))
                   (_generate124631_ _L25221_ _L25147_ __tmp50370 _E25095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50369 '()))))
                                             (declare (not safe))
                                             (cons __tmp50372 __tmp50368))))
                                      (declare (not safe))
                                      (cons 'let __tmp50367))))
                                _hd2517425212_
                                _hd2517125202_
                                _hd2516825192_)
                               (let ()
                                 (declare (not safe))
                                 (_g2516225181_ _g2516325185_)))))
                       (let ()
                         (declare (not safe))
                         (_g2516225181_ _g2516325185_)))))
               (let () (declare (not safe)) (_g2516225181_ _g2516325185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2516225181_
                                                  _g2516325185_)))))
                                        (__tmp50379
                                         (list (gx#genident 'e)
                                               _tgt25090_
                                               _off25102_)))
                                   (declare (not safe))
                                   (_g2516125240_ __tmp50379))))
                              (___kont4631646317_ (lambda () _K25094_)))
                          (if (gx#stx-pair? ___stx4631146312_)
                              (let ((_e2511125135_
                                     (gx#syntax-e ___stx4631146312_)))
                                (let ((_tl2510925142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2511125135_)))
                                      (_hd2511025139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2511125135_))))
                                  (___kont4631446315_
                                   _tl2510925142_
                                   _hd2511025139_)))
                              (___kont4631646317_)))))))
                 (_generate-list-vector24635_
                  (lambda (_tgt24982_
                           _body24984_
                           _->list24985_
                           _K24986_
                           _E24987_)
                    (let* ((_g2498924997_
                            (lambda (_g2499024993_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2499024993_)))
                           (_g2498825086_
                            (lambda (_g2499025001_)
                              ((lambda (_L25004_)
                                 (let ()
                                   (let* ((_g2501625024_
                                           (lambda (_g2501725020_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2501725020_)))
                                          (_g2501525082_
                                           (lambda (_g2501725028_)
                                             ((lambda (_L25031_)
                                                (let ()
                                                  (let* ((_g2504425052_
                                                          (lambda (_g2504525048_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2504525048_)))
                                                         (_g2504325074_
                                                          (lambda (_g2504525056_)
                                                            ((lambda (_L25059_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp50380
                                  (let ((__tmp50383
                                         (let ((__tmp50384
                                                (let ((__tmp50385
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25059_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25004_ __tmp50385))))
                                           (declare (not safe))
                                           (cons __tmp50384 '())))
                                        (__tmp50381
                                         (let ((__tmp50382
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124631_
                                                   _L25004_
                                                   _body24984_
                                                   _K24986_
                                                   _E24987_))))
                                           (declare (not safe))
                                           (cons __tmp50382 '()))))
                                    (declare (not safe))
                                    (cons __tmp50383 __tmp50381))))
                             (declare (not safe))
                             (cons 'let __tmp50380)))))
                     _g2504525056_)))
                 (__tmp50386
                  (let ((_$e25078_ _->list24985_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25078_))
                        (let ((__tmp50395 (gx#datum->syntax '#f 'values->list))
                              (__tmp50394
                               (let ()
                                 (declare (not safe))
                                 (cons _L25031_ '()))))
                          (declare (not safe))
                          (cons __tmp50395 __tmp50394))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25078_))
                            (let ((__tmp50393
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50392
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25031_ '()))))
                              (declare (not safe))
                              (cons __tmp50393 __tmp50392))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25078_))
                                (let ((__tmp50391
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50387
                                       (let ((__tmp50388
                                              (let ((__tmp50390
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50389
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25031_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50390 __tmp50389))))
                                         (declare (not safe))
                                         (cons __tmp50388 '()))))
                                  (declare (not safe))
                                  (cons __tmp50391 __tmp50387))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24624_
                                 _->list24985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2504325074_
                                                     __tmp50386))))
                                              _g2501725028_))))
                                     (declare (not safe))
                                     (_g2501525082_ _tgt24982_))))
                               _g2499025001_)))
                           (__tmp50396 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2498825086_ __tmp50396))))
                 (_generate-struct24636_
                  (lambda (_info24853_
                           _tgt24855_
                           _body24856_
                           _K24857_
                           _E24858_)
                    (let* ((___stx4632746328_ _body24856_)
                           (_g2486124884_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4632746328_))))
                      (let ((___kont4633046331_
                             (lambda (_L24961_)
                               (let* ((_fields24975_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24638_
                                          _info24853_)))
                                      (__tmp50397
                                       (let ((__tmp50401
                                              (let ((__tmp50403
                                                     (let ((__obj47530
                                                            _info24853_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47530
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47530
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47530
                                                            'predicate))))
                                                    (__tmp50402
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50403 __tmp50402)))
                                             (__tmp50398
                                              (let ((__tmp50400
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24637_
                                                        _info24853_
                                                        _tgt24855_
                                                        _L24961_
                                                        _K24857_
                                                        _E24858_)))
                                                    (__tmp50399
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50400 __tmp50399))))
                                         (declare (not safe))
                                         (cons __tmp50401 __tmp50398))))
                                 (declare (not safe))
                                 (cons 'if __tmp50397))))
                            (___kont4633246333_
                             (lambda (_L24915_)
                               (let ((__tmp50404
                                      (let ((__tmp50408
                                             (let ((__tmp50410
                                                    (let ((__obj47531
                                                           _info24853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47531
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47531
                                                             '11
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47531
                                                           'predicate))))
                                                   (__tmp50409
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24855_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50410 __tmp50409)))
                                            (__tmp50405
                                             (let ((__tmp50407
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24635_
                                                       _tgt24855_
                                                       _L24915_
                                                       'struct->list
                                                       _K24857_
                                                       _E24858_)))
                                                   (__tmp50406
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24858_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50407 __tmp50406))))
                                        (declare (not safe))
                                        (cons __tmp50408 __tmp50405))))
                                 (declare (not safe))
                                 (cons 'if __tmp50404)))))
                        (if (gx#stx-pair? ___stx4632746328_)
                            (let ((_e2486624937_
                                   (gx#syntax-e ___stx4632746328_)))
                              (let ((_tl2486424944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2486624937_)))
                                    (_hd2486524941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2486624937_))))
                                (if (gx#stx-datum? _hd2486524941_)
                                    (let ((_e2486724947_
                                           (gx#stx-e _hd2486524941_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2486724947_ 'simple:))
                                          (if (gx#stx-pair? _tl2486424944_)
                                              (let ((_e2487024951_
                                                     (gx#syntax-e
                                                      _tl2486424944_)))
                                                (let ((_tl2486824958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2487024951_)))
                                                      (_hd2486924955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2487024951_))))
                                                  (if (gx#stx-null?
                                                       _tl2486824958_)
                                                      (___kont4633046331_
                                                       _hd2486924955_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2486124884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2486724947_ 'list:))
                                              (if (gx#stx-pair? _tl2486424944_)
                                                  (let ((_e2487824905_
                                                         (gx#syntax-e
                                                          _tl2486424944_)))
                                                    (let ((_tl2487624912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2487824905_)))
                                                          (_hd2487724909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2487824905_))))
                                                      (if (gx#stx-null?
                                                           _tl2487624912_)
                                                          (___kont4633246333_
                                                           _hd2487724909_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2486124884_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2486124884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2486124884_)))))
                            (let () (declare (not safe)) (_g2486124884_)))))))
                 (_generate-simple-struct-body24637_
                  (lambda (_info24773_
                           _tgt24775_
                           _body24776_
                           _K24777_
                           _E24778_)
                    (let _recur24780_ ((_rest24783_ _body24776_)
                                       (_fields24785_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24638_
                                           _info24773_))))
                      (let* ((___stx4637746378_ _rest24783_)
                             (_g2478824800_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4637746378_))))
                        (let ((___kont4638046381_
                               (lambda (_L24828_ _L24830_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24785_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24624_
                                      _info24773_
                                      (let ((__obj47532 _info24773_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47532
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47532
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47532
                                             'name))))
                                     (let ((_$tgt24845_ (gx#genident 'e))
                                           (_getf24847_ (car _fields24785_)))
                                       (let ((__tmp50411
                                              (let ((__tmp50416
                                                     (let ((__tmp50417
                                                            (let ((__tmp50418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50419
                                  (let ((__tmp50420
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24775_ '()))))
                                    (declare (not safe))
                                    (cons _getf24847_ __tmp50420))))
                             (declare (not safe))
                             (cons __tmp50419 '()))))
                      (declare (not safe))
                      (cons _$tgt24845_ __tmp50418))))
               (declare (not safe))
               (cons __tmp50417 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50412
                                                     (let ((__tmp50413
                                                            (let ((__tmp50414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50415 (cdr _fields24785_)))
                             (declare (not safe))
                             (_recur24780_ _L24828_ __tmp50415))))
                      (declare (not safe))
                      (_generate124631_
                       _$tgt24845_
                       _L24830_
                       __tmp50414
                       _E24778_))))
               (declare (not safe))
               (cons __tmp50413 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50416 __tmp50412))))
                                         (declare (not safe))
                                         (cons 'let __tmp50411))))))
                              (___kont4638246383_ (lambda () _K24777_)))
                          (if (gx#stx-pair? ___stx4637746378_)
                              (let ((_e2479424818_
                                     (gx#syntax-e ___stx4637746378_)))
                                (let ((_tl2479224825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2479424818_)))
                                      (_hd2479324822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2479424818_))))
                                  (___kont4638046381_
                                   _tl2479224825_
                                   _hd2479324822_)))
                              (___kont4638246383_)))))))
                 (_struct-field-accessors24638_
                  (lambda (_info24754_)
                    (let _recur24757_ ((_next24760_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24754_ '()))))
                      (if (let () (declare (not safe)) (null? _next24760_))
                          '()
                          (let ((_ti24763_ (car _next24760_)))
                            (append (let ((__tmp50421
                                           (map gx#syntax-local-value
                                                (let ((__obj47533 _ti24763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47533
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47533
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47533
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24757_ __tmp50421))
                                    (map (lambda (_slot24766_)
                                           (let ((_$e24769_
                                                  (let ((__tmp50422
                                                         (let ((__obj47534
                                                                _ti24763_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47534
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47534
                          '14
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47534
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24766_
                                                             __tmp50422))))
                                             (if _$e24769_
                                                 _$e24769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24624_
                                                  _info24754_
                                                  _slot24766_))))
                                         (let ((__obj47535 _ti24763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47535
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47535
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47535
                                                'slots))))))))))
                 (_generate-class24639_
                  (lambda (_info24747_
                           _tgt24749_
                           _body24750_
                           _K24751_
                           _E24752_)
                    (let ((__tmp50423
                           (let ((__tmp50427
                                  (let ((__tmp50429
                                         (let ((__obj47536 _info24747_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47536
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47536
                                                  '11
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47536
                                                'predicate))))
                                        (__tmp50428
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50429 __tmp50428)))
                                 (__tmp50424
                                  (let ((__tmp50426
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24640_
                                            _info24747_
                                            _tgt24749_
                                            _body24750_
                                            _K24751_
                                            _E24752_)))
                                        (__tmp50425
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24752_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50426 __tmp50425))))
                             (declare (not safe))
                             (cons __tmp50427 __tmp50424))))
                      (declare (not safe))
                      (cons 'if __tmp50423))))
                 (_generate-class-body24640_
                  (lambda (_info24642_
                           _tgt24644_
                           _body24645_
                           _K24646_
                           _E24647_)
                    (let _recur24649_ ((_rest24652_ _body24645_))
                      (let* ((___stx4639346394_ _rest24652_)
                             (_g2465624672_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4639346394_))))
                        (let ((___kont4639646397_
                               (lambda (_L24710_ _L24712_ _L24713_)
                                 (let ((_$e24733_
                                        (let ((__tmp50431
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24713_))))
                                              (__tmp50430
                                               (let ((__obj47537 _info24642_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47537
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47537
                                                        '14
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47537
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50431 __tmp50430))))
                                   (if _$e24733_
                                       ((lambda (_getf24737_)
                                          (let* ((_$tgt24740_ (gx#genident 'e))
                                                 (__tmp50432
                                                  (let ((__tmp50436
                                                         (let ((__tmp50437
                                                                (let ((__tmp50438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50439
                                      (let ((__tmp50440
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24644_ '()))))
                                        (declare (not safe))
                                        (cons _getf24737_ __tmp50440))))
                                 (declare (not safe))
                                 (cons __tmp50439 '()))))
                          (declare (not safe))
                          (cons _$tgt24740_ __tmp50438))))
                   (declare (not safe))
                   (cons __tmp50437 '())))
                (__tmp50433
                 (let ((__tmp50434
                        (let ((__tmp50435
                               (let ()
                                 (declare (not safe))
                                 (_recur24649_ _L24710_))))
                          (declare (not safe))
                          (_generate124631_
                           _$tgt24740_
                           _L24712_
                           __tmp50435
                           _E24647_))))
                   (declare (not safe))
                   (cons __tmp50434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50436
                                                          __tmp50433))))
                                            (declare (not safe))
                                            (cons 'let __tmp50432)))
                                        _$e24733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24624_
                                        _info24642_
                                        _L24713_)))))
                              (___kont4639846399_ (lambda () _K24646_)))
                          (if (gx#stx-pair? ___stx4639346394_)
                              (let ((_e2466324690_
                                     (gx#syntax-e ___stx4639346394_)))
                                (let ((_tl2466124697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2466324690_)))
                                      (_hd2466224694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2466324690_))))
                                  (if (gx#stx-pair? _tl2466124697_)
                                      (let ((_e2466624700_
                                             (gx#syntax-e _tl2466124697_)))
                                        (let ((_tl2466424707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2466624700_)))
                                              (_hd2466524704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2466624700_))))
                                          (___kont4639646397_
                                           _tl2466424707_
                                           _hd2466524704_
                                           _hd2466224694_)))
                                      (___kont4639846399_))))
                              (___kont4639846399_))))))))
          (let ()
            (declare (not safe))
            (_generate124631_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23520_ _tgt-lst23522_ _clauses23523_)
        (letrec ((_parse-body23525_
                  (lambda (_hd-len24446_)
                    (let _lp24449_ ((_rest24452_ _clauses23523_)
                                    (_r24454_ '()))
                      (let* ((___stx4644346444_ _rest24452_)
                             (_g2445724469_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4644346444_))))
                        (let ((___kont4644646447_
                               (lambda (_L24497_ _L24499_)
                                 (let* ((___stx4641546416_ _L24499_)
                                        (_g2451624532_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4641546416_))))
                                   (let ((___kont4641846419_
                                          (lambda (_L24601_)
                                            (if (gx#stx-null? _L24497_)
                                                (let ((__tmp50441
                                                       (let ((__tmp50446
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50442
                                                              (let ((__tmp50443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50444
                                    (gx#stx-wrap-source
                                     (let ((__tmp50445
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50445 _L24601_))
                                     (let ((_$e24612_
                                            (gx#stx-source _L24499_)))
                                       (if _$e24612_
                                           _$e24612_
                                           (gx#stx-source _stx23520_))))))
                               (declare (not safe))
                               (cons __tmp50444 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50443))))
                 (declare (not safe))
                 (cons __tmp50446 __tmp50442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50441 _r24454_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23520_
                                                 _L24499_))))
                                         (___kont4642046421_
                                          (lambda (_L24560_ _L24562_)
                                            (let ((__tmp50447
                                                   (let ((__tmp50448
                                                          (let ((__tmp50454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50449
                         (let ((__tmp50453
                                (gx#stx-map
                                 (lambda (_g2457424576_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2457424576_
                                      _stx23520_)))
                                 _L24562_))
                               (__tmp50450
                                (let ((__tmp50451
                                       (gx#stx-wrap-source
                                        (let ((__tmp50452
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50452 _L24560_))
                                        (let ((_$e24580_
                                               (gx#stx-source _L24499_)))
                                          (if _$e24580_
                                              _$e24580_
                                              (gx#stx-source _stx23520_))))))
                                  (declare (not safe))
                                  (cons __tmp50451 '()))))
                           (declare (not safe))
                           (cons __tmp50453 __tmp50450))))
                    (declare (not safe))
                    (cons __tmp50454 __tmp50449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50448
                                                           _r24454_))))
                                              (declare (not safe))
                                              (_lp24449_
                                               _L24497_
                                               __tmp50447))))
                                         (___kont4642246423_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23520_
                                             _L24499_))))
                                     (let* ((___match4644046441_
                                             (lambda (_e2452624550_
                                                      _hd2452524554_
                                                      _tl2452424557_)
                                               (let ((_L24560_ _tl2452424557_)
                                                     (_L24562_ _hd2452524554_))
                                                 (if (and (gx#stx-list?
                                                           _L24562_)
                                                          (fx= (gx#stx-length
                                                                _L24562_)
                                                               _hd-len24446_)
                                                          (gx#stx-list?
                                                           _L24560_)
                                                          (let ((__tmp50455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24560_)))
                    (declare (not safe))
                    (not __tmp50455)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4642046421_
                                                      _L24560_
                                                      _L24562_)
                                                     (___kont4642246423_)))))
                                            (___match4643446435_
                                             (lambda (_e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_)
                                               (let ((_L24601_ _tl2451924598_))
                                                 (if (and (gx#stx-list?
                                                           _L24601_)
                                                          (let ((__tmp50456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24601_)))
                    (declare (not safe))
                    (not __tmp50456)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4641846419_
                                                      _L24601_)
                                                     (___match4644046441_
                                                      _e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_))))))
                                       (if (gx#stx-pair? ___stx4641546416_)
                                           (let ((_e2452124591_
                                                  (gx#syntax-e
                                                   ___stx4641546416_)))
                                             (let ((_tl2451924598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2452124591_)))
                                                   (_hd2452024595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2452124591_))))
                                               (if (gx#identifier?
                                                    _hd2452024595_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50457_|
                                                        _hd2452024595_)
                                                       (___match4643446435_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_)
                                                       (___match4644046441_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_))
                                                   (___match4644046441_
                                                    _e2452124591_
                                                    _hd2452024595_
                                                    _tl2451924598_))))
                                           (___kont4642246423_)))))))
                              (___kont4644846449_ (lambda () _r24454_)))
                          (if (gx#stx-pair? ___stx4644346444_)
                              (let ((_e2446324487_
                                     (gx#syntax-e ___stx4644346444_)))
                                (let ((_tl2446124494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2446324487_)))
                                      (_hd2446224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2446324487_))))
                                  (___kont4644646447_
                                   _tl2446124494_
                                   _hd2446224491_)))
                              (___kont4644846449_)))))))
                 (_generate-body23527_
                  (lambda (_body24231_)
                    (let* ((_g2423424242_
                            (lambda (_g2423524238_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2423524238_)))
                           (_g2423324442_
                            (lambda (_g2423524246_)
                              ((lambda (_L24249_)
                                 (let ()
                                   (let* ((_g2426124278_
                                           (lambda (_g2426224274_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2426224274_)))
                                          (_g2426024438_
                                           (lambda (_g2426224282_)
                                             (if (gx#stx-pair/null?
                                                  _g2426224282_)
                                                 (let ((_g50458_
                                                        (gx#syntax-split-splice
                                                         _g2426224282_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50459_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50458_)
                          (##vector-length _g50458_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50459_ 2)))
                   (error "Context expects 2 values" _g50459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2426424285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50458_
                                                               0)))
                                                           (_tl2426624288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50458_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2426624288_)
                                                           (letrec ((_loop2426724291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2426524295_ _target2427124298_)
                               (if (gx#stx-pair? _hd2426524295_)
                                   (let ((_e2426824301_
                                          (gx#syntax-e _hd2426524295_)))
                                     (let ((_lp-hd2426924305_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2426824301_)))
                                           (_lp-tl2427024308_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2426824301_))))
                                       (let ((__tmp50482
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2426924305_
                                                      _target2427124298_))))
                                         (declare (not safe))
                                         (_loop2426724291_
                                          _lp-tl2427024308_
                                          __tmp50482))))
                                   (let ((_target2427224311_
                                          (reverse _target2427124298_)))
                                     ((lambda (_L24315_)
                                        (let ()
                                          (let* ((_g2433224340_
                                                  (lambda (_g2433324336_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2433324336_)))
                                                 (_g2433124426_
                                                  (lambda (_g2433324344_)
                                                    ((lambda (_L24347_)
                                                       (let ()
                                                         (let* ((_g2436024368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2436124364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2436124364_)))
                        (_g2435924422_
                         (lambda (_g2436124372_)
                           ((lambda (_L24375_)
                              (let ()
                                (let* ((_g2438824396_
                                        (lambda (_g2438924392_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2438924392_)))
                                       (_g2438724418_
                                        (lambda (_g2438924400_)
                                          ((lambda (_L24403_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50463
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50460
                                                        (let ((__tmp50462
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50461
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24403_ '()))))
                  (declare (not safe))
                  (cons __tmp50462 __tmp50461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50463
                                                         __tmp50460)))))
                                           _g2438924400_)))
                                       (__tmp50464
                                        (gx#stx-wrap-source
                                         (let ((__tmp50470
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50465
                                                (let ((__tmp50467
                                                       (let ((__tmp50468
                                                              (let ((__tmp50469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24347_ '()))))
                        (declare (not safe))
                        (cons _L24249_ __tmp50469))))
                 (declare (not safe))
                 (cons __tmp50468 '())))
              (__tmp50466 (let () (declare (not safe)) (cons _L24375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50467
                                                        __tmp50466))))
                                           (declare (not safe))
                                           (cons __tmp50470 __tmp50465))
                                         (gx#stx-source _stx23520_))))
                                  (declare (not safe))
                                  (_g2438724418_ __tmp50464))))
                            _g2436124372_)))
                        (__tmp50471
                         (let ((__tmp50472
                                (let ()
                                  (declare (not safe))
                                  (cons _L24249_ '()))))
                           (declare (not safe))
                           (_generate-clauses23528_ _body24231_ __tmp50472))))
                   (declare (not safe))
                   (_g2435924422_ __tmp50471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2433324344_)))
                                                 (__tmp50473
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50481
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50474
                                                          (let ((__tmp50475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50476
                                (let ((__tmp50480
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50477
                                       (let ((__tmp50478
                                              (let ((__tmp50479
                                                     (lambda (_g2442924432_
                                                              _g2443024435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2442924432_
                                                               _g2443024435_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50479
                                                        '()
                                                        _L24315_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50478))))
                                  (declare (not safe))
                                  (cons __tmp50480 __tmp50477))))
                           (declare (not safe))
                           (cons __tmp50476 '()))))
                    (declare (not safe))
                    (cons '() __tmp50475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50481
                                                           __tmp50474))
                                                   (gx#stx-source
                                                    _stx23520_))))
                                            (declare (not safe))
                                            (_g2433124426_ __tmp50473))))
                                      _target2427224311_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2426724291_ _target2426424285_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2426124278_ _g2426224282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2426124278_
                                                    _g2426224282_))))))
                                     (declare (not safe))
                                     (_g2426024438_ _tgt-lst23522_))))
                               _g2423524246_)))
                           (__tmp50483 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2423324442_ __tmp50483))))
                 (_generate-clauses23528_
                  (lambda (_rest23883_ _E23885_)
                    (let* ((___stx4645946460_ _rest23883_)
                           (_g2388923905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4645946460_))))
                      (let ((___kont4646246463_
                             (lambda (_L24139_)
                               (let* ((_g2415024168_
                                       (lambda (_g2415124164_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2415124164_)))
                                      (_g2414924223_
                                       (lambda (_g2415124172_)
                                         (if (gx#stx-pair? _g2415124172_)
                                             (let ((_e2415624175_
                                                    (gx#syntax-e
                                                     _g2415124172_)))
                                               (let ((_hd2415524179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2415624175_)))
                                                     (_tl2415424182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2415624175_))))
                                                 (if (gx#stx-pair?
                                                      _tl2415424182_)
                                                     (let ((_e2415924185_
                                                            (gx#syntax-e
                                                             _tl2415424182_)))
                                                       (let ((_hd2415824189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2415924185_)))
                     (_tl2415724192_
                      (let () (declare (not safe)) (##cdr _e2415924185_))))
                 (if (gx#stx-pair? _tl2415724192_)
                     (let ((_e2416224195_ (gx#syntax-e _tl2415724192_)))
                       (let ((_hd2416124199_
                              (let ()
                                (declare (not safe))
                                (##car _e2416224195_)))
                             (_tl2416024202_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2416224195_))))
                         (if (gx#stx-null? _tl2416024202_)
                             ((lambda (_L24205_ _L24207_)
                                (let ((__tmp50484
                                       (let ((__tmp50485
                                              (let ((__tmp50486
                                                     (if (gx#stx-e _L24207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123529_
                                                            _L24207_
                                                            _L24205_
                                                            _E23885_))
                                                         _L24205_)))
                                                (declare (not safe))
                                                (cons __tmp50486 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50485))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50484)))
                              _hd2416124199_
                              _hd2415824189_)
                             (let ()
                               (declare (not safe))
                               (_g2415024168_ _g2415124172_)))))
                     (let ()
                       (declare (not safe))
                       (_g2415024168_ _g2415124172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2415024168_
                                                        _g2415124172_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2415024168_
                                                _g2415124172_))))))
                                 (declare (not safe))
                                 (_g2414924223_ _L24139_))))
                            (___kont4646446465_
                             (lambda (_L23933_ _L23935_)
                               (let* ((_g2394823967_
                                       (lambda (_g2394923963_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2394923963_)))
                                      (_g2394724118_
                                       (lambda (_g2394923971_)
                                         (if (gx#stx-pair? _g2394923971_)
                                             (let ((_e2395523974_
                                                    (gx#syntax-e
                                                     _g2394923971_)))
                                               (let ((_hd2395423978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2395523974_)))
                                                     (_tl2395323981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2395523974_))))
                                                 (if (gx#stx-pair?
                                                      _tl2395323981_)
                                                     (let ((_e2395823984_
                                                            (gx#syntax-e
                                                             _tl2395323981_)))
                                                       (let ((_hd2395723988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2395823984_)))
                     (_tl2395623991_
                      (let () (declare (not safe)) (##cdr _e2395823984_))))
                 (if (gx#stx-pair? _tl2395623991_)
                     (let ((_e2396123994_ (gx#syntax-e _tl2395623991_)))
                       (let ((_hd2396023998_
                              (let ()
                                (declare (not safe))
                                (##car _e2396123994_)))
                             (_tl2395924001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2396123994_))))
                         (if (gx#stx-null? _tl2395924001_)
                             ((lambda (_L24004_ _L24006_ _L24007_)
                                (if (gx#stx-e _L24006_)
                                    (let* ((_g2402424039_
                                            (lambda (_g2402524035_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2402524035_)))
                                           (_g2402324084_
                                            (lambda (_g2402524043_)
                                              (if (gx#stx-pair? _g2402524043_)
                                                  (let ((_e2403024046_
                                                         (gx#syntax-e
                                                          _g2402524043_)))
                                                    (let ((_hd2402924050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2403024046_)))
                                                          (_tl2402824053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2403024046_))))
                                                      (if (gx#stx-pair?
                                                           _tl2402824053_)
                                                          (let ((_e2403324056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2402824053_)))
                    (let ((_hd2403224060_
                           (let () (declare (not safe)) (##car _e2403324056_)))
                          (_tl2403124063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2403324056_))))
                      (if (gx#stx-null? _tl2403124063_)
                          ((lambda (_L24066_ _L24068_)
                             (let ()
                               (let ((__tmp50513 (gx#datum->syntax '#f 'let))
                                     (__tmp50504
                                      (let ((__tmp50506
                                             (let ((__tmp50507
                                                    (let ((__tmp50508
                                                           (let ((__tmp50509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50512 (gx#datum->syntax '#f 'lambda))
                                (__tmp50510
                                 (let ((__tmp50511
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24068_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50511))))
                            (declare (not safe))
                            (cons __tmp50512 __tmp50510))))
                     (declare (not safe))
                     (cons __tmp50509 '()))))
              (declare (not safe))
              (cons _L24007_ __tmp50508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50507 '())))
                                            (__tmp50505
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50506 __tmp50505))))
                                 (declare (not safe))
                                 (cons __tmp50513 __tmp50504))))
                           _hd2403224060_
                           _hd2402924050_)
                          (let ()
                            (declare (not safe))
                            (_g2402424039_ _g2402524043_)))))
                  (let ()
                    (declare (not safe))
                    (_g2402424039_ _g2402524043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2402424039_
                                                     _g2402524043_)))))
                                           (__tmp50514
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123529_
                                                     _L24006_
                                                     _L24004_
                                                     _E23885_))
                                                  (let ((__tmp50515
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23528_
                                                     _L23933_
                                                     __tmp50515)))))
                                      (declare (not safe))
                                      (_g2402324084_ __tmp50514))
                                    (let* ((_g2408824096_
                                            (lambda (_g2408924092_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2408924092_)))
                                           (_g2408724114_
                                            (lambda (_g2408924100_)
                                              ((lambda (_L24103_)
                                                 (let ()
                                                   (let ((__tmp50501
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50487
                                                          (let ((__tmp50489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50490
                                (let ((__tmp50491
                                       (let ((__tmp50492
                                              (let ((__tmp50500
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50493
                                                     (let ((__tmp50499
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50494
                                                            (let ((__tmp50495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50498 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50496
                                  (let ((__tmp50497
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24004_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50497))))
                             (declare (not safe))
                             (cons __tmp50498 __tmp50496))))
                      (declare (not safe))
                      (cons __tmp50495 '()))))
               (declare (not safe))
               (cons __tmp50499 __tmp50494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50500 __tmp50493))))
                                         (declare (not safe))
                                         (cons __tmp50492 '()))))
                                  (declare (not safe))
                                  (cons _L24007_ __tmp50491))))
                           (declare (not safe))
                           (cons __tmp50490 '())))
                        (__tmp50488
                         (let () (declare (not safe)) (cons _L24103_ '()))))
                    (declare (not safe))
                    (cons __tmp50489 __tmp50488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50501
                                                           __tmp50487))))
                                               _g2408924100_)))
                                           (__tmp50502
                                            (let ((__tmp50503
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24007_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23528_
                                               _L23933_
                                               __tmp50503))))
                                      (declare (not safe))
                                      (_g2408724114_ __tmp50502))))
                              _hd2396023998_
                              _hd2395723988_
                              _hd2395423978_)
                             (let ()
                               (declare (not safe))
                               (_g2394823967_ _g2394923971_)))))
                     (let ()
                       (declare (not safe))
                       (_g2394823967_ _g2394923971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2394823967_
                                                        _g2394923971_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2394823967_
                                                _g2394923971_))))))
                                 (declare (not safe))
                                 (_g2394724118_ _L23935_))))
                            (___kont4646646467_
                             (lambda ()
                               (let ((__tmp50516
                                      (let ((__tmp50517
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23885_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50517))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50516)))))
                        (if (gx#stx-pair? ___stx4645946460_)
                            (let ((_e2389424129_
                                   (gx#syntax-e ___stx4645946460_)))
                              (let ((_tl2389224136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2389424129_)))
                                    (_hd2389324133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2389424129_))))
                                (if (gx#stx-null? _tl2389224136_)
                                    (___kont4646246463_ _hd2389324133_)
                                    (___kont4646446465_
                                     _tl2389224136_
                                     _hd2389324133_))))
                            (___kont4646646467_))))))
                 (_generate123529_
                  (lambda (_clause23531_ _body23533_ _E23534_)
                    (let* ((_g2353623560_
                            (lambda (_g2353723556_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2353723556_)))
                           (_g2353523879_
                            (lambda (_g2353723564_)
                              (if (gx#stx-pair? _g2353723564_)
                                  (let ((_e2354223567_
                                         (gx#syntax-e _g2353723564_)))
                                    (let ((_hd2354123571_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2354223567_)))
                                          (_tl2354023574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2354223567_))))
                                      (if (gx#stx-pair? _tl2354023574_)
                                          (let ((_e2354523577_
                                                 (gx#syntax-e _tl2354023574_)))
                                            (let ((_hd2354423581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2354523577_)))
                                                  (_tl2354323584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2354523577_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2354423581_)
                                                  (let ((_g50518_
                                                         (gx#syntax-split-splice
                                                          _hd2354423581_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50518_)
                           (##vector-length _g50518_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50519_ 2)))
                    (error "Context expects 2 values" _g50519_)))
              (let ((_target2354623587_
                     (let () (declare (not safe)) (##vector-ref _g50518_ 0)))
                    (_tl2354823590_
                     (let () (declare (not safe)) (##vector-ref _g50518_ 1))))
                (if (gx#stx-null? _tl2354823590_)
                    (letrec ((_loop2354923593_
                              (lambda (_hd2354723597_ _var2355323600_)
                                (if (gx#stx-pair? _hd2354723597_)
                                    (let ((_e2355023603_
                                           (gx#syntax-e _hd2354723597_)))
                                      (let ((_lp-hd2355123607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2355023603_)))
                                            (_lp-tl2355223610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2355023603_))))
                                        (let ((__tmp50536
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2355123607_
                                                       _var2355323600_))))
                                          (declare (not safe))
                                          (_loop2354923593_
                                           _lp-tl2355223610_
                                           __tmp50536))))
                                    (let ((_var2355423613_
                                           (reverse _var2355323600_)))
                                      (if (gx#stx-null? _tl2354323584_)
                                          ((lambda (_L23617_ _L23619_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50520
                                                       (lambda (_g2364023643_
                                                                _g2364123646_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2364123646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50520
                                                          '()
                                                          _L23617_))
                                                _stx23520_)
                                               (let* ((_g2364923657_
                                                       (lambda (_g2365023653_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2365023653_)))
                                                      (_g2364823751_
                                                       (lambda (_g2365023661_)
                                                         ((lambda (_L23664_)
                                                            (let ()
                                                              (let* ((_g2367723685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2367823681_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2367823681_)))
                             (_g2367623747_
                              (lambda (_g2367823689_)
                                ((lambda (_L23692_)
                                   (let ()
                                     (let* ((_g2370523713_
                                             (lambda (_g2370623709_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2370623709_)))
                                            (_g2370423735_
                                             (lambda (_g2370623717_)
                                               ((lambda (_L23720_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50525
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50521
                                                              (let ((__tmp50523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50524
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23720_ '()))))
                               (declare (not safe))
                               (cons _L23619_ __tmp50524)))
                            (__tmp50522
                             (let ()
                               (declare (not safe))
                               (cons _L23664_ '()))))
                        (declare (not safe))
                        (cons __tmp50523 __tmp50522))))
                 (declare (not safe))
                 (cons __tmp50525 __tmp50521))
               (gx#stx-source _stx23520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2370623717_)))
                                            (__tmp50526
                                             (gx#stx-wrap-source
                                              (let ((__tmp50531
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50527
                                                     (let ((__tmp50529
                                                            (let ((__tmp50530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2373823741_ _g2373923744_)
                             (let ()
                               (declare (not safe))
                               (cons _g2373823741_ _g2373923744_)))))
                      (declare (not safe))
                      (foldr1 __tmp50530 '() _L23617_)))
                   (__tmp50528
                    (let () (declare (not safe)) (cons _L23692_ '()))))
               (declare (not safe))
               (cons __tmp50529 __tmp50528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50531 __tmp50527))
                                              (gx#stx-source _stx23520_))))
                                       (declare (not safe))
                                       (_g2370423735_ __tmp50526))))
                                 _g2367823689_))))
                        (declare (not safe))
                        (_g2367623747_ _body23533_))))
                  _g2365023661_)))
              (__tmp50532
               (let _recur23755_ ((_rest23758_ _clause23531_)
                                  (_rest-targets23760_ _tgt-lst23522_))
                 (let* ((___stx4648546486_ _rest23758_)
                        (_g2376323775_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4648546486_))))
                   (let ((___kont4648846489_
                          (lambda (_L23811_ _L23813_)
                            (let* ((_g2382823840_
                                    (lambda (_g2382923836_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2382923836_)))
                                   (_g2382723871_
                                    (lambda (_g2382923844_)
                                      (if (gx#stx-pair? _g2382923844_)
                                          (let ((_e2383423847_
                                                 (gx#syntax-e _g2382923844_)))
                                            (let ((_hd2383323851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2383423847_)))
                                                  (_tl2383223854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2383423847_))))
                                              ((lambda (_L23857_ _L23859_)
                                                 (let ((__tmp50533
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23755_
                                                           _L23811_
                                                           _L23857_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23520_
                                                    _L23859_
                                                    _L23813_
                                                    __tmp50533
                                                    _E23534_)))
                                               _tl2383223854_
                                               _hd2383323851_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2382823840_ _g2382923844_))))))
                              (declare (not safe))
                              (_g2382723871_ _rest-targets23760_))))
                         (___kont4649046491_
                          (lambda ()
                            (let ((__tmp50534
                                   (let ((__tmp50535
                                          (lambda (_g2378523788_ _g2378623791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2378523788_
                                                    _g2378623791_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50535 '() _L23617_))))
                              (declare (not safe))
                              (cons _L23619_ __tmp50534)))))
                     (if (gx#stx-pair? ___stx4648546486_)
                         (let ((_e2376923801_ (gx#syntax-e ___stx4648546486_)))
                           (let ((_tl2376723808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2376923801_)))
                                 (_hd2376823805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2376923801_))))
                             (___kont4648846489_
                              _tl2376723808_
                              _hd2376823805_)))
                         (___kont4649046491_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2364823751_ __tmp50532))))
                                           _var2355423613_
                                           _hd2354123571_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_
                                             _g2353723564_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2354923593_ _target2354623587_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2353623560_ _g2353723564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2353623560_
                                                     _g2353723564_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_ _g2353723564_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2353623560_ _g2353723564_)))))
                           (__tmp50537
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23531_)))))
                      (declare (not safe))
                      (_g2353523879_ __tmp50537)))))
          (let ((__tmp50538
                 (let ((__tmp50539 (gx#stx-length _tgt-lst23522_)))
                   (declare (not safe))
                   (_parse-body23525_ __tmp50539))))
            (declare (not safe))
            (_generate-body23527_ __tmp50538)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23422_ _tgt23424_ _clauses23425_)
        (letrec ((_reclause23427_
                  (lambda (_clause23430_)
                    (let* ((___stx4650146502_ _clause23430_)
                           (_g2343523450_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4650146502_))))
                      (let ((___kont4650446505_ (lambda () _clause23430_))
                            (___kont4650646507_
                             (lambda (_L23478_ _L23480_)
                               (gx#stx-wrap-source
                                (let ((__tmp50540
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23480_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50540 _L23478_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4650846509_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23422_
                                _clause23430_))))
                        (if (gx#stx-pair? ___stx4650146502_)
                            (let ((_e2343923502_
                                   (gx#syntax-e ___stx4650146502_)))
                              (let ((_tl2343723509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2343923502_)))
                                    (_hd2343823506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2343923502_))))
                                (if (gx#identifier? _hd2343823506_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50541_|
                                         _hd2343823506_)
                                        (___kont4650446505_)
                                        (___kont4650646507_
                                         _tl2343723509_
                                         _hd2343823506_))
                                    (___kont4650646507_
                                     _tl2343723509_
                                     _hd2343823506_))))
                            (___kont4650846509_)))))))
          (let ((__tmp50543
                 (let () (declare (not safe)) (cons _tgt23424_ '())))
                (__tmp50542 (gx#stx-map _reclause23427_ _clauses23425_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23422_
             __tmp50543
             __tmp50542)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30653_)
        (let* ((___stx4652946530_ _stx30653_)
               (_g3065830687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4652946530_))))
          (let ((___kont4653246533_
                 (lambda (_L30927_)
                   (let* ((_g3094030948_
                           (lambda (_g3094130944_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3094130944_)))
                          (_g3093931001_
                           (lambda (_g3094130952_)
                             ((lambda (_L30955_)
                                (let ()
                                  (let* ((_g3096730975_
                                          (lambda (_g3096830971_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3096830971_)))
                                         (_g3096630997_
                                          (lambda (_g3096830979_)
                                            ((lambda (_L30982_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50547
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50544
                                                          (let ((__tmp50546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30955_ '())))
                        (__tmp50545
                         (let () (declare (not safe)) (cons _L30982_ '()))))
                    (declare (not safe))
                    (cons __tmp50546 __tmp50545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50547
                                                           __tmp50544)))))
                                             _g3096830979_))))
                                    (_g3096630997_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50549
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50548
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30955_ _L30927_))))
                                        (declare (not safe))
                                        (cons __tmp50549 __tmp50548))
                                      (gx#stx-source _stx30653_))))))
                              _g3094130952_))))
                     (_g3093931001_ (gx#genident 'e)))))
                (___kont4653446535_
                 (lambda (_L30822_)
                   (let* ((_g3083530843_
                           (lambda (_g3083630839_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3083630839_)))
                          (_g3083430896_
                           (lambda (_g3083630847_)
                             ((lambda (_L30850_)
                                (let ()
                                  (let* ((_g3086230870_
                                          (lambda (_g3086330866_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3086330866_)))
                                         (_g3086130892_
                                          (lambda (_g3086330874_)
                                            ((lambda (_L30877_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50552
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50550
                                                          (let ((__tmp50551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30877_ '()))))
                    (declare (not safe))
                    (cons _L30850_ __tmp50551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50552
                                                           __tmp50550)))))
                                             _g3086330874_))))
                                    (_g3086130892_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50554
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50553
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30850_ _L30822_))))
                                        (declare (not safe))
                                        (cons __tmp50554 __tmp50553))
                                      (gx#stx-source _stx30653_))))))
                              _g3083630847_))))
                     (_g3083430896_ (gx#genident 'args)))))
                (___kont4653646537_
                 (lambda (_L30714_ _L30716_)
                   (let* ((_g3073030738_
                           (lambda (_g3073130734_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3073130734_)))
                          (_g3072930791_
                           (lambda (_g3073130742_)
                             ((lambda (_L30745_)
                                (let ()
                                  (let* ((_g3075730765_
                                          (lambda (_g3075830761_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3075830761_)))
                                         (_g3075630787_
                                          (lambda (_g3075830769_)
                                            ((lambda (_L30772_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50560
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50555
                                                          (let ((__tmp50557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50558
                                (let ((__tmp50559
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30716_ '()))))
                                  (declare (not safe))
                                  (cons _L30745_ __tmp50559))))
                           (declare (not safe))
                           (cons __tmp50558 '())))
                        (__tmp50556
                         (let () (declare (not safe)) (cons _L30772_ '()))))
                    (declare (not safe))
                    (cons __tmp50557 __tmp50556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50560
                                                           __tmp50555)))))
                                             _g3075830769_))))
                                    (_g3075630787_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30653_
                                        _L30745_
                                        _L30714_))))))
                              _g3073130742_))))
                     (_g3072930791_ (gx#genident _L30716_))))))
            (let* ((___match4658246583_
                    (lambda (_e3067830694_
                             _hd3067730698_
                             _tl3067630701_
                             _e3068130704_
                             _hd3068030708_
                             _tl3067930711_)
                      (let ((_L30714_ _tl3067930711_)
                            (_L30716_ _hd3068030708_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4653646537_ _L30714_ _L30716_)
                            (let () (declare (not safe)) (_g3065830687_))))))
                   (___match4657046571_
                    (lambda (_e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)
                      (let ((_L30822_ _tl3067130819_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4653446535_ _L30822_)
                            (___match4658246583_
                             _e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)))))
                   (___match4655446555_
                    (lambda (_e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_)
                      (let ((_L30927_ _tl3066430924_))
                        (if (gx#stx-list? _L30927_)
                            (___kont4653246533_ _L30927_)
                            (___match4658246583_
                             _e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_))))))
              (if (gx#stx-pair? ___stx4652946530_)
                  (let ((_e3066330907_ (gx#syntax-e ___stx4652946530_)))
                    (let ((_tl3066130914_
                           (let () (declare (not safe)) (##cdr _e3066330907_)))
                          (_hd3066230911_
                           (let ()
                             (declare (not safe))
                             (##car _e3066330907_))))
                      (if (gx#stx-pair? _tl3066130914_)
                          (let ((_e3066630917_ (gx#syntax-e _tl3066130914_)))
                            (let ((_tl3066430924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3066630917_)))
                                  (_hd3066530921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3066630917_))))
                              (if (gx#identifier? _hd3066530921_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50562_|
                                       _hd3066530921_)
                                      (___match4655446555_
                                       _e3066330907_
                                       _hd3066230911_
                                       _tl3066130914_
                                       _e3066630917_
                                       _hd3066530921_
                                       _tl3066430924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50561_|
                                           _hd3066530921_)
                                          (___match4657046571_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)
                                          (___match4658246583_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)))
                                  (___match4658246583_
                                   _e3066330907_
                                   _hd3066230911_
                                   _tl3066130914_
                                   _e3066630917_
                                   _hd3066530921_
                                   _tl3066430924_))))
                          (let () (declare (not safe)) (_g3065830687_)))))
                  (let () (declare (not safe)) (_g3065830687_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx31009_)
        (let* ((_g3101231036_
                (lambda (_g3101331032_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3101331032_)))
               (_g3101131248_
                (lambda (_g3101331040_)
                  (if (gx#stx-pair? _g3101331040_)
                      (let ((_e3101831043_ (gx#syntax-e _g3101331040_)))
                        (let ((_hd3101731047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3101831043_)))
                              (_tl3101631050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3101831043_))))
                          (if (gx#stx-pair? _tl3101631050_)
                              (let ((_e3102131053_
                                     (gx#syntax-e _tl3101631050_)))
                                (let ((_hd3102031057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3102131053_)))
                                      (_tl3101931060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3102131053_))))
                                  (if (gx#stx-pair/null? _hd3102031057_)
                                      (let ((_g50563_
                                             (gx#syntax-split-splice
                                              _hd3102031057_
                                              '0)))
                                        (begin
                                          (let ((_g50564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50563_)
                                                       (##vector-length
                                                        _g50563_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50564_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50564_)))
                                          (let ((_target3102231063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50563_ 0)))
                                                (_tl3102431066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50563_ 1))))
                                            (if (gx#stx-null? _tl3102431066_)
                                                (letrec ((_loop3102531069_
                                                          (lambda (_hd3102331073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3102931076_)
                    (if (gx#stx-pair? _hd3102331073_)
                        (let ((_e3102631079_ (gx#syntax-e _hd3102331073_)))
                          (let ((_lp-hd3102731083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3102631079_)))
                                (_lp-tl3102831086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3102631079_))))
                            (_loop3102531069_
                             _lp-tl3102831086_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3102731083_ _e3102931076_)))))
                        (let ((_e3103031089_ (reverse _e3102931076_)))
                          ((lambda (_L31093_ _L31095_)
                             (if (gx#stx-list? _L31093_)
                                 (let* ((_g3111331130_
                                         (lambda (_g3111431126_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3111431126_)))
                                        (_g3111231236_
                                         (lambda (_g3111431134_)
                                           (if (gx#stx-pair/null?
                                                _g3111431134_)
                                               (let ((_g50565_
                                                      (gx#syntax-split-splice
                                                       _g3111431134_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50566_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50565_)
                        (##vector-length _g50565_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50566_ 2)))
                 (error "Context expects 2 values" _g50566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3111631137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50565_
                                                             0)))
                                                         (_tl3111831140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50565_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3111831140_)
                                                         (letrec ((_loop3111931143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3111731147_ _$e3112331150_)
                             (if (gx#stx-pair? _hd3111731147_)
                                 (let ((_e3112031153_
                                        (gx#syntax-e _hd3111731147_)))
                                   (let ((_lp-hd3112131157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3112031153_)))
                                         (_lp-tl3112231160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3112031153_))))
                                     (_loop3111931143_
                                      _lp-tl3112231160_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3112131157_
                                              _$e3112331150_)))))
                                 (let ((_$e3112431163_
                                        (reverse _$e3112331150_)))
                                   ((lambda (_L31167_)
                                      (let ()
                                        (let* ((_g3118331191_
                                                (lambda (_g3118431187_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3118431187_)))
                                               (_g3118231224_
                                                (lambda (_g3118431195_)
                                                  ((lambda (_L31198_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50573
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50567
                        (let ((__tmp50569
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31095_
                                  _L31167_)
                                 (let ((__tmp50570
                                        (lambda (_g3121231216_
                                                 _g3121331219_
                                                 _g3121431221_)
                                          (let ((__tmp50571
                                                 (let ((__tmp50572
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3121231216_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3121331219_
                                                         __tmp50572))))
                                            (declare (not safe))
                                            (cons __tmp50571 _g3121431221_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50570 '() _L31095_ _L31167_))))
                              (__tmp50568
                               (let ()
                                 (declare (not safe))
                                 (cons _L31198_ '()))))
                          (declare (not safe))
                          (cons __tmp50569 __tmp50568))))
                   (declare (not safe))
                   (cons __tmp50573 __tmp50567)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3118431195_))))
                                          (_g3118231224_
                                           (let ((__tmp50574
                                                  (let ((__tmp50575
                                                         (lambda (_g3122731230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3122831233_)
                   (let ()
                     (declare (not safe))
                     (cons _g3122731230_ _g3122831233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50575
                                                            '()
                                                            _L31167_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31009_
                                              __tmp50574
                                              _L31093_))))))
                                    _$e3112431163_))))))
                   (_loop3111931143_ _target3111631137_ '()))
                 (_g3111331130_ _g3111431134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3111331130_
                                                _g3111431134_)))))
                                   (_g3111231236_
                                    (gx#gentemps
                                     (let ((__tmp50576
                                            (lambda (_g3123931242_
                                                     _g3124031245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3123931242_
                                                      _g3124031245_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50576 '() _L31095_)))))
                                 (_g3101231036_ _g3101331040_)))
                           _tl3101931060_
                           _e3103031089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3102531069_
                                                   _target3102231063_
                                                   '()))
                                                (_g3101231036_
                                                 _g3101331040_)))))
                                      (_g3101231036_ _g3101331040_))))
                              (_g3101231036_ _g3101331040_))))
                      (_g3101231036_ _g3101331040_)))))
          (_g3101131248_ _stx31009_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31254_)
        (let* ((___stx4658546586_ _$stx31254_)
               (_g3126031343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4658546586_))))
          (let ((___kont4658846589_
                 (lambda (_L31673_)
                   (let ((__tmp50580 (gx#datum->syntax '#f 'let))
                         (__tmp50577
                          (let ((__tmp50578
                                 (let ((__tmp50579
                                        (lambda (_g3168931692_ _g3169031695_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3168931692_
                                                  _g3169031695_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50579 '() _L31673_))))
                            (declare (not safe))
                            (cons '() __tmp50578))))
                     (declare (not safe))
                     (cons __tmp50580 __tmp50577))))
                (___kont4659246593_
                 (lambda (_L31581_ _L31583_ _L31584_ _L31585_)
                   (let ((__tmp50581
                          (let ((__tmp50584
                                 (let ((__tmp50585
                                        (let ((__tmp50586
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31583_ '()))))
                                          (declare (not safe))
                                          (cons _L31584_ __tmp50586))))
                                   (declare (not safe))
                                   (cons __tmp50585 '())))
                                (__tmp50582
                                 (let ((__tmp50583
                                        (lambda (_g3160731610_ _g3160831613_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160731610_
                                                  _g3160831613_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50583 '() _L31581_))))
                            (declare (not safe))
                            (cons __tmp50584 __tmp50582))))
                     (declare (not safe))
                     (cons _L31585_ __tmp50581))))
                (___kont4659646597_
                 (lambda (_L31454_ _L31456_ _L31457_)
                   (let ((__tmp50596 (gx#datum->syntax '#f 'match*))
                         (__tmp50587
                          (let ((__tmp50594
                                 (let ((__tmp50595
                                        (lambda (_g3148331486_ _g3148431489_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3148331486_
                                                  _g3148431489_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50595 '() _L31456_)))
                                (__tmp50588
                                 (let ((__tmp50589
                                        (let ((__tmp50592
                                               (let ((__tmp50593
                                                      (lambda (_g3148131492_
                                                               _g3148231495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148131492_
                                                                _g3148231495_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50593
                                                         '()
                                                         _L31457_)))
                                              (__tmp50590
                                               (let ((__tmp50591
                                                      (lambda (_g3147931498_
                                                               _g3148031501_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3147931498_
                                                                _g3148031501_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50591
                                                         '()
                                                         _L31454_))))
                                          (declare (not safe))
                                          (cons __tmp50592 __tmp50590))))
                                   (declare (not safe))
                                   (cons __tmp50589 '()))))
                            (declare (not safe))
                            (cons __tmp50594 __tmp50588))))
                     (declare (not safe))
                     (cons __tmp50596 __tmp50587)))))
            (let* ((___match4667846679_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_
                             ___splice4659846599_
                             _target3131231370_
                             _tl3131431373_)
                      (letrec ((_loop3131531376_
                                (lambda (_hd3131331380_
                                         _expr3131931383_
                                         _hd3132031385_)
                                  (if (gx#stx-pair? _hd3131331380_)
                                      (let ((_e3131631388_
                                             (gx#syntax-e _hd3131331380_)))
                                        (let ((_lp-tl3131831395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3131631388_)))
                                              (_lp-hd3131731392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3131631388_))))
                                          (if (gx#stx-pair? _lp-hd3131731392_)
                                              (let ((_e3132531398_
                                                     (gx#syntax-e
                                                      _lp-hd3131731392_)))
                                                (let ((_tl3132331405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3132531398_)))
                                                      (_hd3132431402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3132531398_))))
                                                  (if (gx#stx-pair?
                                                       _tl3132331405_)
                                                      (let ((_e3132831408_
                                                             (gx#syntax-e
                                                              _tl3132331405_)))
                                                        (let ((_tl3132631415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3132831408_)))
                      (_hd3132731412_
                       (let () (declare (not safe)) (##car _e3132831408_))))
                  (if (gx#stx-null? _tl3132631415_)
                      (_loop3131531376_
                       _lp-tl3131831395_
                       (let ()
                         (declare (not safe))
                         (cons _hd3132731412_ _expr3131931383_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3132431402_ _hd3132031385_)))
                      (let () (declare (not safe)) (_g3126031343_)))))
              (let () (declare (not safe)) (_g3126031343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3126031343_)))))
                                      (let ((_hd3132231421_
                                             (reverse _hd3132031385_))
                                            (_expr3132131418_
                                             (reverse _expr3131931383_)))
                                        (if (gx#stx-pair/null? _tl3130931367_)
                                            (let ((___splice4660046601_
                                                   (gx#syntax-split-splice
                                                    _tl3130931367_
                                                    '0)))
                                              (let ((_tl3133131427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4660046601_
                                                        '1)))
                                                    (_target3132931424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4660046601_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3133131427_)
                                                    (letrec ((_loop3133231430_
                                                              (lambda (_hd3133031434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3133631437_)
                        (if (gx#stx-pair? _hd3133031434_)
                            (let ((_e3133331440_ (gx#syntax-e _hd3133031434_)))
                              (let ((_lp-tl3133531447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3133331440_)))
                                    (_lp-hd3133431444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3133331440_))))
                                (_loop3133231430_
                                 _lp-tl3133531447_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3133431444_
                                         _body3133631437_)))))
                            (let ((_body3133731450_
                                   (reverse _body3133631437_)))
                              (___kont4659646597_
                               _body3133731450_
                               _expr3132131418_
                               _hd3132231421_))))))
              (_loop3133231430_ _target3132931424_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3126031343_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3126031343_))))))))
                        (_loop3131531376_ _target3131231370_ '() '()))))
                   (___match4667046671_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_)
                      (if (gx#stx-pair/null? _hd3131031364_)
                          (let ((___splice4659846599_
                                 (gx#syntax-split-splice _hd3131031364_ '0)))
                            (let ((_tl3131431373_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4659846599_ '1)))
                                  (_target3131231370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4659846599_ '0))))
                              (if (gx#stx-null? _tl3131431373_)
                                  (___match4667846679_
                                   _e3130831350_
                                   _hd3130731354_
                                   _tl3130631357_
                                   _e3131131360_
                                   _hd3131031364_
                                   _tl3130931367_
                                   ___splice4659846599_
                                   _target3131231370_
                                   _tl3131431373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3126031343_)))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                   (___match4665846659_
                    (lambda (_e3128431511_
                             _hd3128331515_
                             _tl3128231518_
                             _e3128731521_
                             _hd3128631525_
                             _tl3128531528_
                             _e3129031531_
                             _hd3128931535_
                             _tl3128831538_
                             _e3129331541_
                             _hd3129231545_
                             _tl3129131548_
                             ___splice4659446595_
                             _target3129431551_
                             _tl3129631554_)
                      (letrec ((_loop3129731557_
                                (lambda (_hd3129531561_ _body3130131564_)
                                  (if (gx#stx-pair? _hd3129531561_)
                                      (let ((_e3129831567_
                                             (gx#syntax-e _hd3129531561_)))
                                        (let ((_lp-tl3130031574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129831567_)))
                                              (_lp-hd3129931571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129831567_))))
                                          (_loop3129731557_
                                           _lp-tl3130031574_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3129931571_
                                                   _body3130131564_)))))
                                      (let ((_body3130231577_
                                             (reverse _body3130131564_)))
                                        (let ((_L31581_ _body3130231577_)
                                              (_L31583_ _hd3129231545_)
                                              (_L31584_ _hd3128931535_)
                                              (_L31585_ _hd3128331515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31584_))
                                              (___kont4659246593_
                                               _L31581_
                                               _L31583_
                                               _L31584_
                                               _L31585_)
                                              (___match4667046671_
                                               _e3128431511_
                                               _hd3128331515_
                                               _tl3128231518_
                                               _e3128731521_
                                               _hd3128631525_
                                               _tl3128531528_))))))))
                        (_loop3129731557_ _target3129431551_ '()))))
                   (___match4662446625_
                    (lambda (_e3126531623_
                             _hd3126431627_
                             _tl3126331630_
                             _e3126831633_
                             _hd3126731637_
                             _tl3126631640_
                             ___splice4659046591_
                             _target3126931643_
                             _tl3127131646_)
                      (letrec ((_loop3127231649_
                                (lambda (_hd3127031653_ _body3127631656_)
                                  (if (gx#stx-pair? _hd3127031653_)
                                      (let ((_e3127331659_
                                             (gx#syntax-e _hd3127031653_)))
                                        (let ((_lp-tl3127531666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3127331659_)))
                                              (_lp-hd3127431663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3127331659_))))
                                          (_loop3127231649_
                                           _lp-tl3127531666_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3127431663_
                                                   _body3127631656_)))))
                                      (let ((_body3127731669_
                                             (reverse _body3127631656_)))
                                        (___kont4658846589_
                                         _body3127731669_))))))
                        (_loop3127231649_ _target3126931643_ '())))))
              (if (gx#stx-pair? ___stx4658546586_)
                  (let ((_e3126531623_ (gx#syntax-e ___stx4658546586_)))
                    (let ((_tl3126331630_
                           (let () (declare (not safe)) (##cdr _e3126531623_)))
                          (_hd3126431627_
                           (let ()
                             (declare (not safe))
                             (##car _e3126531623_))))
                      (if (gx#stx-pair? _tl3126331630_)
                          (let ((_e3126831633_ (gx#syntax-e _tl3126331630_)))
                            (let ((_tl3126631640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3126831633_)))
                                  (_hd3126731637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3126831633_))))
                              (if (gx#stx-null? _hd3126731637_)
                                  (if (gx#stx-pair/null? _tl3126631640_)
                                      (let ((___splice4659046591_
                                             (gx#syntax-split-splice
                                              _tl3126631640_
                                              '0)))
                                        (let ((_tl3127131646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4659046591_
                                                  '1)))
                                              (_target3126931643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4659046591_
                                                  '0))))
                                          (if (gx#stx-null? _tl3127131646_)
                                              (___match4662446625_
                                               _e3126531623_
                                               _hd3126431627_
                                               _tl3126331630_
                                               _e3126831633_
                                               _hd3126731637_
                                               _tl3126631640_
                                               ___splice4659046591_
                                               _target3126931643_
                                               _tl3127131646_)
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4659846599_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4659846599_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4659846599_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4667846679_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4659846599_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4659846599_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4659846599_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4659846599_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4667846679_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4659846599_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_))))
                                  (if (gx#stx-pair? _hd3126731637_)
                                      (let ((_e3129031531_
                                             (gx#syntax-e _hd3126731637_)))
                                        (let ((_tl3128831538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129031531_)))
                                              (_hd3128931535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129031531_))))
                                          (if (gx#stx-pair? _tl3128831538_)
                                              (let ((_e3129331541_
                                                     (gx#syntax-e
                                                      _tl3128831538_)))
                                                (let ((_tl3129131548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3129331541_)))
                                                      (_hd3129231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3129331541_))))
                                                  (if (gx#stx-null?
                                                       _tl3129131548_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3126631640_)
                                                          (let ((___splice4659446595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3126631640_ '0)))
                    (let ((_tl3129631554_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4659446595_ '1)))
                          (_target3129431551_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4659446595_ '0))))
                      (if (gx#stx-null? _tl3129631554_)
                          (___match4665846659_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           _e3129031531_
                           _hd3128931535_
                           _tl3128831538_
                           _e3129331541_
                           _hd3129231545_
                           _tl3129131548_
                           ___splice4659446595_
                           _target3129431551_
                           _tl3129631554_)
                          (if (gx#stx-pair/null? _hd3126731637_)
                              (let ((___splice4659846599_
                                     (gx#syntax-split-splice
                                      _hd3126731637_
                                      '0)))
                                (let ((_tl3131431373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4659846599_
                                          '1)))
                                      (_target3131231370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4659846599_
                                          '0))))
                                  (if (gx#stx-null? _tl3131431373_)
                                      (___match4667846679_
                                       _e3126531623_
                                       _hd3126431627_
                                       _tl3126331630_
                                       _e3126831633_
                                       _hd3126731637_
                                       _tl3126631640_
                                       ___splice4659846599_
                                       _target3131231370_
                                       _tl3131431373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3126031343_)))))
                              (let () (declare (not safe)) (_g3126031343_))))))
                  (if (gx#stx-pair/null? _hd3126731637_)
                      (let ((___splice4659846599_
                             (gx#syntax-split-splice _hd3126731637_ '0)))
                        (let ((_tl3131431373_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4659846599_ '1)))
                              (_target3131231370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4659846599_ '0))))
                          (if (gx#stx-null? _tl3131431373_)
                              (___match4667846679_
                               _e3126531623_
                               _hd3126431627_
                               _tl3126331630_
                               _e3126831633_
                               _hd3126731637_
                               _tl3126631640_
                               ___splice4659846599_
                               _target3131231370_
                               _tl3131431373_)
                              (let () (declare (not safe)) (_g3126031343_)))))
                      (let () (declare (not safe)) (_g3126031343_))))
              (if (gx#stx-pair/null? _hd3126731637_)
                  (let ((___splice4659846599_
                         (gx#syntax-split-splice _hd3126731637_ '0)))
                    (let ((_tl3131431373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4659846599_ '1)))
                          (_target3131231370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4659846599_ '0))))
                      (if (gx#stx-null? _tl3131431373_)
                          (___match4667846679_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           ___splice4659846599_
                           _target3131231370_
                           _tl3131431373_)
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4659846599_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4659846599_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4659846599_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4667846679_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4659846599_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4659846599_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4659846599_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4659846599_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4667846679_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4659846599_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_)))))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31706_)
        (let* ((___stx4668146682_ _$stx31706_)
               (_g3171131763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4668146682_))))
          (let ((___kont4668446685_
                 (lambda (_L31933_ _L31935_ _L31936_ _L31937_ _L31938_)
                   (let ((__tmp50606 (gx#datum->syntax '#f 'with))
                         (__tmp50597
                          (let ((__tmp50603
                                 (let ((__tmp50604
                                        (let ((__tmp50605
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31936_ '()))))
                                          (declare (not safe))
                                          (cons _L31937_ __tmp50605))))
                                   (declare (not safe))
                                   (cons __tmp50604 '())))
                                (__tmp50598
                                 (let ((__tmp50599
                                        (let ((__tmp50600
                                               (let ((__tmp50601
                                                      (let ((__tmp50602
                                                             (lambda (_g3196331966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3196431969_)
                       (let ()
                         (declare (not safe))
                         (cons _g3196331966_ _g3196431969_)))))
                (declare (not safe))
                (foldr1 __tmp50602 '() _L31933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31935_ __tmp50601))))
                                          (declare (not safe))
                                          (cons _L31938_ __tmp50600))))
                                   (declare (not safe))
                                   (cons __tmp50599 '()))))
                            (declare (not safe))
                            (cons __tmp50603 __tmp50598))))
                     (declare (not safe))
                     (cons __tmp50606 __tmp50597))))
                (___kont4668846689_
                 (lambda (_L31820_)
                   (let ((__tmp50610 (gx#datum->syntax '#f 'let))
                         (__tmp50607
                          (let ((__tmp50608
                                 (let ((__tmp50609
                                        (lambda (_g3183731840_ _g3183831843_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3183731840_
                                                  _g3183831843_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50609 '() _L31820_))))
                            (declare (not safe))
                            (cons '() __tmp50608))))
                     (declare (not safe))
                     (cons __tmp50610 __tmp50607)))))
            (let* ((___match4675446755_
                    (lambda (_e3174531770_
                             _hd3174431774_
                             _tl3174331777_
                             _e3174831780_
                             _hd3174731784_
                             _tl3174631787_
                             ___splice4669046691_
                             _target3174931790_
                             _tl3175131793_)
                      (letrec ((_loop3175231796_
                                (lambda (_hd3175031800_ _body3175631803_)
                                  (if (gx#stx-pair? _hd3175031800_)
                                      (let ((_e3175331806_
                                             (gx#syntax-e _hd3175031800_)))
                                        (let ((_lp-tl3175531813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3175331806_)))
                                              (_lp-hd3175431810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3175331806_))))
                                          (_loop3175231796_
                                           _lp-tl3175531813_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3175431810_
                                                   _body3175631803_)))))
                                      (let ((_body3175731816_
                                             (reverse _body3175631803_)))
                                        (___kont4668846689_
                                         _body3175731816_))))))
                        (_loop3175231796_ _target3174931790_ '()))))
                   (___match4673246733_
                    (lambda (_e3172031853_
                             _hd3171931857_
                             _tl3171831860_
                             _e3172331863_
                             _hd3172231867_
                             _tl3172131870_
                             _e3172631873_
                             _hd3172531877_
                             _tl3172431880_
                             _e3172931883_
                             _hd3172831887_
                             _tl3172731890_
                             _e3173231893_
                             _hd3173131897_
                             _tl3173031900_
                             ___splice4668646687_
                             _target3173331903_
                             _tl3173531906_)
                      (letrec ((_loop3173631909_
                                (lambda (_hd3173431913_ _body3174031916_)
                                  (if (gx#stx-pair? _hd3173431913_)
                                      (let ((_e3173731919_
                                             (gx#syntax-e _hd3173431913_)))
                                        (let ((_lp-tl3173931926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173731919_)))
                                              (_lp-hd3173831923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173731919_))))
                                          (_loop3173631909_
                                           _lp-tl3173931926_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3173831923_
                                                   _body3174031916_)))))
                                      (let ((_body3174131929_
                                             (reverse _body3174031916_)))
                                        (___kont4668446685_
                                         _body3174131929_
                                         _tl3172431880_
                                         _hd3173131897_
                                         _hd3172831887_
                                         _hd3171931857_))))))
                        (_loop3173631909_ _target3173331903_ '())))))
              (if (gx#stx-pair? ___stx4668146682_)
                  (let ((_e3172031853_ (gx#syntax-e ___stx4668146682_)))
                    (let ((_tl3171831860_
                           (let () (declare (not safe)) (##cdr _e3172031853_)))
                          (_hd3171931857_
                           (let ()
                             (declare (not safe))
                             (##car _e3172031853_))))
                      (if (gx#stx-pair? _tl3171831860_)
                          (let ((_e3172331863_ (gx#syntax-e _tl3171831860_)))
                            (let ((_tl3172131870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3172331863_)))
                                  (_hd3172231867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3172331863_))))
                              (if (gx#stx-pair? _hd3172231867_)
                                  (let ((_e3172631873_
                                         (gx#syntax-e _hd3172231867_)))
                                    (let ((_tl3172431880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3172631873_)))
                                          (_hd3172531877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3172631873_))))
                                      (if (gx#stx-pair? _hd3172531877_)
                                          (let ((_e3172931883_
                                                 (gx#syntax-e _hd3172531877_)))
                                            (let ((_tl3172731890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3172931883_)))
                                                  (_hd3172831887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3172931883_))))
                                              (if (gx#stx-pair? _tl3172731890_)
                                                  (let ((_e3173231893_
                                                         (gx#syntax-e
                                                          _tl3172731890_)))
                                                    (let ((_tl3173031900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173231893_)))
                                                          (_hd3173131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173231893_))))
                                                      (if (gx#stx-null?
                                                           _tl3173031900_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3172131870_)
                                                              (let ((___splice4668646687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3172131870_ '0)))
                        (let ((_tl3173531906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4668646687_ '1)))
                              (_target3173331903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4668646687_ '0))))
                          (if (gx#stx-null? _tl3173531906_)
                              (___match4673246733_
                               _e3172031853_
                               _hd3171931857_
                               _tl3171831860_
                               _e3172331863_
                               _hd3172231867_
                               _tl3172131870_
                               _e3172631873_
                               _hd3172531877_
                               _tl3172431880_
                               _e3172931883_
                               _hd3172831887_
                               _tl3172731890_
                               _e3173231893_
                               _hd3173131897_
                               _tl3173031900_
                               ___splice4668646687_
                               _target3173331903_
                               _tl3173531906_)
                              (let () (declare (not safe)) (_g3171131763_)))))
                      (let () (declare (not safe)) (_g3171131763_)))
                  (let () (declare (not safe)) (_g3171131763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))))
                                  (if (gx#stx-null? _hd3172231867_)
                                      (if (gx#stx-pair/null? _tl3172131870_)
                                          (let ((___splice4669046691_
                                                 (gx#syntax-split-splice
                                                  _tl3172131870_
                                                  '0)))
                                            (let ((_tl3175131793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4669046691_
                                                      '1)))
                                                  (_target3174931790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4669046691_
                                                      '0))))
                                              (if (gx#stx-null? _tl3175131793_)
                                                  (___match4675446755_
                                                   _e3172031853_
                                                   _hd3171931857_
                                                   _tl3171831860_
                                                   _e3172331863_
                                                   _hd3172231867_
                                                   _tl3172131870_
                                                   ___splice4669046691_
                                                   _target3174931790_
                                                   _tl3175131793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3171131763_))))))
                          (let () (declare (not safe)) (_g3171131763_)))))
                  (let () (declare (not safe)) (_g3171131763_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31978_)
        (let* ((___stx4675746758_ _$stx31978_)
               (_g3198932135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4675746758_))))
          (let ((___kont4676046761_
                 (lambda (_L32739_ _L32741_ _L32742_)
                   (let ((__tmp50616 (gx#datum->syntax '#f 'and))
                         (__tmp50611
                          (let ((__tmp50612
                                 (lambda (_g3276332766_ _g3276432769_)
                                   (let ((__tmp50613
                                          (let ((__tmp50614
                                                 (let ((__tmp50615
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32739_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276332766_
                                                         __tmp50615))))
                                            (declare (not safe))
                                            (cons _L32742_ __tmp50614))))
                                     (declare (not safe))
                                     (cons __tmp50613 _g3276432769_)))))
                            (declare (not safe))
                            (foldr1 __tmp50612 '() _L32741_))))
                     (declare (not safe))
                     (cons __tmp50616 __tmp50611))))
                (___kont4676446765_
                 (lambda (_L32629_ _L32631_ _L32632_)
                   (let ((__tmp50622 (gx#datum->syntax '#f 'or))
                         (__tmp50617
                          (let ((__tmp50618
                                 (lambda (_g3265332656_ _g3265432659_)
                                   (let ((__tmp50619
                                          (let ((__tmp50620
                                                 (let ((__tmp50621
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3265332656_
                                                         __tmp50621))))
                                            (declare (not safe))
                                            (cons _L32632_ __tmp50620))))
                                     (declare (not safe))
                                     (cons __tmp50619 _g3265432659_)))))
                            (declare (not safe))
                            (foldr1 __tmp50618 '() _L32631_))))
                     (declare (not safe))
                     (cons __tmp50622 __tmp50617))))
                (___kont4676846769_
                 (lambda (_L32529_ _L32531_ _L32532_)
                   (let ((__tmp50627 (gx#datum->syntax '#f 'not))
                         (__tmp50623
                          (let ((__tmp50624
                                 (let ((__tmp50625
                                        (let ((__tmp50626
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32529_ '()))))
                                          (declare (not safe))
                                          (cons _L32531_ __tmp50626))))
                                   (declare (not safe))
                                   (cons _L32532_ __tmp50625))))
                            (declare (not safe))
                            (cons __tmp50624 '()))))
                     (declare (not safe))
                     (cons __tmp50627 __tmp50623))))
                (___kont4677046771_
                 (lambda (_L32455_ _L32457_)
                   (let ((__tmp50628
                          (let () (declare (not safe)) (cons _L32455_ '()))))
                     (declare (not safe))
                     (cons _L32457_ __tmp50628))))
                (___kont4677246773_
                 (lambda (_L32403_ _L32405_)
                   (let ((__tmp50637 (gx#datum->syntax '#f 'lambda))
                         (__tmp50629
                          (let ((__tmp50635
                                 (let ((__tmp50636
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50636 '())))
                                (__tmp50630
                                 (let ((__tmp50631
                                        (let ((__tmp50632
                                               (let ((__tmp50633
                                                      (let ((__tmp50634
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50634
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32403_ __tmp50633))))
                                          (declare (not safe))
                                          (cons _L32405_ __tmp50632))))
                                   (declare (not safe))
                                   (cons __tmp50631 '()))))
                            (declare (not safe))
                            (cons __tmp50635 __tmp50630))))
                     (declare (not safe))
                     (cons __tmp50637 __tmp50629))))
                (___kont4677446775_
                 (lambda (_L32355_ _L32357_ _L32358_)
                   (let ((__tmp50656 (gx#datum->syntax '#f 'lambda))
                         (__tmp50638
                          (let ((__tmp50654
                                 (let ((__tmp50655
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50655 '())))
                                (__tmp50639
                                 (let ((__tmp50640
                                        (let ((__tmp50653
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50641
                                               (let ((__tmp50646
                                                      (let ((__tmp50652
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50647
                                                             (let ((__tmp50648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50649
                                   (let ((__tmp50650
                                          (let ((__tmp50651
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50651 '()))))
                                     (declare (not safe))
                                     (cons _L32357_ __tmp50650))))
                              (declare (not safe))
                              (cons _L32358_ __tmp50649))))
                       (declare (not safe))
                       (cons __tmp50648 '()))))
                (declare (not safe))
                (cons __tmp50652 __tmp50647)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50642
                                                      (let ((__tmp50643
                                                             (let ((__tmp50644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50645 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50645 '()))))
                       (declare (not safe))
                       (cons _L32355_ __tmp50644))))
                (declare (not safe))
                (cons __tmp50643 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50646
                                                       __tmp50642))))
                                          (declare (not safe))
                                          (cons __tmp50653 __tmp50641))))
                                   (declare (not safe))
                                   (cons __tmp50640 '()))))
                            (declare (not safe))
                            (cons __tmp50654 __tmp50639))))
                     (declare (not safe))
                     (cons __tmp50656 __tmp50638))))
                (___kont4677646777_
                 (lambda (_L32286_ _L32288_ _L32289_)
                   (let ((__tmp50672 (gx#datum->syntax '#f 'lambda))
                         (__tmp50657
                          (let ((__tmp50670
                                 (let ((__tmp50671
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50671 '())))
                                (__tmp50658
                                 (let ((__tmp50659
                                        (let ((__tmp50669
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50660
                                               (let ((__tmp50665
                                                      (let ((__tmp50666
                                                             (let ((__tmp50667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50668 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50668 '()))))
                       (declare (not safe))
                       (cons _L32288_ __tmp50667))))
                (declare (not safe))
                (cons _L32289_ __tmp50666)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50661
                                                      (let ((__tmp50662
                                                             (let ((__tmp50663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50664 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50664 '()))))
                       (declare (not safe))
                       (cons _L32286_ __tmp50663))))
                (declare (not safe))
                (cons __tmp50662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50665
                                                       __tmp50661))))
                                          (declare (not safe))
                                          (cons __tmp50669 __tmp50660))))
                                   (declare (not safe))
                                   (cons __tmp50659 '()))))
                            (declare (not safe))
                            (cons __tmp50670 __tmp50658))))
                     (declare (not safe))
                     (cons __tmp50672 __tmp50657))))
                (___kont4677846779_
                 (lambda (_L32206_ _L32208_ _L32209_ _L32210_)
                   (let ((__tmp50690 (gx#datum->syntax '#f 'lambda))
                         (__tmp50673
                          (let ((__tmp50688
                                 (let ((__tmp50689
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50689 '())))
                                (__tmp50674
                                 (let ((__tmp50675
                                        (let ((__tmp50687
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50676
                                               (let ((__tmp50683
                                                      (let ((__tmp50684
                                                             (let ((__tmp50685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50686 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50686 '()))))
                       (declare (not safe))
                       (cons _L32209_ __tmp50685))))
                (declare (not safe))
                (cons _L32210_ __tmp50684)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50677
                                                      (let ((__tmp50678
                                                             (let ((__tmp50679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50680
                                   (let ((__tmp50681
                                          (let ((__tmp50682
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50682 '()))))
                                     (declare (not safe))
                                     (cons _L32208_ __tmp50681))))
                              (declare (not safe))
                              (cons __tmp50680 '()))))
                       (declare (not safe))
                       (cons _L32206_ __tmp50679))))
                (declare (not safe))
                (cons __tmp50678 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50683
                                                       __tmp50677))))
                                          (declare (not safe))
                                          (cons __tmp50687 __tmp50676))))
                                   (declare (not safe))
                                   (cons __tmp50675 '()))))
                            (declare (not safe))
                            (cons __tmp50688 __tmp50674))))
                     (declare (not safe))
                     (cons __tmp50690 __tmp50673)))))
            (let* ((___match4693046931_
                    (lambda (_e3208132315_
                             _hd3208032319_
                             _tl3207932322_
                             _e3208432325_
                             _hd3208332329_
                             _tl3208232332_
                             _e3208732335_
                             _hd3208632339_
                             _tl3208532342_)
                      (if (gx#identifier? _hd3208632339_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50692_|
                               _hd3208632339_)
                              (if (gx#stx-pair? _tl3208532342_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3208532342_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4677446775_
                                           _hd3208932349_
                                           _hd3208332329_
                                           _hd3208032319_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3208632339_)
                              (let ((_e3210332272_ (gx#stx-e _hd3208632339_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3208532342_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3208532342_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4677646777_
                                                 _hd3210532280_
                                                 _hd3208332329_
                                                 _hd3208032319_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50691_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4677846779_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3208332329_
                                     _hd3208032319_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4691046911_
                    (lambda (_e3207232383_
                             _hd3207132387_
                             _tl3207032390_
                             _e3207532393_
                             _hd3207432397_
                             _tl3207332400_)
                      (if (gx#stx-null? _tl3207332400_)
                          (___kont4677246773_ _hd3207432397_ _hd3207132387_)
                          (if (gx#stx-pair? _tl3207332400_)
                              (let ((_e3208732335_
                                     (gx#syntax-e _tl3207332400_)))
                                (let ((_tl3208532342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3208732335_)))
                                      (_hd3208632339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3208732335_))))
                                  (if (gx#identifier? _hd3208632339_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50692_|
                                           _hd3208632339_)
                                          (if (gx#stx-pair? _tl3208532342_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3208532342_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4677446775_
                                                       _hd3208932349_
                                                       _hd3207432397_
                                                       _hd3207132387_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3208632339_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3208632339_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3208532342_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3208532342_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4677646777_
                     _hd3210532280_
                     _hd3207432397_
                     _hd3207132387_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50691_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4677846779_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3207432397_
                                                 _hd3207132387_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_))))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4684046841_
                    (lambda (_e3202032559_
                             _hd3201932563_
                             _tl3201832566_
                             _e3202332569_
                             _hd3202232573_
                             _tl3202132576_
                             _e3202632579_
                             _hd3202532583_
                             _tl3202432586_
                             ___splice4676646767_
                             _target3202732589_
                             _tl3202932592_)
                      (letrec ((_loop3203032595_
                                (lambda (_hd3202832599_ _pred3203432602_)
                                  (if (gx#stx-pair? _hd3202832599_)
                                      (let ((_e3203132605_
                                             (gx#syntax-e _hd3202832599_)))
                                        (let ((_lp-tl3203332612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3203132605_)))
                                              (_lp-hd3203232609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3203132605_))))
                                          (_loop3203032595_
                                           _lp-tl3203332612_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3203232609_
                                                   _pred3203432602_)))))
                                      (let ((_pred3203532615_
                                             (reverse _pred3203432602_)))
                                        (if (gx#stx-pair? _tl3202132576_)
                                            (let ((_e3203832619_
                                                   (gx#syntax-e
                                                    _tl3202132576_)))
                                              (let ((_tl3203632626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3203832619_)))
                                                    (_hd3203732623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3203832619_))))
                                                (if (gx#stx-null?
                                                     _tl3203632626_)
                                                    (___kont4676446765_
                                                     _hd3203732623_
                                                     _pred3203532615_
                                                     _hd3201932563_)
                                                    (___match4693046931_
                                                     _e3202032559_
                                                     _hd3201932563_
                                                     _tl3201832566_
                                                     _e3202332569_
                                                     _hd3202232573_
                                                     _tl3202132576_
                                                     _e3203832619_
                                                     _hd3203732623_
                                                     _tl3203632626_))))
                                            (___match4691046911_
                                             _e3202032559_
                                             _hd3201932563_
                                             _tl3201832566_
                                             _e3202332569_
                                             _hd3202232573_
                                             _tl3202132576_)))))))
                        (_loop3203032595_ _target3202732589_ '()))))
                   (___match4681046811_
                    (lambda (_e3199632669_
                             _hd3199532673_
                             _tl3199432676_
                             _e3199932679_
                             _hd3199832683_
                             _tl3199732686_
                             _e3200232689_
                             _hd3200132693_
                             _tl3200032696_
                             ___splice4676246763_
                             _target3200332699_
                             _tl3200532702_)
                      (letrec ((_loop3200632705_
                                (lambda (_hd3200432709_ _pred3201032712_)
                                  (if (gx#stx-pair? _hd3200432709_)
                                      (let ((_e3200732715_
                                             (gx#syntax-e _hd3200432709_)))
                                        (let ((_lp-tl3200932722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200732715_)))
                                              (_lp-hd3200832719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200732715_))))
                                          (_loop3200632705_
                                           _lp-tl3200932722_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3200832719_
                                                   _pred3201032712_)))))
                                      (let ((_pred3201132725_
                                             (reverse _pred3201032712_)))
                                        (if (gx#stx-pair? _tl3199732686_)
                                            (let ((_e3201432729_
                                                   (gx#syntax-e
                                                    _tl3199732686_)))
                                              (let ((_tl3201232736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3201432729_)))
                                                    (_hd3201332733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3201432729_))))
                                                (if (gx#stx-null?
                                                     _tl3201232736_)
                                                    (___kont4676046761_
                                                     _hd3201332733_
                                                     _pred3201132725_
                                                     _hd3199532673_)
                                                    (___match4693046931_
                                                     _e3199632669_
                                                     _hd3199532673_
                                                     _tl3199432676_
                                                     _e3199932679_
                                                     _hd3199832683_
                                                     _tl3199732686_
                                                     _e3201432729_
                                                     _hd3201332733_
                                                     _tl3201232736_))))
                                            (___match4691046911_
                                             _e3199632669_
                                             _hd3199532673_
                                             _tl3199432676_
                                             _e3199932679_
                                             _hd3199832683_
                                             _tl3199732686_)))))))
                        (_loop3200632705_ _target3200332699_ '())))))
              (if (gx#stx-pair? ___stx4675746758_)
                  (let ((_e3199632669_ (gx#syntax-e ___stx4675746758_)))
                    (let ((_tl3199432676_
                           (let () (declare (not safe)) (##cdr _e3199632669_)))
                          (_hd3199532673_
                           (let ()
                             (declare (not safe))
                             (##car _e3199632669_))))
                      (if (gx#stx-pair? _tl3199432676_)
                          (let ((_e3199932679_ (gx#syntax-e _tl3199432676_)))
                            (let ((_tl3199732686_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3199932679_)))
                                  (_hd3199832683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3199932679_))))
                              (if (gx#stx-pair? _hd3199832683_)
                                  (let ((_e3200232689_
                                         (gx#syntax-e _hd3199832683_)))
                                    (let ((_tl3200032696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200232689_)))
                                          (_hd3200132693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200232689_))))
                                      (if (gx#identifier? _hd3200132693_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50695_|
                                               _hd3200132693_)
                                              (if (gx#stx-pair/null?
                                                   _tl3200032696_)
                                                  (let ((___splice4676246763_
                                                         (gx#syntax-split-splice
                                                          _tl3200032696_
                                                          '0)))
                                                    (let ((_tl3200532702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4676246763_
                                                              '1)))
                                                          (_target3200332699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4676246763_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3200532702_)
                                                          (___match4681046811_
                                                           _e3199632669_
                                                           _hd3199532673_
                                                           _tl3199432676_
                                                           _e3199932679_
                                                           _hd3199832683_
                                                           _tl3199732686_
                                                           _e3200232689_
                                                           _hd3200132693_
                                                           _tl3200032696_
                                                           ___splice4676246763_
                                                           _target3200332699_
                                                           _tl3200532702_)
                                                          (if (gx#stx-pair?
                                                               _tl3199732686_)
                                                              (let ((_e3206732445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4677046771_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50692_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4677446775_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4677646777_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50691_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4677846779_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4677246773_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3199732686_)
                                                      (let ((_e3206732445_
                                                             (gx#syntax-e
                                                              _tl3199732686_)))
                                                        (let ((_tl3206532452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3206732445_)))
                      (_hd3206632449_
                       (let () (declare (not safe)) (##car _e3206732445_))))
                  (if (gx#stx-null? _tl3206532452_)
                      (___kont4677046771_ _hd3206632449_ _hd3199832683_)
                      (if (gx#identifier? _hd3206632449_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50692_|
                               _hd3206632449_)
                              (if (gx#stx-pair? _tl3206532452_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3206532452_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4677446775_
                                           _hd3208932349_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3206632449_)
                              (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3206532452_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3206532452_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4677646777_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50691_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4677846779_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3199832683_
                                     _hd3199532673_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-null? _tl3199732686_)
                  (___kont4677246773_ _hd3199832683_ _hd3199532673_)
                  (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50694_|
                                                   _hd3200132693_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3200032696_)
                                                      (let ((___splice4676646767_
                                                             (gx#syntax-split-splice
                                                              _tl3200032696_
                                                              '0)))
                                                        (let ((_tl3202932592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4676646767_ '1)))
                      (_target3202732589_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4676646767_ '0))))
                  (if (gx#stx-null? _tl3202932592_)
                      (___match4684046841_
                       _e3199632669_
                       _hd3199532673_
                       _tl3199432676_
                       _e3199932679_
                       _hd3199832683_
                       _tl3199732686_
                       _e3200232689_
                       _hd3200132693_
                       _tl3200032696_
                       ___splice4676646767_
                       _target3202732589_
                       _tl3202932592_)
                      (if (gx#stx-pair? _tl3199732686_)
                          (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                            (let ((_tl3206532452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3206732445_)))
                                  (_hd3206632449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3206732445_))))
                              (if (gx#stx-null? _tl3206532452_)
                                  (___kont4677046771_
                                   _hd3206632449_
                                   _hd3199832683_)
                                  (if (gx#identifier? _hd3206632449_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50692_|
                                           _hd3206632449_)
                                          (if (gx#stx-pair? _tl3206532452_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3206532452_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4677446775_
                                                       _hd3208932349_
                                                       _hd3199832683_
                                                       _hd3199532673_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3206632449_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3206632449_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3206532452_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3206532452_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4677646777_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50691_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4677846779_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (if (gx#stx-null? _tl3199732686_)
                              (___kont4677246773_
                               _hd3199832683_
                               _hd3199532673_)
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4677046771_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50692_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4677446775_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4677646777_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50691_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4677846779_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4677246773_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50693_|
                                                       _hd3200132693_)
                                                      (if (gx#stx-pair?
                                                           _tl3200032696_)
                                                          (let ((_e3205332509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3200032696_)))
                    (let ((_tl3205132516_
                           (let () (declare (not safe)) (##cdr _e3205332509_)))
                          (_hd3205232513_
                           (let ()
                             (declare (not safe))
                             (##car _e3205332509_))))
                      (if (gx#stx-null? _tl3205132516_)
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3205632519_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3205432526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3205632519_)))
                                      (_hd3205532523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3205632519_))))
                                  (if (gx#stx-null? _tl3205432526_)
                                      (___kont4676846769_
                                       _hd3205532523_
                                       _hd3205232513_
                                       _hd3199532673_)
                                      (if (gx#identifier? _hd3205532523_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50692_|
                                               _hd3205532523_)
                                              (if (gx#stx-pair? _tl3205432526_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3205432526_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4677446775_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3205532523_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3205532523_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3205432526_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3205432526_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4677646777_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50691_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4677846779_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4677246773_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_))))
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3206732445_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3206532452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3206732445_)))
                                      (_hd3206632449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3206732445_))))
                                  (if (gx#stx-null? _tl3206532452_)
                                      (___kont4677046771_
                                       _hd3206632449_
                                       _hd3199832683_)
                                      (if (gx#identifier? _hd3206632449_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50692_|
                                               _hd3206632449_)
                                              (if (gx#stx-pair? _tl3206532452_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3206532452_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4677446775_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3206632449_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3206632449_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3206532452_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3206532452_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4677646777_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50691_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4677846779_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4677246773_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-pair? _tl3199732686_)
                      (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4677046771_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50692_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4677446775_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4677646777_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50691_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4677846779_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4677246773_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4677046771_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50692_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4677446775_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4677646777_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50691_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4677846779_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4677246773_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3199732686_)
                                              (let ((_e3206732445_
                                                     (gx#syntax-e
                                                      _tl3199732686_)))
                                                (let ((_tl3206532452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3206732445_)))
                                                      (_hd3206632449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3206732445_))))
                                                  (if (gx#stx-null?
                                                       _tl3206532452_)
                                                      (___kont4677046771_
                                                       _hd3206632449_
                                                       _hd3199832683_)
                                                      (if (gx#identifier?
                                                           _hd3206632449_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50692_|
                                                               _hd3206632449_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3206532452_)
                          (let ((_e3209032345_ (gx#syntax-e _tl3206532452_)))
                            (let ((_tl3208832352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3209032345_)))
                                  (_hd3208932349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3209032345_))))
                              (if (gx#stx-null? _tl3208832352_)
                                  (___kont4677446775_
                                   _hd3208932349_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))
                          (let () (declare (not safe)) (_g3198932135_)))
                      (let () (declare (not safe)) (_g3198932135_)))
                  (if (gx#stx-datum? _hd3206632449_)
                      (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3210332272_ '::))
                            (if (gx#stx-pair? _tl3206532452_)
                                (let ((_e3210632276_
                                       (gx#syntax-e _tl3206532452_)))
                                  (let ((_tl3210432283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3210632276_)))
                                        (_hd3210532280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3210632276_))))
                                    (if (gx#stx-null? _tl3210432283_)
                                        (___kont4677646777_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (if (gx#stx-pair? _tl3210432283_)
                                            (let ((_e3212632186_
                                                   (gx#syntax-e
                                                    _tl3210432283_)))
                                              (let ((_tl3212432193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212632186_)))
                                                    (_hd3212532190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212632186_))))
                                                (if (gx#identifier?
                                                     _hd3212532190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50691_|
                                                         _hd3212532190_)
                                                        (if (gx#stx-pair?
                                                             _tl3212432193_)
                                                            (let ((_e3212932196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3212432193_)))
                      (let ((_tl3212732203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212932196_)))
                            (_hd3212832200_
                             (let ()
                               (declare (not safe))
                               (##car _e3212932196_))))
                        (if (gx#stx-null? _tl3212732203_)
                            (___kont4677846779_
                             _hd3212832200_
                             _hd3210532280_
                             _hd3199832683_
                             _hd3199532673_)
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_)))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_))))
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3199732686_)
                                                  (___kont4677246773_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))))
                                  (if (gx#stx-pair? _tl3199732686_)
                                      (let ((_e3206732445_
                                             (gx#syntax-e _tl3199732686_)))
                                        (let ((_tl3206532452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3206732445_)))
                                              (_hd3206632449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3206732445_))))
                                          (if (gx#stx-null? _tl3206532452_)
                                              (___kont4677046771_
                                               _hd3206632449_
                                               _hd3199832683_)
                                              (if (gx#identifier?
                                                   _hd3206632449_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50692_|
                                                       _hd3206632449_)
                                                      (if (gx#stx-pair?
                                                           _tl3206532452_)
                                                          (let ((_e3209032345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3206532452_)))
                    (let ((_tl3208832352_
                           (let () (declare (not safe)) (##cdr _e3209032345_)))
                          (_hd3208932349_
                           (let ()
                             (declare (not safe))
                             (##car _e3209032345_))))
                      (if (gx#stx-null? _tl3208832352_)
                          (___kont4677446775_
                           _hd3208932349_
                           _hd3199832683_
                           _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_)))
              (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3206632449_)
                                                      (let ((_e3210332272_
                                                             (gx#stx-e
                                                              _hd3206632449_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3210332272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3206532452_)
                        (let ((_e3210632276_ (gx#syntax-e _tl3206532452_)))
                          (let ((_tl3210432283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3210632276_)))
                                (_hd3210532280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3210632276_))))
                            (if (gx#stx-null? _tl3210432283_)
                                (___kont4677646777_
                                 _hd3210532280_
                                 _hd3199832683_
                                 _hd3199532673_)
                                (if (gx#stx-pair? _tl3210432283_)
                                    (let ((_e3212632186_
                                           (gx#syntax-e _tl3210432283_)))
                                      (let ((_tl3212432193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212632186_)))
                                            (_hd3212532190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212632186_))))
                                        (if (gx#identifier? _hd3212532190_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50691_|
                                                 _hd3212532190_)
                                                (if (gx#stx-pair?
                                                     _tl3212432193_)
                                                    (let ((_e3212932196_
                                                           (gx#syntax-e
                                                            _tl3212432193_)))
                                                      (let ((_tl3212732203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212932196_)))
                    (_hd3212832200_
                     (let () (declare (not safe)) (##car _e3212932196_))))
                (if (gx#stx-null? _tl3212732203_)
                    (___kont4677846779_
                     _hd3212832200_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_))))
              (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3199732686_)
                                          (___kont4677246773_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32778_)
        (let* ((___stx4702547026_ _$stx32778_)
               (_g3278332817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4702547026_))))
          (let ((___kont4702847029_
                 (lambda (_L32921_ _L32923_ _L32924_)
                   (let ((__tmp50757 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50696
                          (let ((__tmp50697
                                 (let ((__tmp50698
                                        (let ((__tmp50756
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50699
                                               (let ((__tmp50700
                                                      (let ((__tmp50701
                                                             (let ((__tmp50755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50702
                            (let ((__tmp50747
                                   (let ((__tmp50752
                                          (let ((__tmp50754
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50753
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50754 __tmp50753)))
                                         (__tmp50748
                                          (let ((__tmp50749
                                                 (let ((__tmp50751
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50750
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32921_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50751
                                                         __tmp50750))))
                                            (declare (not safe))
                                            (cons __tmp50749 '()))))
                                     (declare (not safe))
                                     (cons __tmp50752 __tmp50748)))
                                  (__tmp50703
                                   (let ((__tmp50704
                                          (let ((__tmp50746
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50705
                                                 (let ((__tmp50744
                                                        (let ((__tmp50745
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50745
                                                                '())))
                                                       (__tmp50706
                                                        (let ((__tmp50707
                                                               (let ((__tmp50743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50708
                              (let ((__tmp50742 (gx#datum->syntax '#f '$stx))
                                    (__tmp50709
                                     (let ((__tmp50710
                                            (let ((__tmp50721
                                                   (let ((__tmp50740
                                                          (let ((__tmp50741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50741)))
                 (__tmp50722
                  (let ((__tmp50723
                         (let ((__tmp50739
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50724
                                (let ((__tmp50738
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50725
                                       (let ((__tmp50726
                                              (let ((__tmp50737
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50727
                                                     (let ((__tmp50733
                                                            (let ((__tmp50736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50734
                           (let ((__tmp50735 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50735 '()))))
                      (declare (not safe))
                      (cons __tmp50736 __tmp50734)))
                   (__tmp50728
                    (let ((__tmp50729
                           (let ((__tmp50732
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50730
                                  (let ((__tmp50731
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50731 '()))))
                             (declare (not safe))
                             (cons __tmp50732 __tmp50730))))
                      (declare (not safe))
                      (cons __tmp50729 '()))))
               (declare (not safe))
               (cons __tmp50733 __tmp50728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50737 __tmp50727))))
                                         (declare (not safe))
                                         (cons __tmp50726 '()))))
                                  (declare (not safe))
                                  (cons __tmp50738 __tmp50725))))
                           (declare (not safe))
                           (cons __tmp50739 __tmp50724))))
                    (declare (not safe))
                    (cons __tmp50723 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50740
                                                           __tmp50722)))
                                                  (__tmp50711
                                                   (let ((__tmp50712
                                                          (let ((__tmp50720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50713
                         (let ((__tmp50714
                                (let ((__tmp50719
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50715
                                       (let ((__tmp50718
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50716
                                              (let ((__tmp50717
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50717 '()))))
                                         (declare (not safe))
                                         (cons __tmp50718 __tmp50716))))
                                  (declare (not safe))
                                  (cons __tmp50719 __tmp50715))))
                           (declare (not safe))
                           (cons __tmp50714 '()))))
                    (declare (not safe))
                    (cons __tmp50720 __tmp50713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50712 '()))))
                                              (declare (not safe))
                                              (cons __tmp50721 __tmp50711))))
                                       (declare (not safe))
                                       (cons '() __tmp50710))))
                                (declare (not safe))
                                (cons __tmp50742 __tmp50709))))
                         (declare (not safe))
                         (cons __tmp50743 __tmp50708))))
                  (declare (not safe))
                  (cons __tmp50707 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50744
                                                         __tmp50706))))
                                            (declare (not safe))
                                            (cons __tmp50746 __tmp50705))))
                                     (declare (not safe))
                                     (cons __tmp50704 '()))))
                              (declare (not safe))
                              (cons __tmp50747 __tmp50703))))
                       (declare (not safe))
                       (cons __tmp50755 __tmp50702))))
                (declare (not safe))
                (cons __tmp50701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50700))))
                                          (declare (not safe))
                                          (cons __tmp50756 __tmp50699))))
                                   (declare (not safe))
                                   (cons __tmp50698 '()))))
                            (declare (not safe))
                            (cons _L32924_ __tmp50697))))
                     (declare (not safe))
                     (cons __tmp50757 __tmp50696))))
                (___kont4703047031_
                 (lambda (_L32854_ _L32856_ _L32857_)
                   (let ((__tmp50758
                          (let ((__tmp50759
                                 (let ((__tmp50760
                                        (let ((__tmp50761
                                               (let ((__tmp50772
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50762
                                                      (let ((__tmp50770
                                                             (let ((__tmp50771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50771 '())))
                    (__tmp50763
                     (let ((__tmp50764
                            (let ((__tmp50769
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50765
                                   (let ((__tmp50766
                                          (let ((__tmp50767
                                                 (let ((__tmp50768
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50768 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50767))))
                                     (declare (not safe))
                                     (cons '#f __tmp50766))))
                              (declare (not safe))
                              (cons __tmp50769 __tmp50765))))
                       (declare (not safe))
                       (cons __tmp50764 '()))))
                (declare (not safe))
                (cons __tmp50770 __tmp50763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50772
                                                       __tmp50762))))
                                          (declare (not safe))
                                          (cons __tmp50761 '()))))
                                   (declare (not safe))
                                   (cons _L32854_ __tmp50760))))
                            (declare (not safe))
                            (cons _L32856_ __tmp50759))))
                     (declare (not safe))
                     (cons _L32857_ __tmp50758)))))
            (let ((___match4705847059_
                   (lambda (_e3279032881_
                            _hd3278932885_
                            _tl3278832888_
                            _e3279332891_
                            _hd3279232895_
                            _tl3279132898_
                            _e3279632901_
                            _hd3279532905_
                            _tl3279432908_
                            _e3279932911_
                            _hd3279832915_
                            _tl3279732918_)
                     (let ((_L32921_ _hd3279832915_)
                           (_L32923_ _hd3279532905_)
                           (_L32924_ _hd3279232895_))
                       (if (gx#identifier? _L32924_)
                           (___kont4702847029_ _L32921_ _L32923_ _L32924_)
                           (let () (declare (not safe)) (_g3278332817_)))))))
              (if (gx#stx-pair? ___stx4702547026_)
                  (let ((_e3279032881_ (gx#syntax-e ___stx4702547026_)))
                    (let ((_tl3278832888_
                           (let () (declare (not safe)) (##cdr _e3279032881_)))
                          (_hd3278932885_
                           (let ()
                             (declare (not safe))
                             (##car _e3279032881_))))
                      (if (gx#stx-pair? _tl3278832888_)
                          (let ((_e3279332891_ (gx#syntax-e _tl3278832888_)))
                            (let ((_tl3279132898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3279332891_)))
                                  (_hd3279232895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3279332891_))))
                              (if (gx#stx-pair? _tl3279132898_)
                                  (let ((_e3279632901_
                                         (gx#syntax-e _tl3279132898_)))
                                    (let ((_tl3279432908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3279632901_)))
                                          (_hd3279532905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3279632901_))))
                                      (if (gx#stx-pair? _tl3279432908_)
                                          (let ((_e3279932911_
                                                 (gx#syntax-e _tl3279432908_)))
                                            (let ((_tl3279732918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3279932911_)))
                                                  (_hd3279832915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3279932911_))))
                                              (if (gx#stx-null? _tl3279732918_)
                                                  (___match4705847059_
                                                   _e3279032881_
                                                   _hd3278932885_
                                                   _tl3278832888_
                                                   _e3279332891_
                                                   _hd3279232895_
                                                   _tl3279132898_
                                                   _e3279632901_
                                                   _hd3279532905_
                                                   _tl3279432908_
                                                   _e3279932911_
                                                   _hd3279832915_
                                                   _tl3279732918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3278332817_)))))
                                          (if (gx#stx-null? _tl3279432908_)
                                              (___kont4703047031_
                                               _hd3279532905_
                                               _hd3279232895_
                                               _hd3278932885_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3278332817_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3278332817_)))))
                          (let () (declare (not safe)) (_g3278332817_)))))
                  (let () (declare (not safe)) (_g3278332817_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32946_)
        (let* ((_g3295032965_
                (lambda (_g3295132961_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3295132961_)))
               (_g3294933008_
                (lambda (_g3295132969_)
                  (if (gx#stx-pair? _g3295132969_)
                      (let ((_e3295632972_ (gx#syntax-e _g3295132969_)))
                        (let ((_hd3295532976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3295632972_)))
                              (_tl3295432979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3295632972_))))
                          (if (gx#stx-pair? _tl3295432979_)
                              (let ((_e3295932982_
                                     (gx#syntax-e _tl3295432979_)))
                                (let ((_hd3295832986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3295932982_)))
                                      (_tl3295732989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3295932982_))))
                                  ((lambda (_L32992_ _L32994_)
                                     (let ((__tmp50777
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50773
                                            (let ((__tmp50774
                                                   (let ((__tmp50775
                                                          (let ((__tmp50776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50776 _L32992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50775 '()))))
                                              (declare (not safe))
                                              (cons _L32994_ __tmp50774))))
                                       (declare (not safe))
                                       (cons __tmp50777 __tmp50773)))
                                   _tl3295732989_
                                   _hd3295832986_)))
                              (_g3295032965_ _g3295132969_))))
                      (_g3295032965_ _g3295132969_)))))
          (_g3294933008_ _$stx32946_))))))
