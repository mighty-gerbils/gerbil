(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g140919_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140921_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140923_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140928_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140931_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140936_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140939_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140944_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140947_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140952_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g140955_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g141062_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj140914
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140918 |gx[1]#_g140919_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140918
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140920 |gx[1]#_g140921_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140920
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140922 |gx[1]#_g140923_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140922
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140924
               (let ((__tmp140929
                      (let ((__tmp140930 |gx[1]#_g140931_|))
                        (declare (not safe))
                        (cons 'e __tmp140930)))
                     (__tmp140925
                      (let ((__tmp140926
                             (let ((__tmp140927 |gx[1]#_g140928_|))
                               (declare (not safe))
                               (cons 'source __tmp140927))))
                        (declare (not safe))
                        (cons __tmp140926 '()))))
                 (declare (not safe))
                 (cons __tmp140929 __tmp140925))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140924
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140932
               (let ((__tmp140937
                      (let ((__tmp140938 |gx[1]#_g140939_|))
                        (declare (not safe))
                        (cons 'e __tmp140938)))
                     (__tmp140933
                      (let ((__tmp140934
                             (let ((__tmp140935 |gx[1]#_g140936_|))
                               (declare (not safe))
                               (cons 'source __tmp140935))))
                        (declare (not safe))
                        (cons __tmp140934 '()))))
                 (declare (not safe))
                 (cons __tmp140937 __tmp140933))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140932
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140940
               (let ((__tmp140945
                      (let ((__tmp140946 |gx[1]#_g140947_|))
                        (declare (not safe))
                        (cons 'e __tmp140946)))
                     (__tmp140941
                      (let ((__tmp140942
                             (let ((__tmp140943 |gx[1]#_g140944_|))
                               (declare (not safe))
                               (cons 'source __tmp140943))))
                        (declare (not safe))
                        (cons __tmp140942 '()))))
                 (declare (not safe))
                 (cons __tmp140945 __tmp140941))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140940
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp140948
               (let ((__tmp140953
                      (let ((__tmp140954 |gx[1]#_g140955_|))
                        (declare (not safe))
                        (cons 'e __tmp140954)))
                     (__tmp140949
                      (let ((__tmp140950
                             (let ((__tmp140951 |gx[1]#_g140952_|))
                               (declare (not safe))
                               (cons 'source __tmp140951))))
                        (declare (not safe))
                        (cons __tmp140950 '()))))
                 (declare (not safe))
                 (cons __tmp140953 __tmp140949))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj140914
           __tmp140948
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj140914))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx135467_)
        (let* ((_g135471135485_
                (lambda (_g135472135481_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g135472135481_)))
               (_g135470135527_
                (lambda (_g135472135489_)
                  (if (gx#stx-pair? _g135472135489_)
                      (let ((_e135476135492_ (gx#syntax-e _g135472135489_)))
                        (let ((_hd135475135496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135476135492_)))
                              (_tl135474135499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135476135492_))))
                          (if (gx#stx-pair? _tl135474135499_)
                              (let ((_e135479135502_
                                     (gx#syntax-e _tl135474135499_)))
                                (let ((_hd135478135506_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e135479135502_)))
                                      (_tl135477135509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e135479135502_))))
                                  (if (gx#stx-null? _tl135477135509_)
                                      ((lambda (_L135512_)
                                         (let ((__tmp140965
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp140956
                                                (let ((__tmp140962
                                                       (let ((__tmp140964
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp140963
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L135512_ '()))))
                 (declare (not safe))
                 (cons __tmp140964 __tmp140963)))
              (__tmp140957
               (let ((__tmp140958
                      (let ((__tmp140961 (gx#datum->syntax '#f 'error))
                            (__tmp140959
                             (let ((__tmp140960
                                    (let ()
                                      (declare (not safe))
                                      (cons _L135512_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp140960))))
                        (declare (not safe))
                        (cons __tmp140961 __tmp140959))))
                 (declare (not safe))
                 (cons __tmp140958 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp140962
                                                        __tmp140957))))
                                           (declare (not safe))
                                           (cons __tmp140965 __tmp140956)))
                                       _hd135478135506_)
                                      (_g135471135485_ _g135472135489_))))
                              (_g135471135485_ _g135472135489_))))
                      (_g135471135485_ _g135472135489_)))))
          (_g135470135527_ _$stx135467_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx135531_)
        (letrec ((_generate135534_
                  (lambda (_tgt135683_ _kws135685_ _clauses135686_)
                    (letrec ((_generate-clause135688_
                              (lambda (_hd136598_ _E136600_)
                                (let* ((___stx140817140818_ _hd136598_)
                                       (_g136604136631_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx140817140818_))))
                                  (let ((___kont140820140821_
                                         (lambda (_L136727_ _L136729_)
                                           (_generate1135690_
                                            _hd136598_
                                            _L136729_
                                            '#t
                                            _L136727_
                                            _E136600_)))
                                        (___kont140822140823_
                                         (lambda (_L136679_
                                                  _L136681_
                                                  _L136682_)
                                           (_generate1135690_
                                            _hd136598_
                                            _L136682_
                                            _L136681_
                                            _L136679_
                                            _E136600_)))
                                        (___kont140824140825_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx135531_
                                            _hd136598_))))
                                    (if (gx#stx-pair? ___stx140817140818_)
                                        (let ((_e136610136707_
                                               (gx#syntax-e
                                                ___stx140817140818_)))
                                          (let ((_tl136608136714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e136610136707_)))
                                                (_hd136609136711_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e136610136707_))))
                                            (if (gx#stx-pair? _tl136608136714_)
                                                (let ((_e136613136717_
                                                       (gx#syntax-e
                                                        _tl136608136714_)))
                                                  (let ((_tl136611136724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e136613136717_)))
                                                        (_hd136612136721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e136613136717_))))
                                                    (if (gx#stx-null?
                                                         _tl136611136724_)
                                                        (___kont140820140821_
                                                         _hd136612136721_
                                                         _hd136609136711_)
                                                        (if (gx#stx-pair?
                                                             _tl136611136724_)
                                                            (let ((_e136625136669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl136611136724_)))
                      (let ((_tl136623136676_
                             (let ()
                               (declare (not safe))
                               (##cdr _e136625136669_)))
                            (_hd136624136673_
                             (let ()
                               (declare (not safe))
                               (##car _e136625136669_))))
                        (if (gx#stx-null? _tl136623136676_)
                            (___kont140822140823_
                             _hd136624136673_
                             _hd136612136721_
                             _hd136609136711_)
                            (___kont140824140825_))))
                    (___kont140824140825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont140824140825_))))
                                        (___kont140824140825_))))))
                             (_generate1135690_
                              (lambda (_where136076_
                                       _hd136078_
                                       _fender136079_
                                       _body136080_
                                       _E136081_)
                                (letrec ((_recur136083_
                                          (lambda (_hd136086_
                                                   _tgt136088_
                                                   _K136089_)
                                            (let* ((___stx140863140864_
                                                    _hd136086_)
                                                   (_g136092136104_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx140863140864_))))
                                              (let ((___kont140866140867_
                                                     (lambda (_L136388_
                                                              _L136390_)
                                                       (let* ((_g136401136409_
                                                               (lambda (_g136402136405_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g136402136405_)))
                      (_g136400136590_
                       (lambda (_g136402136413_)
                         ((lambda (_L136416_)
                            (let ()
                              (let* ((_g136428136436_
                                      (lambda (_g136429136432_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g136429136432_)))
                                     (_g136427136586_
                                      (lambda (_g136429136440_)
                                        ((lambda (_L136443_)
                                           (let ()
                                             (let* ((_g136456136464_
                                                     (lambda (_g136457136460_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g136457136460_)))
                                                    (_g136455136582_
                                                     (lambda (_g136457136468_)
                                                       ((lambda (_L136471_)
                                                          (let ()
                                                            (let* ((_g136484136492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g136485136488_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g136485136488_)))
                           (_g136483136578_
                            (lambda (_g136485136496_)
                              ((lambda (_L136499_)
                                 (let ()
                                   (let* ((_g136512136520_
                                           (lambda (_g136513136516_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g136513136516_)))
                                          (_g136511136574_
                                           (lambda (_g136513136524_)
                                             ((lambda (_L136527_)
                                                (let ()
                                                  (let* ((_g136540136548_
                                                          (lambda (_g136541136544_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g136541136544_)))
                                                         (_g136539136570_
                                                          (lambda (_g136541136552_)
                                                            ((lambda (_L136555_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp140998 (gx#datum->syntax '#f 'if))
                                 (__tmp140966
                                  (let ((__tmp140995
                                         (let ((__tmp140997
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp140996
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L136416_ '()))))
                                           (declare (not safe))
                                           (cons __tmp140997 __tmp140996)))
                                        (__tmp140967
                                         (let ((__tmp140969
                                                (let ((__tmp140994
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp140970
                                                       (let ((__tmp140988
                                                              (let ((__tmp140989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp140990
                                    (let ((__tmp140991
                                           (let ((__tmp140993
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp140992
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L136416_ '()))))
                                             (declare (not safe))
                                             (cons __tmp140993 __tmp140992))))
                                      (declare (not safe))
                                      (cons __tmp140991 '()))))
                               (declare (not safe))
                               (cons _L136443_ __tmp140990))))
                        (declare (not safe))
                        (cons __tmp140989 '())))
                     (__tmp140971
                      (let ((__tmp140972
                             (let ((__tmp140987 (gx#datum->syntax '#f 'let))
                                   (__tmp140973
                                    (let ((__tmp140975
                                           (let ((__tmp140982
                                                  (let ((__tmp140983
                                                         (let ((__tmp140984
                                                                (let ((__tmp140986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp140985
                               (let ()
                                 (declare (not safe))
                                 (cons _L136443_ '()))))
                          (declare (not safe))
                          (cons __tmp140986 __tmp140985))))
                   (declare (not safe))
                   (cons __tmp140984 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L136471_
                                                          __tmp140983)))
                                                 (__tmp140976
                                                  (let ((__tmp140977
                                                         (let ((__tmp140978
                                                                (let ((__tmp140979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp140981
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp140980
                                      (let ()
                                        (declare (not safe))
                                        (cons _L136443_ '()))))
                                 (declare (not safe))
                                 (cons __tmp140981 __tmp140980))))
                          (declare (not safe))
                          (cons __tmp140979 '()))))
                   (declare (not safe))
                   (cons _L136499_ __tmp140978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp140977 '()))))
                                             (declare (not safe))
                                             (cons __tmp140982 __tmp140976)))
                                          (__tmp140974
                                           (let ()
                                             (declare (not safe))
                                             (cons _L136527_ '()))))
                                      (declare (not safe))
                                      (cons __tmp140975 __tmp140974))))
                               (declare (not safe))
                               (cons __tmp140987 __tmp140973))))
                        (declare (not safe))
                        (cons __tmp140972 '()))))
                 (declare (not safe))
                 (cons __tmp140988 __tmp140971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp140994
                                                        __tmp140970)))
                                               (__tmp140968
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L136555_ '()))))
                                           (declare (not safe))
                                           (cons __tmp140969 __tmp140968))))
                                    (declare (not safe))
                                    (cons __tmp140995 __tmp140967))))
                             (declare (not safe))
                             (cons __tmp140998 __tmp140966)))))
                     _g136541136552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g136539136570_
                                                     _E136081_))))
                                              _g136513136524_))))
                                     (_g136511136574_
                                      (_recur136083_
                                       _L136390_
                                       _L136471_
                                       (_recur136083_
                                        _L136388_
                                        _L136499_
                                        _K136089_))))))
                               _g136485136496_))))
                      (_g136483136578_ (gx#genident 'tl)))))
                _g136457136468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g136455136582_
                                                (gx#genident 'hd)))))
                                         _g136429136440_))))
                                (_g136427136586_ (gx#genident 'e)))))
                          _g136402136413_))))
                 (_g136400136590_ _tgt136088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont140868140869_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd136086_)
                                                           (if (gx#underscore?
                                                                _hd136086_)
                                                               _K136089_
                                                               (if (let ((__tmp141043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g136114136116_)
                                    (gx#bound-identifier=?
                                     _g136114136116_
                                     _hd136086_))))
                             (declare (not safe))
                             (find __tmp141043 _kws135685_))
                           (let* ((_g136120136135_
                                   (lambda (_g136121136131_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g136121136131_)))
                                  (_g136119136186_
                                   (lambda (_g136121136139_)
                                     (if (gx#stx-pair? _g136121136139_)
                                         (let ((_e136126136142_
                                                (gx#syntax-e _g136121136139_)))
                                           (let ((_hd136125136146_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e136126136142_)))
                                                 (_tl136124136149_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e136126136142_))))
                                             (if (gx#stx-pair?
                                                  _tl136124136149_)
                                                 (let ((_e136129136152_
                                                        (gx#syntax-e
                                                         _tl136124136149_)))
                                                   (let ((_hd136128136156_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e136129136152_)))
                                                         (_tl136127136159_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e136129136152_))))
                                                     (if (gx#stx-null?
                                                          _tl136127136159_)
                                                         ((lambda (_L136162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L136164_)
                    (let ()
                      (let ((__tmp141042 (gx#datum->syntax '#f 'if))
                            (__tmp141025
                             (let ((__tmp141028
                                    (let ((__tmp141041
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp141029
                                           (let ((__tmp141038
                                                  (let ((__tmp141040
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp141039
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L136164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp141040
                                                          __tmp141039)))
                                                 (__tmp141030
                                                  (let ((__tmp141031
                                                         (let ((__tmp141037
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp141032
                        (let ((__tmp141033
                               (let ((__tmp141034
                                      (let ((__tmp141036
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp141035
                                             (let ()
                                               (declare (not safe))
                                               (cons _L136162_ '()))))
                                        (declare (not safe))
                                        (cons __tmp141036 __tmp141035))))
                                 (declare (not safe))
                                 (cons __tmp141034 '()))))
                          (declare (not safe))
                          (cons _L136164_ __tmp141033))))
                   (declare (not safe))
                   (cons __tmp141037 __tmp141032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp141031 '()))))
                                             (declare (not safe))
                                             (cons __tmp141038 __tmp141030))))
                                      (declare (not safe))
                                      (cons __tmp141041 __tmp141029)))
                                   (__tmp141026
                                    (let ((__tmp141027
                                           (let ()
                                             (declare (not safe))
                                             (cons _E136081_ '()))))
                                      (declare (not safe))
                                      (cons _K136089_ __tmp141027))))
                               (declare (not safe))
                               (cons __tmp141028 __tmp141026))))
                        (declare (not safe))
                        (cons __tmp141042 __tmp141025))))
                  _hd136128136156_
                  _hd136125136146_)
                 (_g136120136135_ _g136121136139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g136120136135_
                                                  _g136121136139_))))
                                         (_g136120136135_ _g136121136139_)))))
                             (_g136119136186_ (list _tgt136088_ _hd136086_)))
                           (let* ((_g136190136205_
                                   (lambda (_g136191136201_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g136191136201_)))
                                  (_g136189136249_
                                   (lambda (_g136191136209_)
                                     (if (gx#stx-pair? _g136191136209_)
                                         (let ((_e136196136212_
                                                (gx#syntax-e _g136191136209_)))
                                           (let ((_hd136195136216_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e136196136212_)))
                                                 (_tl136194136219_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e136196136212_))))
                                             (if (gx#stx-pair?
                                                  _tl136194136219_)
                                                 (let ((_e136199136222_
                                                        (gx#syntax-e
                                                         _tl136194136219_)))
                                                   (let ((_hd136198136226_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e136199136222_)))
                                                         (_tl136197136229_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e136199136222_))))
                                                     (if (gx#stx-null?
                                                          _tl136197136229_)
                                                         ((lambda (_L136232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L136234_)
                    (let ()
                      (let ((__tmp141024 (gx#datum->syntax '#f 'let))
                            (__tmp141019
                             (let ((__tmp141021
                                    (let ((__tmp141022
                                           (let ((__tmp141023
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L136234_ '()))))
                                             (declare (not safe))
                                             (cons _L136232_ __tmp141023))))
                                      (declare (not safe))
                                      (cons __tmp141022 '())))
                                   (__tmp141020
                                    (let ()
                                      (declare (not safe))
                                      (cons _K136089_ '()))))
                               (declare (not safe))
                               (cons __tmp141021 __tmp141020))))
                        (declare (not safe))
                        (cons __tmp141024 __tmp141019))))
                  _hd136198136226_
                  _hd136195136216_)
                 (_g136190136205_ _g136191136209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g136190136205_
                                                  _g136191136209_))))
                                         (_g136190136205_ _g136191136209_)))))
                             (_g136189136249_ (list _tgt136088_ _hd136086_)))))
                   (if (gx#stx-null? _hd136086_)
                       (let* ((_g136253136261_
                               (lambda (_g136254136257_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g136254136257_)))
                              (_g136252136279_
                               (lambda (_g136254136265_)
                                 ((lambda (_L136268_)
                                    (let ()
                                      (let ((__tmp141018
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp141012
                                             (let ((__tmp141015
                                                    (let ((__tmp141017
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp141016
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L136268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp141017 __tmp141016)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141013
                                                    (let ((__tmp141014
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E136081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K136089_ __tmp141014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp141015
                                                     __tmp141013))))
                                        (declare (not safe))
                                        (cons __tmp141018 __tmp141012))))
                                  _g136254136265_))))
                         (_g136252136279_ _tgt136088_))
                       (if (gx#stx-datum? _hd136086_)
                           (let* ((_g136283136302_
                                   (lambda (_g136284136298_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g136284136298_)))
                                  (_g136282136360_
                                   (lambda (_g136284136306_)
                                     (if (gx#stx-pair? _g136284136306_)
                                         (let ((_e136290136309_
                                                (gx#syntax-e _g136284136306_)))
                                           (let ((_hd136289136313_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e136290136309_)))
                                                 (_tl136288136316_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e136290136309_))))
                                             (if (gx#stx-pair?
                                                  _tl136288136316_)
                                                 (let ((_e136293136319_
                                                        (gx#syntax-e
                                                         _tl136288136316_)))
                                                   (let ((_hd136292136323_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e136293136319_)))
                                                         (_tl136291136326_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e136293136319_))))
                                                     (if (gx#stx-pair?
                                                          _tl136291136326_)
                                                         (let ((_e136296136329_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl136291136326_)))
                   (let ((_hd136295136333_
                          (let ()
                            (declare (not safe))
                            (##car _e136296136329_)))
                         (_tl136294136336_
                          (let ()
                            (declare (not safe))
                            (##cdr _e136296136329_))))
                     (if (gx#stx-null? _tl136294136336_)
                         ((lambda (_L136339_ _L136341_ _L136342_)
                            (let ()
                              (let ((__tmp141011 (gx#datum->syntax '#f 'if))
                                    (__tmp140999
                                     (let ((__tmp141002
                                            (let ((__tmp141003
                                                   (let ((__tmp141008
                                                          (let ((__tmp141010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp141009
                         (let () (declare (not safe)) (cons _L136342_ '()))))
                    (declare (not safe))
                    (cons __tmp141010 __tmp141009)))
                 (__tmp141004
                  (let ((__tmp141005
                         (let ((__tmp141007 (gx#datum->syntax '#f 'quote))
                               (__tmp141006
                                (let ()
                                  (declare (not safe))
                                  (cons _L136341_ '()))))
                           (declare (not safe))
                           (cons __tmp141007 __tmp141006))))
                    (declare (not safe))
                    (cons __tmp141005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp141008
                                                           __tmp141004))))
                                              (declare (not safe))
                                              (cons _L136339_ __tmp141003)))
                                           (__tmp141000
                                            (let ((__tmp141001
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E136081_ '()))))
                                              (declare (not safe))
                                              (cons _K136089_ __tmp141001))))
                                       (declare (not safe))
                                       (cons __tmp141002 __tmp141000))))
                                (declare (not safe))
                                (cons __tmp141011 __tmp140999))))
                          _hd136295136333_
                          _hd136292136323_
                          _hd136289136313_)
                         (_g136283136302_ _g136284136306_))))
                 (_g136283136302_ _g136284136306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g136283136302_
                                                  _g136284136306_))))
                                         (_g136283136302_ _g136284136306_)))))
                             (_g136282136360_
                              (list _tgt136088_
                                    _hd136086_
                                    (let ((_e136364_ (gx#stx-e _hd136086_)))
                                      (if (or (keyword? _e136364_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e136364_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e136364_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx135531_
                            _where136076_
                            _hd136086_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx140863140864_)
                                                    (let ((_e136098136378_
                                                           (gx#syntax-e
                                                            ___stx140863140864_)))
                                                      (let ((_tl136096136385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e136098136378_)))
                    (_hd136097136382_
                     (let () (declare (not safe)) (##car _e136098136378_))))
                (___kont140866140867_ _tl136096136385_ _hd136097136382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont140868140869_)))))))
                                  (_recur136083_
                                   _hd136078_
                                   _tgt135683_
                                   (let ((__tmp141047
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp141044
                                          (let ((__tmp141045
                                                 (let ((__tmp141046
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E136081_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body136080_
                                                         __tmp141046))))
                                            (declare (not safe))
                                            (cons _fender136079_
                                                  __tmp141045))))
                                     (declare (not safe))
                                     (cons __tmp141047 __tmp141044))))))
                             (_generate-clauses135691_
                              (lambda (_clauses135814_)
                                (let _lp135817_ ((_rest135820_ _clauses135814_)
                                                 (_E135822_ (gx#genident 'E))
                                                 (_r135823_ '()))
                                  (let* ((___stx140899140900_ _rest135820_)
                                         (_g135826135838_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx140899140900_))))
                                    (let ((___kont140902140903_
                                           (lambda (_L135903_ _L135905_)
                                             (let* ((___stx140879140880_
                                                     _L135905_)
                                                    (_g135917135928_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx140879140880_))))
                                               (let ((___kont140882140883_
                                                      (lambda (_L136057_)
                                                        (if (gx#stx-null?
                                                             _L135903_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L136057_)
                             (let ((__tmp141056 (gx#stx-null? _L136057_)))
                               (declare (not safe))
                               (not __tmp141056)))
                        (let ((__tmp141048
                               (let ((__tmp141049
                                      (let ((__tmp141050
                                             (gx#stx-wrap-source
                                              (let ((__tmp141055
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp141051
                                                     (let ((__tmp141052
                                                            (let ((__tmp141053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp141054 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp141054 _L136057_))))
                      (declare (not safe))
                      (cons __tmp141053 '()))))
               (declare (not safe))
               (cons '() __tmp141052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp141055 __tmp141051))
                                              (gx#stx-source _L135905_))))
                                        (declare (not safe))
                                        (cons __tmp141050 '()))))
                                 (declare (not safe))
                                 (cons _E135822_ __tmp141049))))
                          (declare (not safe))
                          (cons __tmp141048 _r135823_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx135531_
                         _L135905_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx135531_
                     _L135905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont140884140885_
                                                      (lambda ()
                                                        (let* ((_g135939135947_
                                                                (lambda (_g135940135943_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g135940135943_)))
                       (_g135938136036_
                        (lambda (_g135940135951_)
                          ((lambda (_L135954_)
                             (let ()
                               (let* ((_g135970135978_
                                       (lambda (_g135971135974_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g135971135974_)))
                                      (_g135969136032_
                                       (lambda (_g135971135982_)
                                         ((lambda (_L135985_)
                                            (let ()
                                              (let* ((_g135998136006_
                                                      (lambda (_g135999136002_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g135999136002_)))
                                                     (_g135997136028_
                                                      (lambda (_g135999136010_)
                                                        ((lambda (_L136013_)
                                                           (let ()
                                                             (let ()
                                                               (_lp135817_
                                                                _L135903_
                                                                _L135954_
                                                                (let ((__tmp141057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp141058
                                      (let ()
                                        (declare (not safe))
                                        (cons _L136013_ '()))))
                                 (declare (not safe))
                                 (cons _E135822_ __tmp141058))))
                          (declare (not safe))
                          (cons __tmp141057 _r135823_))))))
                 _g135999136010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g135997136028_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp141061
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp141059
                                                         (let ((__tmp141060
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L135985_ '()))))
                   (declare (not safe))
                   (cons '() __tmp141060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp141061
                                                          __tmp141059))
                                                  (gx#stx-source
                                                   _L135905_))))))
                                          _g135971135982_))))
                                 (_g135969136032_
                                  (_generate-clause135688_
                                   _L135905_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L135954_ '())))))))
                           _g135940135951_))))
                  (_g135938136036_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx140879140880_)
                                                     (let ((_e135922136047_
                                                            (gx#syntax-e
                                                             ___stx140879140880_)))
                                                       (let ((_tl135920136054_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e135922136047_)))
                     (_hd135921136051_
                      (let () (declare (not safe)) (##car _e135922136047_))))
                 (if (gx#identifier? _hd135921136051_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g141062_|
                          _hd135921136051_)
                         (___kont140882140883_ _tl135920136054_)
                         (___kont140884140885_))
                     (___kont140884140885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont140884140885_))))))
                                          (___kont140904140905_
                                           (lambda ()
                                             (let* ((_g135849135857_
                                                     (lambda (_g135850135853_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g135850135853_)))
                                                    (_g135848135882_
                                                     (lambda (_g135850135861_)
                                                       ((lambda (_L135864_)
                                                          (let ()
                                                            (let ((__tmp141063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp141064
                                  (let ((__tmp141065
                                         (gx#stx-wrap-source
                                          (let ((__tmp141073
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp141066
                                                 (let ((__tmp141067
                                                        (let ((__tmp141068
                                                               (let ((__tmp141072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp141069
                              (let ((__tmp141070
                                     (let ((__tmp141071
                                            (let ()
                                              (declare (not safe))
                                              (cons _L135864_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp141071))))
                                (declare (not safe))
                                (cons '#f __tmp141070))))
                         (declare (not safe))
                         (cons __tmp141072 __tmp141069))))
                  (declare (not safe))
                  (cons __tmp141068 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp141067))))
                                            (declare (not safe))
                                            (cons __tmp141073 __tmp141066))
                                          (gx#stx-source _stx135531_))))
                                    (declare (not safe))
                                    (cons __tmp141065 '()))))
                             (declare (not safe))
                             (cons _E135822_ __tmp141064))))
                      (declare (not safe))
                      (cons __tmp141063 _r135823_))))
                _g135850135861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g135848135882_
                                                _tgt135683_)))))
                                      (if (gx#stx-pair? ___stx140899140900_)
                                          (let ((_e135832135893_
                                                 (gx#syntax-e
                                                  ___stx140899140900_)))
                                            (let ((_tl135830135900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e135832135893_)))
                                                  (_hd135831135897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e135832135893_))))
                                              (___kont140902140903_
                                               _tl135830135900_
                                               _hd135831135897_)))
                                          (___kont140904140905_))))))))
                      (let* ((_bind135693_
                              (_generate-clauses135691_ _clauses135686_))
                             (_g135696135713_
                              (lambda (_g135697135709_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g135697135709_)))
                             (_g135695135810_
                              (lambda (_g135697135717_)
                                (if (gx#stx-pair/null? _g135697135717_)
                                    (let ((_g141074_
                                           (gx#syntax-split-splice
                                            _g135697135717_
                                            '0)))
                                      (begin
                                        (let ((_g141075_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g141074_)
                                                     (##vector-length
                                                      _g141074_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g141075_ 2)))
                                              (error "Context expects 2 values"
                                                     _g141075_)))
                                        (let ((_target135699135720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g141074_ 0)))
                                              (_tl135701135723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g141074_ 1))))
                                          (if (gx#stx-null? _tl135701135723_)
                                              (letrec ((_loop135702135726_
                                                        (lambda (_hd135700135730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try135706135733_)
                  (if (gx#stx-pair? _hd135700135730_)
                      (let ((_e135703135736_ (gx#syntax-e _hd135700135730_)))
                        (let ((_lp-hd135704135740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135703135736_)))
                              (_lp-tl135705135743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135703135736_))))
                          (_loop135702135726_
                           _lp-tl135705135743_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd135704135740_
                                   _bind-try135706135733_)))))
                      (let ((_bind-try135707135746_
                             (reverse _bind-try135706135733_)))
                        ((lambda (_L135750_)
                           (let ()
                             (let* ((_g135768135776_
                                     (lambda (_g135769135772_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g135769135772_)))
                                    (_g135767135806_
                                     (lambda (_g135769135780_)
                                       ((lambda (_L135783_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp141081
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp141076
                                                     (let ((__tmp141079
                                                            (let ((__tmp141080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g135797135800_ _g135798135803_)
                             (let ()
                               (declare (not safe))
                               (cons _g135797135800_ _g135798135803_)))))
                      (declare (not safe))
                      (foldr1 __tmp141080 '() _L135750_)))
                   (__tmp141077
                    (let ((__tmp141078
                           (let () (declare (not safe)) (cons _L135783_ '()))))
                      (declare (not safe))
                      (cons __tmp141078 '()))))
               (declare (not safe))
               (cons __tmp141079 __tmp141077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp141081
                                                      __tmp141076)))))
                                        _g135769135780_))))
                               (_g135767135806_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind135693_)))))))
                         _bind-try135707135746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop135702135726_
                                                 _target135699135720_
                                                 '()))
                                              (_g135696135713_
                                               _g135697135717_)))))
                                    (_g135696135713_ _g135697135717_)))))
                        (_g135695135810_ _bind135693_))))))
          (let* ((_g135537135556_
                  (lambda (_g135538135552_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g135538135552_)))
                 (_g135536135679_
                  (lambda (_g135538135560_)
                    (if (gx#stx-pair? _g135538135560_)
                        (let ((_e135544135563_ (gx#syntax-e _g135538135560_)))
                          (let ((_hd135543135567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e135544135563_)))
                                (_tl135542135570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e135544135563_))))
                            (if (gx#stx-pair? _tl135542135570_)
                                (let ((_e135547135573_
                                       (gx#syntax-e _tl135542135570_)))
                                  (let ((_hd135546135577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135547135573_)))
                                        (_tl135545135580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135547135573_))))
                                    (if (gx#stx-pair? _tl135545135580_)
                                        (let ((_e135550135583_
                                               (gx#syntax-e _tl135545135580_)))
                                          (let ((_hd135549135587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135550135583_)))
                                                (_tl135548135590_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135550135583_))))
                                            ((lambda (_L135593_
                                                      _L135595_
                                                      _L135596_)
                                               (if (and (gx#identifier-list?
                                                         _L135595_)
                                                        (gx#stx-list?
                                                         _L135593_))
                                                   (let* ((_g135614135622_
                                                           (lambda (_g135615135618_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g135615135618_)))
                                                          (_g135613135675_
                                                           (lambda (_g135615135626_)
                                                             ((lambda (_L135629_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g135641135649_
                                  (lambda (_g135642135645_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g135642135645_)))
                                 (_g135640135671_
                                  (lambda (_g135642135653_)
                                    ((lambda (_L135656_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp141087
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp141082
                                                  (let ((__tmp141084
                                                         (let ((__tmp141085
                                                                (let ((__tmp141086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L135596_ '()))))
                          (declare (not safe))
                          (cons _L135629_ __tmp141086))))
                   (declare (not safe))
                   (cons __tmp141085 '())))
                (__tmp141083
                 (let () (declare (not safe)) (cons _L135656_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp141084
                                                          __tmp141083))))
                                             (declare (not safe))
                                             (cons __tmp141087 __tmp141082)))))
                                     _g135642135653_))))
                            (_g135640135671_
                             (_generate135534_
                              _L135629_
                              (gx#syntax->list _L135595_)
                              _L135593_)))))
                      _g135615135626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135613135675_
                                                      (gx#genident 'e)))
                                                   (_g135537135556_
                                                    _g135538135560_)))
                                             _tl135548135590_
                                             _hd135549135587_
                                             _hd135546135577_)))
                                        (_g135537135556_ _g135538135560_))))
                                (_g135537135556_ _g135538135560_))))
                        (_g135537135556_ _g135538135560_)))))
            (_g135536135679_ _stx135531_)))))))
