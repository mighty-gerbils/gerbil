(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g18086_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18097_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18099_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18101_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18103_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18109_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18111_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18113_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18115_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18117_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18119_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18121_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18132_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18134_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18136_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18138_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18144_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18146_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18148_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18150_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18152_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g18154_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx4808_)
        (let* ((___stx1561315614_ _$stx4808_)
               (_g48144894_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1561315614_)))))
          (let ((___kont1561615617_
                 (lambda (_L5191_ _L5193_ _L5194_ _L5195_)
                   (let ((__tmp17862
                          (let ((__tmp17863
                                 (let ((__tmp17864
                                        (let ()
                                          (declare (not safe))
                                          (cons _L5193_ '()))))
                                   (declare (not safe))
                                   (cons __tmp17864 _L5191_))))
                            (declare (not safe))
                            (cons _L5194_ __tmp17863))))
                     (declare (not safe))
                     (cons _L5195_ __tmp17862))))
                (___kont1561815619_
                 (lambda (_L5103_ _L5105_ _L5106_ _L5107_)
                   (let ((__tmp17901
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'define)))
                         (__tmp17865
                          (let ((__tmp17866
                                 (let ((__tmp17867
                                        (let ((__tmp17900
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'delay)))
                                              (__tmp17868
                                               (let ((__tmp17869
                                                      (let ((__tmp17899
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'let)))
                    (__tmp17870
                     (let ((__tmp17894
                            (let ((__tmp17898
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'tbl)))
                                  (__tmp17895
                                   (let ((__tmp17896
                                          (let ((__tmp17897
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-hash-table-eq))))
                                            (declare (not safe))
                                            (cons __tmp17897 '()))))
                                     (declare (not safe))
                                     (cons __tmp17896 '()))))
                              (declare (not safe))
                              (cons __tmp17898 __tmp17895)))
                           (__tmp17871
                            (let ((__tmp17885
                                   (lambda (_g51345140_ _g51355143_)
                                     (let ((__tmp17886
                                            (let ((__tmp17893
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-copy!)))
                                                  (__tmp17887
                                                   (let ((__tmp17892
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'tbl)))
                                                         (__tmp17888
                                                          (let ((__tmp17889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17891
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'force)))
                               (__tmp17890
                                (let ()
                                  (declare (not safe))
                                  (cons _g51345140_ '()))))
                           (declare (not safe))
                           (cons __tmp17891 __tmp17890))))
                    (declare (not safe))
                    (cons __tmp17889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17892
                                                           __tmp17888))))
                                              (declare (not safe))
                                              (cons __tmp17893 __tmp17887))))
                                       (declare (not safe))
                                       (cons __tmp17886 _g51355143_))))
                                  (__tmp17872
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L5103_
                                        _L5105_))
                                     (let ((__tmp17875
                                            (lambda (_g51365146_
                                                     _g51375149_
                                                     _g51385151_)
                                              (let ((__tmp17876
                                                     (let ((__tmp17884
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'hash-put!)))
                                                           (__tmp17877
                                                            (let ((__tmp17883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'tbl)))
                          (__tmp17878
                           (let ((__tmp17880
                                  (let ((__tmp17882
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp17881
                                         (let ()
                                           (declare (not safe))
                                           (cons _g51375149_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17882 __tmp17881)))
                                 (__tmp17879
                                  (let ()
                                    (declare (not safe))
                                    (cons _g51365146_ '()))))
                             (declare (not safe))
                             (cons __tmp17880 __tmp17879))))
                      (declare (not safe))
                      (cons __tmp17883 __tmp17878))))
               (declare (not safe))
               (cons __tmp17884 __tmp17877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17876
                                                      _g51385151_))))
                                           (__tmp17873
                                            (let ((__tmp17874
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'tbl))))
                                              (declare (not safe))
                                              (cons __tmp17874 '()))))
                                       (declare (not safe))
                                       (foldr2 __tmp17875
                                               __tmp17873
                                               _L5103_
                                               _L5105_)))))
                              (declare (not safe))
                              (foldr1 __tmp17885 __tmp17872 _L5106_))))
                       (declare (not safe))
                       (cons __tmp17894 __tmp17871))))
                (declare (not safe))
                (cons __tmp17899 __tmp17870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17869 '()))))
                                          (declare (not safe))
                                          (cons __tmp17900 __tmp17868))))
                                   (declare (not safe))
                                   (cons __tmp17867 '()))))
                            (declare (not safe))
                            (cons _L5107_ __tmp17866))))
                     (declare (not safe))
                     (cons __tmp17901 __tmp17865))))
                (___kont1562415625_
                 (lambda (_L4941_ _L4943_ _L4944_ _L4945_ _L4946_)
                   (let ((__tmp17935
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp17902
                          (let ((__tmp17931
                                 (let ((__tmp17932
                                        (let ((__tmp17933
                                               (let ((__tmp17934
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L4944_
                                                              _L4943_))))
                                                 (declare (not safe))
                                                 (cons __tmp17934 _L4941_))))
                                          (declare (not safe))
                                          (cons '#f __tmp17933))))
                                   (declare (not safe))
                                   (cons _L4946_ __tmp17932)))
                                (__tmp17903
                                 (let ((__tmp17904
                                        (let ((__tmp17930
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'define)))
                                              (__tmp17905
                                               (let ((__tmp17926
                                                      (let ((__tmp17927
                                                             (let ((__tmp17929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'stx)))
                           (__tmp17928
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'args))))
                       (declare (not safe))
                       (cons __tmp17929 __tmp17928))))
                (declare (not safe))
                (cons _L4945_ __tmp17927)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17906
                                                      (let ((__tmp17907
                                                             (let ((__tmp17925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'parameterize)))
                           (__tmp17908
                            (let ((__tmp17918
                                   (let ((__tmp17919
                                          (let ((__tmp17924
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'current-compile-methods)))
                                                (__tmp17920
                                                 (let ((__tmp17921
                                                        (let ((__tmp17923
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'force)))
                      (__tmp17922
                       (let () (declare (not safe)) (cons _L4944_ '()))))
                  (declare (not safe))
                  (cons __tmp17923 __tmp17922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17921 '()))))
                                            (declare (not safe))
                                            (cons __tmp17924 __tmp17920))))
                                     (declare (not safe))
                                     (cons __tmp17919 '())))
                                  (__tmp17909
                                   (let ((__tmp17910
                                          (let ((__tmp17917
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'apply)))
                                                (__tmp17911
                                                 (let ((__tmp17916
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'compile-e)))
                                                       (__tmp17912
                                                        (let ((__tmp17915
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'stx)))
                      (__tmp17913
                       (let ((__tmp17914
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'args))))
                         (declare (not safe))
                         (cons __tmp17914 '()))))
                  (declare (not safe))
                  (cons __tmp17915 __tmp17913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17916
                                                         __tmp17912))))
                                            (declare (not safe))
                                            (cons __tmp17917 __tmp17911))))
                                     (declare (not safe))
                                     (cons __tmp17910 '()))))
                              (declare (not safe))
                              (cons __tmp17918 __tmp17909))))
                       (declare (not safe))
                       (cons __tmp17925 __tmp17908))))
                (declare (not safe))
                (cons __tmp17907 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17926
                                                       __tmp17906))))
                                          (declare (not safe))
                                          (cons __tmp17930 __tmp17905))))
                                   (declare (not safe))
                                   (cons __tmp17904 '()))))
                            (declare (not safe))
                            (cons __tmp17931 __tmp17903))))
                     (declare (not safe))
                     (cons __tmp17935 __tmp17902)))))
            (let* ((___match1570615707_
                    (lambda (_e48794901_
                             _hd48784905_
                             _tl48774908_
                             _e48824911_
                             _hd48814915_
                             _tl48804918_
                             _e48854921_
                             _hd48844925_
                             _tl48834928_
                             _e48884931_
                             _hd48874935_
                             _tl48864938_)
                      (let ((_L4941_ _tl48834928_)
                            (_L4943_ _tl48864938_)
                            (_L4944_ _hd48874935_)
                            (_L4945_ _hd48814915_)
                            (_L4946_ _hd48784905_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L4945_))
                            (___kont1562415625_
                             _L4941_
                             _L4943_
                             _L4944_
                             _L4945_
                             _L4946_)
                            (let () (declare (not safe)) (_g48144894_))))))
                   (___match1568215683_
                    (lambda (_e48354975_
                             _hd48344979_
                             _tl48334982_
                             _e48384985_
                             _hd48374989_
                             _tl48364992_
                             _e48394995_
                             _e48424999_
                             _hd48415003_
                             _tl48405006_
                             _e48455009_
                             _hd48445013_
                             _tl48435016_
                             ___splice1562015621_
                             _target48465019_
                             _tl48485022_)
                      (letrec ((_loop48495025_
                                (lambda (_hd48475029_ _super48535032_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd48475029_))
                                      (let ((_e48505035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd48475029_))))
                                        (let ((_lp-tl48525042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48505035_)))
                                              (_lp-hd48515039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48505035_))))
                                          (_loop48495025_
                                           _lp-tl48525042_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd48515039_
                                                   _super48535032_)))))
                                      (let ((_super48545045_
                                             (let ()
                                               (declare (not safe))
                                               (reverse _super48535032_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null? _tl48405006_))
                                            (let ((___splice1562215623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl48405006_
                                                      '0))))
                                              (let ((_tl48575052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1562215623_
                                                        '1)))
                                                    (_target48555049_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1562215623_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl48575052_))
                                                    (letrec ((_loop48585055_
                                                              (lambda (_hd48565059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method48625062_
                               _symbol48635064_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd48565059_))
                            (let ((_e48595067_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _hd48565059_))))
                              (let ((_lp-tl48615074_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e48595067_)))
                                    (_lp-hd48605071_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e48595067_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _lp-hd48605071_))
                                    (let ((_e48685077_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _lp-hd48605071_))))
                                      (let ((_tl48665084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48685077_)))
                                            (_hd48675081_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48685077_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl48665084_))
                                            (let ((_e48715087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl48665084_))))
                                              (let ((_tl48695094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e48715087_)))
                                                    (_hd48705091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e48715087_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl48695094_))
                                                    (_loop48585055_
                                                     _lp-tl48615074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd48705091_
                                                             _method48625062_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd48675081_
                                                             _symbol48635064_)))
                                                    (___match1570615707_
                                                     _e48354975_
                                                     _hd48344979_
                                                     _tl48334982_
                                                     _e48384985_
                                                     _hd48374989_
                                                     _tl48364992_
                                                     _e48424999_
                                                     _hd48415003_
                                                     _tl48405006_
                                                     _e48455009_
                                                     _hd48445013_
                                                     _tl48435016_))))
                                            (___match1570615707_
                                             _e48354975_
                                             _hd48344979_
                                             _tl48334982_
                                             _e48384985_
                                             _hd48374989_
                                             _tl48364992_
                                             _e48424999_
                                             _hd48415003_
                                             _tl48405006_
                                             _e48455009_
                                             _hd48445013_
                                             _tl48435016_))))
                                    (___match1570615707_
                                     _e48354975_
                                     _hd48344979_
                                     _tl48334982_
                                     _e48384985_
                                     _hd48374989_
                                     _tl48364992_
                                     _e48424999_
                                     _hd48415003_
                                     _tl48405006_
                                     _e48455009_
                                     _hd48445013_
                                     _tl48435016_))))
                            (let ((_symbol48655100_
                                   (let ()
                                     (declare (not safe))
                                     (reverse _symbol48635064_)))
                                  (_method48645097_
                                   (let ()
                                     (declare (not safe))
                                     (reverse _method48625062_))))
                              (___kont1561815619_
                               _method48645097_
                               _symbol48655100_
                               _super48545045_
                               _hd48445013_))))))
              (_loop48585055_ _target48555049_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1570615707_
                                                     _e48354975_
                                                     _hd48344979_
                                                     _tl48334982_
                                                     _e48384985_
                                                     _hd48374989_
                                                     _tl48364992_
                                                     _e48424999_
                                                     _hd48415003_
                                                     _tl48405006_
                                                     _e48455009_
                                                     _hd48445013_
                                                     _tl48435016_))))
                                            (___match1570615707_
                                             _e48354975_
                                             _hd48344979_
                                             _tl48334982_
                                             _e48384985_
                                             _hd48374989_
                                             _tl48364992_
                                             _e48424999_
                                             _hd48415003_
                                             _tl48405006_
                                             _e48455009_
                                             _hd48445013_
                                             _tl48435016_)))))))
                        (_loop48495025_ _target48465019_ '()))))
                   (___match1564415645_
                    (lambda (_e48225161_
                             _hd48215165_
                             _tl48205168_
                             _e48255171_
                             _hd48245175_
                             _tl48235178_
                             _e48285181_
                             _hd48275185_
                             _tl48265188_)
                      (let ((_L5191_ _tl48265188_)
                            (_L5193_ _hd48275185_)
                            (_L5194_ _hd48245175_)
                            (_L5195_ _hd48215165_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L5193_))
                            (___kont1561615617_
                             _L5191_
                             _L5193_
                             _L5194_
                             _L5195_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd48245175_))
                                (let ((_e48394995_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd48245175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e48394995_ '#f))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd48275185_))
                                          (let ((_e48455009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd48275185_))))
                                            (let ((_tl48435016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48455009_)))
                                                  (_hd48445013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48455009_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl48435016_))
                                                  (let ((___splice1562015621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl48435016_
                                                            '0))))
                                                    (let ((_tl48485022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1562015621_
                                                              '1)))
                                                          (_target48465019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1562015621_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl48485022_))
                                                          (___match1568215683_
                                                           _e48225161_
                                                           _hd48215165_
                                                           _tl48205168_
                                                           _e48255171_
                                                           _hd48245175_
                                                           _tl48235178_
                                                           _e48394995_
                                                           _e48285181_
                                                           _hd48275185_
                                                           _tl48265188_
                                                           _e48455009_
                                                           _hd48445013_
                                                           _tl48435016_
                                                           ___splice1562015621_
                                                           _target48465019_
                                                           _tl48485022_)
                                                          (___match1570615707_
                                                           _e48225161_
                                                           _hd48215165_
                                                           _tl48205168_
                                                           _e48255171_
                                                           _hd48245175_
                                                           _tl48235178_
                                                           _e48285181_
                                                           _hd48275185_
                                                           _tl48265188_
                                                           _e48455009_
                                                           _hd48445013_
                                                           _tl48435016_))))
                                                  (___match1570615707_
                                                   _e48225161_
                                                   _hd48215165_
                                                   _tl48205168_
                                                   _e48255171_
                                                   _hd48245175_
                                                   _tl48235178_
                                                   _e48285181_
                                                   _hd48275185_
                                                   _tl48265188_
                                                   _e48455009_
                                                   _hd48445013_
                                                   _tl48435016_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g48144894_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd48275185_))
                                          (let ((_e48884931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd48275185_))))
                                            (let ((_tl48864938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48884931_)))
                                                  (_hd48874935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48884931_))))
                                              (___match1570615707_
                                               _e48225161_
                                               _hd48215165_
                                               _tl48205168_
                                               _e48255171_
                                               _hd48245175_
                                               _tl48235178_
                                               _e48285181_
                                               _hd48275185_
                                               _tl48265188_
                                               _e48884931_
                                               _hd48874935_
                                               _tl48864938_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g48144894_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd48275185_))
                                    (let ((_e48884931_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd48275185_))))
                                      (let ((_tl48864938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48884931_)))
                                            (_hd48874935_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48884931_))))
                                        (___match1570615707_
                                         _e48225161_
                                         _hd48215165_
                                         _tl48205168_
                                         _e48255171_
                                         _hd48245175_
                                         _tl48235178_
                                         _e48285181_
                                         _hd48275185_
                                         _tl48265188_
                                         _e48884931_
                                         _hd48874935_
                                         _tl48864938_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g48144894_)))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx1561315614_))
                  (let ((_e48225161_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx1561315614_))))
                    (let ((_tl48205168_
                           (let () (declare (not safe)) (##cdr _e48225161_)))
                          (_hd48215165_
                           (let () (declare (not safe)) (##car _e48225161_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl48205168_))
                          (let ((_e48255171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl48205168_))))
                            (let ((_tl48235178_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48255171_)))
                                  (_hd48245175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48255171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl48235178_))
                                  (let ((_e48285181_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl48235178_))))
                                    (let ((_tl48265188_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e48285181_)))
                                          (_hd48275185_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e48285181_))))
                                      (___match1564415645_
                                       _e48225161_
                                       _hd48215165_
                                       _tl48205168_
                                       _e48255171_
                                       _hd48245175_
                                       _tl48235178_
                                       _e48285181_
                                       _hd48275185_
                                       _tl48265188_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd48245175_))
                                      (let ((_e48394995_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd48245175_))))
                                        (declare (not safe))
                                        (_g48144894_))
                                      (let ()
                                        (declare (not safe))
                                        (_g48144894_))))))
                          (let () (declare (not safe)) (_g48144894_)))))
                  (let () (declare (not safe)) (_g48144894_))))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx5218_)
        (let* ((_g52225257_
                (lambda (_g52235253_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g52235253_))))
               (_g52215382_
                (lambda (_g52235261_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g52235261_))
                      (let ((_e52305264_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g52235261_))))
                        (let ((_hd52295268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52305264_)))
                              (_tl52285271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52305264_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl52285271_))
                              (let ((_e52335274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl52285271_))))
                                (let ((_hd52325278_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52335274_)))
                                      (_tl52315281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52335274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd52325278_))
                                      (let ((_e52365284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _hd52325278_))))
                                        (let ((_hd52355288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52365284_)))
                                              (_tl52345291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52365284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl52345291_))
                                              (let ((_e52395294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl52345291_))))
                                                (let ((_hd52385298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e52395294_)))
                                                      (_tl52375301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e52395294_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl52375301_))
                                                      (let ((_e52425304_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl52375301_))))
                (let ((_hd52415308_
                       (let () (declare (not safe)) (##car _e52425304_)))
                      (_tl52405311_
                       (let () (declare (not safe)) (##cdr _e52425304_))))
                  (if (let () (declare (not safe)) (gx#stx-null? _tl52405311_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl52315281_))
                          (let ((_g17936_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice _tl52315281_ '0))))
                            (begin
                              (let ((_g17937_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g17936_)
                                           (##vector-length _g17936_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g17937_ 2)))
                                    (error "Context expects 2 values"
                                           _g17937_)))
                              (let ((_target52435314_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g17936_ 0)))
                                    (_tl52455317_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g17936_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl52455317_))
                                    (letrec ((_loop52465320_
                                              (lambda (_hd52445324_
                                                       _body52505327_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd52445324_))
                                                    (let ((_e52475330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _hd52445324_))))
                                                      (let ((_lp-hd52485334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e52475330_)))
                    (_lp-tl52495337_
                     (let () (declare (not safe)) (##cdr _e52475330_))))
                (_loop52465320_
                 _lp-tl52495337_
                 (let ()
                   (declare (not safe))
                   (cons _lp-hd52485334_ _body52505327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body52515340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (reverse _body52505327_))))
                                                      ((lambda (_L5344_
                                                                _L5346_
                                                                _L5347_
                                                                _L5348_)
                                                         (let ((__tmp18069
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let)))
                       (__tmp17938
                        (let ((__tmp18068
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'lp)))
                              (__tmp17939
                               (let ((__tmp18054
                                      (let ((__tmp18065
                                             (let ((__tmp18067
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest)))
                                                   (__tmp18066
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L5346_ '()))))
                                               (declare (not safe))
                                               (cons __tmp18067 __tmp18066)))
                                            (__tmp18055
                                             (let ((__tmp18061
                                                    (let ((__tmp18062
                                                           (let ((__tmp18063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18064
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))))
                            (declare (not safe))
                            (cons __tmp18064 '()))))
                     (declare (not safe))
                     (cons __tmp18063 '()))))
              (declare (not safe))
              (cons _L5348_ __tmp18062)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp18056
                                                    (let ((__tmp18057
                                                           (let ((__tmp18058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18059
                                 (let ((__tmp18060
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list))))
                                   (declare (not safe))
                                   (cons __tmp18060 '()))))
                            (declare (not safe))
                            (cons __tmp18059 '()))))
                     (declare (not safe))
                     (cons _L5347_ __tmp18058))))
              (declare (not safe))
              (cons __tmp18057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18061 __tmp18056))))
                                        (declare (not safe))
                                        (cons __tmp18065 __tmp18055)))
                                     (__tmp17940
                                      (let ((__tmp17941
                                             (let ((__tmp18053
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'match)))
                                                   (__tmp17942
                                                    (let ((__tmp18052
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'rest)))
                                                          (__tmp17943
                                                           (let ((__tmp17949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp18047
                                 (let ((__tmp18051
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@list)))
                                       (__tmp18048
                                        (let ((__tmp18050
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'e)))
                                              (__tmp18049
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))))
                                          (declare (not safe))
                                          (cons __tmp18050 __tmp18049))))
                                   (declare (not safe))
                                   (cons __tmp18051 __tmp18048)))
                                (__tmp17950
                                 (let ((__tmp17951
                                        (let ((__tmp18046
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'ast-case)))
                                              (__tmp17952
                                               (let ((__tmp18045
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'e)))
                                                     (__tmp17953
                                                      (let ((__tmp18041
                                                             (let ((__tmp18044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#quote)))
                           (__tmp18042
                            (let ((__tmp18043
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))))
                              (declare (not safe))
                              (cons __tmp18043 '()))))
                       (declare (not safe))
                       (cons __tmp18044 __tmp18042)))
                    (__tmp17954
                     (let ((__tmp18021
                            (let ((__tmp18037
                                   (let ((__tmp18040
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp18038
                                          (let ((__tmp18039
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_))))
                                            (declare (not safe))
                                            (cons __tmp18039 '()))))
                                     (declare (not safe))
                                     (cons __tmp18040 __tmp18038)))
                                  (__tmp18022
                                   (let ((__tmp18023
                                          (let ((__tmp18036
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'lp)))
                                                (__tmp18024
                                                 (let ((__tmp18035
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'rest)))
                                                       (__tmp18025
                                                        (let ((__tmp18026
                                                               (let ((__tmp18027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp18034
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'cons)))
                                    (__tmp18028
                                     (let ((__tmp18030
                                            (let ((__tmp18033
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'compile-e)))
                                                  (__tmp18031
                                                   (let ((__tmp18032
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'e))))
                                                     (declare (not safe))
                                                     (cons __tmp18032 '()))))
                                              (declare (not safe))
                                              (cons __tmp18033 __tmp18031)))
                                           (__tmp18029
                                            (let ()
                                              (declare (not safe))
                                              (cons _L5347_ '()))))
                                       (declare (not safe))
                                       (cons __tmp18030 __tmp18029))))
                                (declare (not safe))
                                (cons __tmp18034 __tmp18028))))
                         (declare (not safe))
                         (cons __tmp18027 '()))))
                  (declare (not safe))
                  (cons _L5348_ __tmp18026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18035
                                                         __tmp18025))))
                                            (declare (not safe))
                                            (cons __tmp18036 __tmp18024))))
                                     (declare (not safe))
                                     (cons __tmp18023 '()))))
                              (declare (not safe))
                              (cons __tmp18037 __tmp18022)))
                           (__tmp17955
                            (let ((__tmp18001
                                   (let ((__tmp18017
                                          (let ((__tmp18020
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#quote)))
                                                (__tmp18018
                                                 (let ((__tmp18019
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '_))))
                                                   (declare (not safe))
                                                   (cons __tmp18019 '()))))
                                            (declare (not safe))
                                            (cons __tmp18020 __tmp18018)))
                                         (__tmp18002
                                          (let ((__tmp18003
                                                 (let ((__tmp18016
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lp)))
                                                       (__tmp18004
                                                        (let ((__tmp18015
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'rest)))
                      (__tmp18005
                       (let ((__tmp18006
                              (let ((__tmp18007
                                     (let ((__tmp18014
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'cons)))
                                           (__tmp18008
                                            (let ((__tmp18010
                                                   (let ((__tmp18013
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'compile-e)))
                                                         (__tmp18011
                                                          (let ((__tmp18012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'e))))
                    (declare (not safe))
                    (cons __tmp18012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18013
                                                           __tmp18011)))
                                                  (__tmp18009
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L5347_ '()))))
                                              (declare (not safe))
                                              (cons __tmp18010 __tmp18009))))
                                       (declare (not safe))
                                       (cons __tmp18014 __tmp18008))))
                                (declare (not safe))
                                (cons __tmp18007 '()))))
                         (declare (not safe))
                         (cons _L5348_ __tmp18006))))
                  (declare (not safe))
                  (cons __tmp18015 __tmp18005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18016
                                                         __tmp18004))))
                                            (declare (not safe))
                                            (cons __tmp18003 '()))))
                                     (declare (not safe))
                                     (cons __tmp18017 __tmp18002)))
                                  (__tmp17956
                                   (let ((__tmp17957
                                          (let ((__tmp18000
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '_)))
                                                (__tmp17958
                                                 (let ((__tmp17959
                                                        (let ((__tmp17999
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let)))
                      (__tmp17960
                       (let ((__tmp17986
                              (let ((__tmp17998
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'tmp)))
                                    (__tmp17987
                                     (let ((__tmp17988
                                            (let ((__tmp17997
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-symbol)))
                                                  (__tmp17989
                                                   (let ((__tmp17990
                                                          (let ((__tmp17996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'gensym)))
                        (__tmp17991
                         (let ((__tmp17992
                                (let ((__tmp17995
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp17993
                                       (let ((__tmp17994
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '__tmp))))
                                         (declare (not safe))
                                         (cons __tmp17994 '()))))
                                  (declare (not safe))
                                  (cons __tmp17995 __tmp17993))))
                           (declare (not safe))
                           (cons __tmp17992 '()))))
                    (declare (not safe))
                    (cons __tmp17996 __tmp17991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17990 '()))))
                                              (declare (not safe))
                                              (cons __tmp17997 __tmp17989))))
                                       (declare (not safe))
                                       (cons __tmp17988 '()))))
                                (declare (not safe))
                                (cons __tmp17998 __tmp17987)))
                             (__tmp17961
                              (let ((__tmp17962
                                     (let ((__tmp17985
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'lp)))
                                           (__tmp17963
                                            (let ((__tmp17984
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'rest)))
                                                  (__tmp17964
                                                   (let ((__tmp17971
                                                          (let ((__tmp17983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'cons)))
                        (__tmp17972
                         (let ((__tmp17974
                                (let ((__tmp17982
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list)))
                                      (__tmp17975
                                       (let ((__tmp17981
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'tmp)))
                                             (__tmp17976
                                              (let ((__tmp17977
                                                     (let ((__tmp17980
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'compile-e)))
                                                           (__tmp17978
                                                            (let ((__tmp17979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'e))))
                      (declare (not safe))
                      (cons __tmp17979 '()))))
               (declare (not safe))
               (cons __tmp17980 __tmp17978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17977 '()))))
                                         (declare (not safe))
                                         (cons __tmp17981 __tmp17976))))
                                  (declare (not safe))
                                  (cons __tmp17982 __tmp17975)))
                               (__tmp17973
                                (let ()
                                  (declare (not safe))
                                  (cons _L5348_ '()))))
                           (declare (not safe))
                           (cons __tmp17974 __tmp17973))))
                    (declare (not safe))
                    (cons __tmp17983 __tmp17972)))
                 (__tmp17965
                  (let ((__tmp17966
                         (let ((__tmp17970
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'cons)))
                               (__tmp17967
                                (let ((__tmp17969
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'tmp)))
                                      (__tmp17968
                                       (let ()
                                         (declare (not safe))
                                         (cons _L5347_ '()))))
                                  (declare (not safe))
                                  (cons __tmp17969 __tmp17968))))
                           (declare (not safe))
                           (cons __tmp17970 __tmp17967))))
                    (declare (not safe))
                    (cons __tmp17966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17971
                                                           __tmp17965))))
                                              (declare (not safe))
                                              (cons __tmp17984 __tmp17964))))
                                       (declare (not safe))
                                       (cons __tmp17985 __tmp17963))))
                                (declare (not safe))
                                (cons __tmp17962 '()))))
                         (declare (not safe))
                         (cons __tmp17986 __tmp17961))))
                  (declare (not safe))
                  (cons __tmp17999 __tmp17960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17959 '()))))
                                            (declare (not safe))
                                            (cons __tmp18000 __tmp17958))))
                                     (declare (not safe))
                                     (cons __tmp17957 '()))))
                              (declare (not safe))
                              (cons __tmp18001 __tmp17956))))
                       (declare (not safe))
                       (cons __tmp18021 __tmp17955))))
                (declare (not safe))
                (cons __tmp18041 __tmp17954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp18045
                                                       __tmp17953))))
                                          (declare (not safe))
                                          (cons __tmp18046 __tmp17952))))
                                   (declare (not safe))
                                   (cons __tmp17951 '()))))
                            (declare (not safe))
                            (cons __tmp18047 __tmp17950)))
                         (__tmp17944
                          (let ((__tmp17945
                                 (let ((__tmp17948
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'else)))
                                       (__tmp17946
                                        (let ((__tmp17947
                                               (lambda (_g53735376_
                                                        _g53745379_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g53735376_
                                                         _g53745379_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp17947 '() _L5344_))))
                                   (declare (not safe))
                                   (cons __tmp17948 __tmp17946))))
                            (declare (not safe))
                            (cons __tmp17945 '()))))
                     (declare (not safe))
                     (cons __tmp17949 __tmp17944))))
              (declare (not safe))
              (cons __tmp18052 __tmp17943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp18053 __tmp17942))))
                                        (declare (not safe))
                                        (cons __tmp17941 '()))))
                                 (declare (not safe))
                                 (cons __tmp18054 __tmp17940))))
                          (declare (not safe))
                          (cons __tmp18068 __tmp17939))))
                   (declare (not safe))
                   (cons __tmp18069 __tmp17938)))
               _body52515340_
               _hd52415308_
               _hd52385298_
               _hd52355288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop52465320_ _target52435314_ '()))
                                    (_g52225257_ _g52235261_)))))
                          (_g52225257_ _g52235261_))
                      (_g52225257_ _g52235261_))))
              (_g52225257_ _g52235261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g52225257_ _g52235261_))))
                                      (_g52225257_ _g52235261_))))
                              (_g52225257_ _g52235261_))))
                      (_g52225257_ _g52235261_)))))
          (_g52215382_ _$stx5218_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx5387_)
        (let* ((_g53915409_
                (lambda (_g53925405_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g53925405_))))
               (_g53905464_
                (lambda (_g53925413_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g53925413_))
                      (let ((_e53975416_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g53925413_))))
                        (let ((_hd53965420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e53975416_)))
                              (_tl53955423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e53975416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl53955423_))
                              (let ((_e54005426_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl53955423_))))
                                (let ((_hd53995430_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e54005426_)))
                                      (_tl53985433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e54005426_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl53985433_))
                                      (let ((_e54035436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl53985433_))))
                                        (let ((_hd54025440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54035436_)))
                                              (_tl54015443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54035436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl54015443_))
                                              ((lambda (_L5446_ _L5448_)
                                                 (let ((__tmp18085
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'cond-expand)))
                                                       (__tmp18070
                                                        (let ((__tmp18082
                                                               (let ((__tmp18084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0
                                 '#f
                                 'gambit-inline-unsafe-primitives)))
                             (__tmp18083
                              (let ()
                                (declare (not safe))
                                (cons _L5448_ '()))))
                         (declare (not safe))
                         (cons __tmp18084 __tmp18083)))
                      (__tmp18071
                       (let ((__tmp18072
                              (let ((__tmp18081
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'else)))
                                    (__tmp18073
                                     (let ((__tmp18074
                                            (let ((__tmp18080
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'if)))
                                                  (__tmp18075
                                                   (let ((__tmp18078
                                                          (let ((__tmp18079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'current-compile-decls-unsafe?))))
                    (declare (not safe))
                    (cons __tmp18079 '())))
                 (__tmp18076
                  (let ((__tmp18077
                         (let () (declare (not safe)) (cons _L5446_ '()))))
                    (declare (not safe))
                    (cons _L5448_ __tmp18077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp18078
                                                           __tmp18076))))
                                              (declare (not safe))
                                              (cons __tmp18080 __tmp18075))))
                                       (declare (not safe))
                                       (cons __tmp18074 '()))))
                                (declare (not safe))
                                (cons __tmp18081 __tmp18073))))
                         (declare (not safe))
                         (cons __tmp18072 '()))))
                  (declare (not safe))
                  (cons __tmp18082 __tmp18071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18085
                                                         __tmp18070)))
                                               _hd54025440_
                                               _hd53995430_)
                                              (_g53915409_ _g53925413_))))
                                      (_g53915409_ _g53925413_))))
                              (_g53915409_ _g53925413_))))
                      (_g53915409_ _g53925413_)))))
          (_g53905464_ _$stx5387_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18086_|
       'expander-identifiers:
       (let ((__tmp18087
              (let ((__tmp18120 |gxc[1]#_g18086_|)
                    (__tmp18088
                     (let ((__tmp18118 |gxc[1]#_g18119_|)
                           (__tmp18089
                            (let ((__tmp18116 |gxc[1]#_g18117_|)
                                  (__tmp18090
                                   (let ((__tmp18104
                                          (let ((__tmp18114 |gxc[1]#_g18115_|)
                                                (__tmp18105
                                                 (let ((__tmp18112
                                                        |gxc[1]#_g18113_|)
                                                       (__tmp18106
                                                        (let ((__tmp18110
                                                               |gxc[1]#_g18111_|)
                                                              (__tmp18107
                                                               (let ((__tmp18108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18109_|))
                         (declare (not safe))
                         (cons __tmp18108 '()))))
                  (declare (not safe))
                  (cons __tmp18110 __tmp18107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18112
                                                         __tmp18106))))
                                            (declare (not safe))
                                            (cons __tmp18114 __tmp18105)))
                                         (__tmp18091
                                          (let ((__tmp18092
                                                 (let ((__tmp18102
                                                        |gxc[1]#_g18103_|)
                                                       (__tmp18093
                                                        (let ((__tmp18100
                                                               |gxc[1]#_g18101_|)
                                                              (__tmp18094
                                                               (let ((__tmp18098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18099_|)
                             (__tmp18095
                              (let ((__tmp18096 |gxc[1]#_g18097_|))
                                (declare (not safe))
                                (cons __tmp18096 '()))))
                         (declare (not safe))
                         (cons __tmp18098 __tmp18095))))
                  (declare (not safe))
                  (cons __tmp18100 __tmp18094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18102
                                                         __tmp18093))))
                                            (declare (not safe))
                                            (cons __tmp18092 '()))))
                                     (declare (not safe))
                                     (cons __tmp18104 __tmp18091))))
                              (declare (not safe))
                              (cons __tmp18116 __tmp18090))))
                       (declare (not safe))
                       (cons __tmp18118 __tmp18089))))
                (declare (not safe))
                (cons __tmp18120 __tmp18088))))
         (declare (not safe))
         (cons '#f __tmp18087))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18121_|
       'expander-identifiers:
       (let ((__tmp18122
              (let ((__tmp18155 |gxc[1]#_g18121_|)
                    (__tmp18123
                     (let ((__tmp18153 |gxc[1]#_g18154_|)
                           (__tmp18124
                            (let ((__tmp18151 |gxc[1]#_g18152_|)
                                  (__tmp18125
                                   (let ((__tmp18139
                                          (let ((__tmp18149 |gxc[1]#_g18150_|)
                                                (__tmp18140
                                                 (let ((__tmp18147
                                                        |gxc[1]#_g18148_|)
                                                       (__tmp18141
                                                        (let ((__tmp18145
                                                               |gxc[1]#_g18146_|)
                                                              (__tmp18142
                                                               (let ((__tmp18143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18144_|))
                         (declare (not safe))
                         (cons __tmp18143 '()))))
                  (declare (not safe))
                  (cons __tmp18145 __tmp18142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18147
                                                         __tmp18141))))
                                            (declare (not safe))
                                            (cons __tmp18149 __tmp18140)))
                                         (__tmp18126
                                          (let ((__tmp18127
                                                 (let ((__tmp18137
                                                        |gxc[1]#_g18138_|)
                                                       (__tmp18128
                                                        (let ((__tmp18135
                                                               |gxc[1]#_g18136_|)
                                                              (__tmp18129
                                                               (let ((__tmp18133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |gxc[1]#_g18134_|)
                             (__tmp18130
                              (let ((__tmp18131 |gxc[1]#_g18132_|))
                                (declare (not safe))
                                (cons __tmp18131 '()))))
                         (declare (not safe))
                         (cons __tmp18133 __tmp18130))))
                  (declare (not safe))
                  (cons __tmp18135 __tmp18129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp18137
                                                         __tmp18128))))
                                            (declare (not safe))
                                            (cons __tmp18127 '()))))
                                     (declare (not safe))
                                     (cons __tmp18139 __tmp18126))))
                              (declare (not safe))
                              (cons __tmp18151 __tmp18125))))
                       (declare (not safe))
                       (cons __tmp18153 __tmp18124))))
                (declare (not safe))
                (cons __tmp18155 __tmp18123))))
         (declare (not safe))
         (cons '#f __tmp18122))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
