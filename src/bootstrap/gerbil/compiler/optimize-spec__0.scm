(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707346620)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl245718_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251760 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl245718_ __tmp251760))
           (let ()
             (declare (not safe))
             (table-set! _tbl245718_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245718_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245718_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245718_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl245718_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx245701_ . _args245703_)
        (let ((__tmp251762
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245703_)
                     (gxc#compile-e__0 _stx245701_)
                     (let ((_arg1245708_ (car _args245703_))
                           (_rest245710_ (cdr _args245703_)))
                       (if (null? _rest245710_)
                           (gxc#compile-e__1 _stx245701_ _arg1245708_)
                           (let ((_arg2245713_ (car _rest245710_))
                                 (_rest245715_ (cdr _rest245710_)))
                             (if (null? _rest245715_)
                                 (gxc#compile-e__2
                                  _stx245701_
                                  _arg1245708_
                                  _arg2245713_)
                                 (apply gxc#compile-e
                                        _stx245701_
                                        _arg1245708_
                                        _arg2245713_
                                        _rest245715_))))))))
              (__tmp251761 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp251762
           gxc#current-compile-methods
           __tmp251761))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl245698_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251763 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl245698_ __tmp251763))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl245698_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl245698_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl245698_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx245681_ . _args245683_)
        (let ((__tmp251765
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245683_)
                     (gxc#compile-e__0 _stx245681_)
                     (let ((_arg1245688_ (car _args245683_))
                           (_rest245690_ (cdr _args245683_)))
                       (if (null? _rest245690_)
                           (gxc#compile-e__1 _stx245681_ _arg1245688_)
                           (let ((_arg2245693_ (car _rest245690_))
                                 (_rest245695_ (cdr _rest245690_)))
                             (if (null? _rest245695_)
                                 (gxc#compile-e__2
                                  _stx245681_
                                  _arg1245688_
                                  _arg2245693_)
                                 (apply gxc#compile-e
                                        _stx245681_
                                        _arg1245688_
                                        _arg2245693_
                                        _rest245695_))))))))
              (__tmp251764 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp251765
           gxc#current-compile-methods
           __tmp251764))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl245678_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp251766 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl245678_ __tmp251766))
           (let ()
             (declare (not safe))
             (table-set! _tbl245678_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl245678_ '%#call gxc#subst-object-refs-call%))
           _tbl245678_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx245661_ . _args245663_)
        (let ((__tmp251768
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245663_)
                     (gxc#compile-e__0 _stx245661_)
                     (let ((_arg1245668_ (car _args245663_))
                           (_rest245670_ (cdr _args245663_)))
                       (if (null? _rest245670_)
                           (gxc#compile-e__1 _stx245661_ _arg1245668_)
                           (let ((_arg2245673_ (car _rest245670_))
                                 (_rest245675_ (cdr _rest245670_)))
                             (if (null? _rest245675_)
                                 (gxc#compile-e__2
                                  _stx245661_
                                  _arg1245668_
                                  _arg2245673_)
                                 (apply gxc#compile-e
                                        _stx245661_
                                        _arg1245668_
                                        _arg2245673_
                                        _rest245675_))))))))
              (__tmp251767 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp251768
           gxc#current-compile-methods
           __tmp251767))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx242331_)
        (letrec ((_generate-method-bind242333_
                  (lambda (_$t245655_ _id245656_ _$id245657_)
                    (let ((_$tmp245659_
                           (let ((__tmp251769 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp251769))))
                      (let ((__tmp251814
                             (let ()
                               (declare (not safe))
                               (cons _$id245657_ '())))
                            (__tmp251770
                             (let ((__tmp251771
                                    (let ((__tmp251772
                                           (let ((__tmp251812
                                                  (let ((__tmp251813
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp251813)))
                                                 (__tmp251773
                                                  (let ((__tmp251774
                                                         (let ((__tmp251775
                                                                (let ((__tmp251776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251777
                                      (let ((__tmp251778
                                             (let ((__tmp251798
                                                    (let ((__tmp251799
                                                           (let ((__tmp251811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp245659_ '())))
                         (__tmp251800
                          (let ((__tmp251801
                                 (let ((__tmp251802
                                        (let ((__tmp251809
                                               (let ((__tmp251810
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp251810)))
                                              (__tmp251803
                                               (let ((__tmp251807
                                                      (let ((__tmp251808
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t245655_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp251808)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp251804
                                                      (let ((__tmp251805
                                                             (let ((__tmp251806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id245656_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp251806))))
                (declare (not safe))
                (cons __tmp251805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp251807
                                                       __tmp251804))))
                                          (declare (not safe))
                                          (cons __tmp251809 __tmp251803))))
                                   (declare (not safe))
                                   (cons '%#call __tmp251802))))
                            (declare (not safe))
                            (cons __tmp251801 '()))))
                     (declare (not safe))
                     (cons __tmp251811 __tmp251800))))
              (declare (not safe))
              (cons __tmp251799 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp251779
                                                    (let ((__tmp251780
                                                           (let ((__tmp251781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251796
                                 (let ((__tmp251797
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp245659_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp251797)))
                                (__tmp251782
                                 (let ((__tmp251794
                                        (let ((__tmp251795
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp245659_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp251795)))
                                       (__tmp251783
                                        (let ((__tmp251784
                                               (let ((__tmp251785
                                                      (let ((__tmp251792
                                                             (let ((__tmp251793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp251793)))
                    (__tmp251786
                     (let ((__tmp251790
                            (let ((__tmp251791
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp251791)))
                           (__tmp251787
                            (let ((__tmp251788
                                   (let ((__tmp251789
                                          (let ()
                                            (declare (not safe))
                                            (cons _id245656_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp251789))))
                              (declare (not safe))
                              (cons __tmp251788 '()))))
                       (declare (not safe))
                       (cons __tmp251790 __tmp251787))))
                (declare (not safe))
                (cons __tmp251792 __tmp251786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp251785))))
                                          (declare (not safe))
                                          (cons __tmp251784 '()))))
                                   (declare (not safe))
                                   (cons __tmp251794 __tmp251783))))
                            (declare (not safe))
                            (cons __tmp251796 __tmp251782))))
                     (declare (not safe))
                     (cons '%#if __tmp251781))))
              (declare (not safe))
              (cons __tmp251780 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp251798
                                                     __tmp251779))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp251778))))
                                 (declare (not safe))
                                 (cons __tmp251777 '()))))
                          (declare (not safe))
                          (cons '() __tmp251776))))
                   (declare (not safe))
                   (cons '%#lambda __tmp251775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251774 '()))))
                                             (declare (not safe))
                                             (cons __tmp251812 __tmp251773))))
                                      (declare (not safe))
                                      (cons '%#call __tmp251772))))
                               (declare (not safe))
                               (cons __tmp251771 '()))))
                        (declare (not safe))
                        (cons __tmp251814 __tmp251770)))))
                 (_generate-slot-bind242334_
                  (lambda (_$t245649_ _id245650_ _$id245651_)
                    (let ((_$tmp245653_
                           (let ((__tmp251815 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp251815))))
                      (let ((__tmp251852
                             (let ()
                               (declare (not safe))
                               (cons _$id245651_ '())))
                            (__tmp251816
                             (let ((__tmp251817
                                    (let ((__tmp251818
                                           (let ((__tmp251838
                                                  (let ((__tmp251839
                                                         (let ((__tmp251851
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp245653_ '())))
                       (__tmp251840
                        (let ((__tmp251841
                               (let ((__tmp251842
                                      (let ((__tmp251849
                                             (let ((__tmp251850
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset*
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp251850)))
                                            (__tmp251843
                                             (let ((__tmp251847
                                                    (let ((__tmp251848
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t245649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp251848)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp251844
                                                    (let ((__tmp251845
                                                           (let ((__tmp251846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id245650_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp251846))))
              (declare (not safe))
              (cons __tmp251845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp251847
                                                     __tmp251844))))
                                        (declare (not safe))
                                        (cons __tmp251849 __tmp251843))))
                                 (declare (not safe))
                                 (cons '%#call __tmp251842))))
                          (declare (not safe))
                          (cons __tmp251841 '()))))
                   (declare (not safe))
                   (cons __tmp251851 __tmp251840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251839 '())))
                                                 (__tmp251819
                                                  (let ((__tmp251820
                                                         (let ((__tmp251821
                                                                (let ((__tmp251836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251837
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp245653_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp251837)))
                              (__tmp251822
                               (let ((__tmp251834
                                      (let ((__tmp251835
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp245653_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp251835)))
                                     (__tmp251823
                                      (let ((__tmp251824
                                             (let ((__tmp251825
                                                    (let ((__tmp251832
                                                           (let ((__tmp251833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251833)))
                  (__tmp251826
                   (let ((__tmp251830
                          (let ((__tmp251831
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp251831)))
                         (__tmp251827
                          (let ((__tmp251828
                                 (let ((__tmp251829
                                        (let ()
                                          (declare (not safe))
                                          (cons _id245650_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp251829))))
                            (declare (not safe))
                            (cons __tmp251828 '()))))
                     (declare (not safe))
                     (cons __tmp251830 __tmp251827))))
              (declare (not safe))
              (cons __tmp251832 __tmp251826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251825))))
                                        (declare (not safe))
                                        (cons __tmp251824 '()))))
                                 (declare (not safe))
                                 (cons __tmp251834 __tmp251823))))
                          (declare (not safe))
                          (cons __tmp251836 __tmp251822))))
                   (declare (not safe))
                   (cons '%#if __tmp251821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251820 '()))))
                                             (declare (not safe))
                                             (cons __tmp251838 __tmp251819))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp251818))))
                               (declare (not safe))
                               (cons __tmp251817 '()))))
                        (declare (not safe))
                        (cons __tmp251852 __tmp251816)))))
                 (_generate-class-check-bind242335_
                  (lambda (_$t245645_ _class-type245646_ _$class-type245647_)
                    (let ((__tmp251864
                           (let ()
                             (declare (not safe))
                             (cons _$class-type245647_ '())))
                          (__tmp251853
                           (let ((__tmp251854
                                  (let ((__tmp251855
                                         (let ((__tmp251862
                                                (let ((__tmp251863
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp251863)))
                                               (__tmp251856
                                                (let ((__tmp251860
                                                       (let ((__tmp251861
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type245646_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp251861)))
              (__tmp251857
               (let ((__tmp251858
                      (let ((__tmp251859
                             (let ()
                               (declare (not safe))
                               (cons _$t245645_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp251859))))
                 (declare (not safe))
                 (cons __tmp251858 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251860
                                                        __tmp251857))))
                                           (declare (not safe))
                                           (cons __tmp251862 __tmp251856))))
                                    (declare (not safe))
                                    (cons '%#call __tmp251855))))
                             (declare (not safe))
                             (cons __tmp251854 '()))))
                      (declare (not safe))
                      (cons __tmp251864 __tmp251853))))
                 (_generate-struct-check-bind242336_
                  (lambda (_$t245641_ _class-type245642_ _$class-type245643_)
                    (let ((__tmp251876
                           (let ()
                             (declare (not safe))
                             (cons _$class-type245643_ '())))
                          (__tmp251865
                           (let ((__tmp251866
                                  (let ((__tmp251867
                                         (let ((__tmp251874
                                                (let ((__tmp251875
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp251875)))
                                               (__tmp251868
                                                (let ((__tmp251872
                                                       (let ((__tmp251873
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type245642_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp251873)))
              (__tmp251869
               (let ((__tmp251870
                      (let ((__tmp251871
                             (let ()
                               (declare (not safe))
                               (cons _$t245641_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp251871))))
                 (declare (not safe))
                 (cons __tmp251870 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251872
                                                        __tmp251869))))
                                           (declare (not safe))
                                           (cons __tmp251874 __tmp251868))))
                                    (declare (not safe))
                                    (cons '%#call __tmp251867))))
                             (declare (not safe))
                             (cons __tmp251866 '()))))
                      (declare (not safe))
                      (cons __tmp251876 __tmp251865))))
                 (_generate-specializer-impl242337_
                  (lambda (_$t245590_
                           _methods-bind245591_
                           _slots-bind245592_
                           _class-check-bind245593_
                           _struct-check-bind245594_
                           _specializer-impl245595_
                           _lifted-specializer-id245596_
                           _unchecked-specializer-impl245597_)
                    (let ((__tmp251877
                           (let ((__tmp251878
                                  (let ((__tmp251904
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t245590_ '())))
                                        (__tmp251879
                                         (let ((__tmp251880
                                                (let ((__tmp251881
                                                       (let ((__tmp251901
                                                              (let ((__tmp251902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251903
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind245594_
                                              _class-check-bind245593_))))
                               (declare (not safe))
                               (foldr1 cons __tmp251903 _slots-bind245592_))))
                        (declare (not safe))
                        (foldr1 cons __tmp251902 _methods-bind245591_)))
                     (__tmp251882
                      (let ((__tmp251883
                             (if (or _lifted-specializer-id245596_
                                     _unchecked-specializer-impl245597_)
                                 (let* ((_$specializer245602_
                                         (let ((__tmp251884
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp251884)))
                                        (__tmp251885
                                         (let ((__tmp251897
                                                (let ((__tmp251898
                                                       (let ((__tmp251900
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer245602_ '())))
                     (__tmp251899
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl245595_ '()))))
                 (declare (not safe))
                 (cons __tmp251900 __tmp251899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251898 '())))
                                               (__tmp251886
                                                (let ((__tmp251887
                                                       (let _recur245604_ ((_rest245606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind245594_)))
                 (let* ((_rest245607245615_ _rest245606_)
                        (_else245609245623_
                         (lambda ()
                           (if _lifted-specializer-id245596_
                               (let ((__tmp251888
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id245596_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp251888))
                               _unchecked-specializer-impl245597_)))
                        (_K245611245629_
                         (lambda (_rest245626_ _checkq245627_)
                           (let ((__tmp251889
                                  (let ((__tmp251895
                                         (let ((__tmp251896
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq245627_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp251896)))
                                        (__tmp251890
                                         (let ((__tmp251894
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur245604_
                                                   _rest245626_)))
                                               (__tmp251891
                                                (let ((__tmp251892
                                                       (let ((__tmp251893
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer245602_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp251893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251892 '()))))
                                           (declare (not safe))
                                           (cons __tmp251894 __tmp251891))))
                                    (declare (not safe))
                                    (cons __tmp251895 __tmp251890))))
                             (declare (not safe))
                             (cons '%#if __tmp251889)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest245607245615_))
                       (let ((_hd245612245632_
                              (let ()
                                (declare (not safe))
                                (##car _rest245607245615_)))
                             (_tl245613245634_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest245607245615_))))
                         (let* ((_checkq245637_ _hd245612245632_)
                                (_rest245639_ _tl245613245634_))
                           (declare (not safe))
                           (_K245611245629_ _rest245639_ _checkq245637_)))
                       (let () (declare (not safe)) (_else245609245623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251887 '()))))
                                           (declare (not safe))
                                           (cons __tmp251897 __tmp251886))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp251885))
                                 _specializer-impl245595_)))
                        (declare (not safe))
                        (cons __tmp251883 '()))))
                 (declare (not safe))
                 (cons __tmp251901 __tmp251882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp251881))))
                                           (declare (not safe))
                                           (cons __tmp251880 '()))))
                                    (declare (not safe))
                                    (cons __tmp251904 __tmp251879))))
                             (declare (not safe))
                             (cons '%#lambda __tmp251878))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251877 _stx242331_))))
                 (_generate-specializer-def242338_
                  (lambda (_id245584_
                           _specializer-id245585_
                           _specializer-impl245586_
                           _lifted-specializer-id245587_
                           _unchecked-specializer-impl245588_)
                    (let ((__tmp251905
                           (let ((__tmp251906
                                  (let ((__tmp251907
                                         (let ((__tmp251927
                                                (let ((__tmp251928
                                                       (let ((__tmp251929
                                                              (let ((__tmp251931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id245585_ '())))
                            (__tmp251930
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl245586_ '()))))
                        (declare (not safe))
                        (cons __tmp251931 __tmp251930))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251928
                                                   _stx242331_)))
                                               (__tmp251908
                                                (let ((__tmp251915
                                                       (let ((__tmp251916
                                                              (let ((__tmp251917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251918
                                    (let ((__tmp251925
                                           (let ((__tmp251926
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp251926)))
                                          (__tmp251919
                                           (let ((__tmp251923
                                                  (let ((__tmp251924
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id245584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp251924)))
                                                 (__tmp251920
                                                  (let ((__tmp251921
                                                         (let ((__tmp251922
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id245585_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp251922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251921 '()))))
                                             (declare (not safe))
                                             (cons __tmp251923 __tmp251920))))
                                      (declare (not safe))
                                      (cons __tmp251925 __tmp251919))))
                               (declare (not safe))
                               (cons '%#call __tmp251918))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp251917 _stx242331_))))
                 (declare (not safe))
                 (cons __tmp251916 '())))
              (__tmp251909
               (if _lifted-specializer-id245587_
                   (let ((__tmp251910
                          (let ((__tmp251911
                                 (let ((__tmp251912
                                        (let ((__tmp251914
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id245587_
                                                       '())))
                                              (__tmp251913
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl245588_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp251914 __tmp251913))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp251912))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp251911 _stx242331_))))
                     (declare (not safe))
                     (cons __tmp251910 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp251915
                                                          __tmp251909))))
                                           (declare (not safe))
                                           (cons __tmp251927 __tmp251908))))
                                    (declare (not safe))
                                    (cons _stx242331_ __tmp251907))))
                             (declare (not safe))
                             (cons '%#begin __tmp251906))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251905 _stx242331_)))))
          (let* ((___stx250001250002_ _stx242331_)
                 (_g242341242361_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250001250002_)))))
            (let ((___kont250003250004_
                   (lambda (_L242405_ _L242406_)
                     (let ((_method-calls242425_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs242426_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check242427_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check242428_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert242429_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty242430_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?242432_
                                 (lambda ()
                                   (if (let ((__tmp251936
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls242425_))))
                                         (declare (not safe))
                                         (fxzero? __tmp251936))
                                       (if (let ((__tmp251935
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs242426_))))
                                             (declare (not safe))
                                             (fxzero? __tmp251935))
                                           (if (let ((__tmp251934
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check242427_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp251934))
                                               (if (let ((__tmp251933
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check242428_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp251933))
                                                   (let ((__tmp251932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert242429_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp251932))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?242433_
                                 (lambda ()
                                   (let ((_$e245577_
                                          (let ((__tmp251937
                                                 (let ((__tmp251938
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check242428_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp251938))))
                                            (declare (not safe))
                                            (not __tmp251937))))
                                     (if _$e245577_
                                         _$e245577_
                                         (let ((__tmp251939
                                                (let ((__tmp251940
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert242429_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp251940))))
                                           (declare (not safe))
                                           (not __tmp251939))))))
                                (_lift-unchecked-specializer?242434_
                                 (lambda ()
                                   (if (let ((__tmp251943
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls242425_))))
                                         (declare (not safe))
                                         (fxzero? __tmp251943))
                                       (if (let ((__tmp251942
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs242426_))))
                                             (declare (not safe))
                                             (fxzero? __tmp251942))
                                           (let ((__tmp251941
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check242427_))))
                                             (declare (not safe))
                                             (fxzero? __tmp251941))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L242405_))
                             (let* ((___stx249915249916_ _L242405_)
                                    (_g242947242965_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx249915249916_)))))
                               (let ((___kont249917249918_
                                      (lambda (_L243001_ _L243002_ _L243003_)
                                        (for-each
                                         (lambda (_g243018243020_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g243018243020_
                                              _L243003_
                                              _method-calls242425_
                                              _slot-refs242426_
                                              _class-type-check242427_
                                              _struct-type-check242428_
                                              _struct-type-assert242429_)))
                                         _L243001_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?242432_))
                                            _stx242331_
                                            (let* ((_specializer-id243029_
                                                    (let* ((_id243023_
                                                            (let ((__tmp252093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L242406_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp252093 '"::specialize")))
                   (_specializer-id243026_
                    (let ((__tmp252094
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx242331_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id243023_ __tmp252094))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id243026_))
              _specializer-id243026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id243036_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?242434_))
                                                        (let* ((_id243031_
                                                                (let ((__tmp252095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L242406_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp252095
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id243033_
                        (let ((__tmp252096
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx242331_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id243031_ __tmp252096))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id243033_))
                  _lifted-specializer-id243033_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t243038_
                                                    (let ((__tmp252097
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp252097)))
                                                   (_methods243040_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls242425_)))
                                                   (_$methods243044_
                                                    (map (lambda (_id243042_)
                                                           (let ((__tmp252098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id243042_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252098)))
                 _methods243040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252099_
                                                    (for-each
                                                     (lambda (_g243045243048_
                                                              _g243046243050_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls242425_
                                                          _g243045243048_
                                                          _g243046243050_)))
                                                     _methods243040_
                                                     _$methods243044_))
                                                   (_methods-bind243061_
                                                    (map (lambda (_g243053243056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243054243058_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind242333_
                      _$t243038_
                      _g243053243056_
                      _g243054243058_)))
                 _methods243040_
                 _$methods243044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots243063_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs242426_)))
                                                   (_$slots243067_
                                                    (map (lambda (_id243065_)
                                                           (let ((__tmp252100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id243065_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp252100)))
                 _slots243063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252101_
                                                    (for-each
                                                     (lambda (_g243068243071_
                                                              _g243069243073_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs242426_
                                                          _g243068243071_
                                                          _g243069243073_)))
                                                     _slots243063_
                                                     _$slots243067_))
                                                   (_slots-bind243084_
                                                    (map (lambda (_g243076243079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243077243081_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind242334_
                      _$t243038_
                      _g243076243079_
                      _g243077243081_)))
                 _slots243063_
                 _$slots243067_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check243086_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check242427_)))
                                                   (_$class-check243089_
                                                    (map (lambda (_g252102_)
                                                           (let ((__tmp252103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252103)))
                 _class-check243086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252104_
                                                    (for-each
                                                     (lambda (_g243090243093_
                                                              _g243091243095_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check242427_
                                                          _g243090243093_
                                                          _g243091243095_)))
                                                     _class-check243086_
                                                     _$class-check243089_))
                                                   (_class-check-bind243106_
                                                    (map (lambda (_g243098243101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243099243103_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind242335_
                      _$t243038_
                      _g243098243101_
                      _g243099243103_)))
                 _class-check243086_
                 _$class-check243089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all243108_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check242428_
                                                       _struct-type-assert242429_)))
                                                   (_struct-check243110_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all243108_)))
                                                   (_$struct-check243113_
                                                    (map (lambda (_g252105_)
                                                           (let ((__tmp252106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp252106)))
                 _struct-check243110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g252107_
                                                    (for-each
                                                     (lambda (_g243114243117_
                                                              _g243115243119_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all243108_
                                                          _g243114243117_
                                                          _g243115243119_)))
                                                     _struct-check243110_
                                                     _$struct-check243113_))
                                                   (_struct-check-bind243130_
                                                    (map (lambda (_g243122243125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g243123243127_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind242336_
                      _$t243038_
                      _g243122243125_
                      _g243123243127_)))
                 _struct-check243110_
                 _$struct-check243113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl243141_
                                                    (lambda (_struct-type-check1243132_
                                                             _struct-type-check2243133_)
                                                      (let* ((_specializer-body243139_
                                                              (map (lambda (_g243134243136_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g243134243136_
                                _L243003_
                                _$t243038_
                                _method-calls242425_
                                _slot-refs242426_
                                _class-type-check242427_
                                _struct-type-check1243132_
                                _struct-type-check2243133_)))
                           _L243001_))
                     (__tmp252108
                      (let ((__tmp252109
                             (let ((__tmp252110
                                    (let ()
                                      (declare (not safe))
                                      (cons _L243003_ _L243002_))))
                               (declare (not safe))
                               (cons __tmp252110 _specializer-body243139_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp252109))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp252108 _stx242331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl243143_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl243141_
                                                       _struct-check-all243108_
                                                       _empty242430_)))
                                                   (_unchecked-specializer-impl243145_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?242433_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl243141_
                                                           _empty242430_
                                                           _struct-check-all243108_))
                                                        '#f))
                                                   (_specializer-impl243147_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl242337_
                                                       _$t243038_
                                                       _methods-bind243061_
                                                       _slots-bind243084_
                                                       _class-check-bind243106_
                                                       _struct-check-bind243130_
                                                       _specializer-impl243143_
                                                       _lifted-specializer-id243036_
                                                       _unchecked-specializer-impl243145_))))
                                              (let ((__tmp252112
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L242406_)))
                                                    (__tmp252111
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id243029_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp252112
                                                 '" => "
                                                 __tmp252111))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def242338_
                                                 _L242406_
                                                 _specializer-id243029_
                                                 _specializer-impl243147_
                                                 _lifted-specializer-id243036_
                                                 _unchecked-specializer-impl243145_))))))
                                     (___kont249919249920_
                                      (lambda () _stx242331_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx249915249916_))
                                     (let ((_e242954242977_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx249915249916_))))
                                       (let ((_tl242952242982_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e242954242977_)))
                                             (_hd242953242980_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e242954242977_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl242952242982_))
                                             (let ((_e242957242985_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl242952242982_))))
                                               (let ((_tl242955242990_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e242957242985_)))
                                                     (_hd242956242988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e242957242985_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd242956242988_))
                                                     (let ((_e242960242993_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd242956242988_))))
                                                       (let ((_tl242958242998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e242960242993_)))
                     (_hd242959242996_
                      (let () (declare (not safe)) (##car _e242960242993_))))
                 (___kont249917249918_
                  _tl242955242990_
                  _tl242958242998_
                  _hd242959242996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont249919249920_))))
                                             (___kont249919249920_))))
                                     (___kont249919249920_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L242405_))
                                 (let* ((_g243153243172_
                                         (lambda (_g243154243169_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g243154243169_))))
                                        (_g243152243523_
                                         (lambda (_g243154243175_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g243154243175_))
                                               (let ((_e243158243177_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g243154243175_))))
                                                 (let ((_hd243157243180_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e243158243177_)))
                                                       (_tl243156243182_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e243158243177_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl243156243182_))
                                                       (let ((_g252069_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl243156243182_ '0))))
                 (begin
                   (let ((_g252070_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g252069_)
                                (##vector-length _g252069_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g252070_ 2)))
                         (error "Context expects 2 values" _g252070_)))
                   (let ((_target243159243185_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252069_ 0)))
                         (_tl243161243187_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g252069_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl243161243187_))
                         (letrec ((_loop243162243190_
                                   (lambda (_hd243160243193_
                                            _clause243166243195_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd243160243193_))
                                         (let ((_e243163243198_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd243160243193_))))
                                           (let ((_lp-hd243164243201_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e243163243198_)))
                                                 (_lp-tl243165243203_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e243163243198_))))
                                             (let ((__tmp252092
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd243164243201_
                                                            _clause243166243195_))))
                                               (declare (not safe))
                                               (_loop243162243190_
                                                _lp-tl243165243203_
                                                __tmp252092))))
                                         (let ((_clause243167243206_
                                                (reverse _clause243166243195_)))
                                           ((lambda (_L243209_)
                                              (for-each
                                               (lambda (_clause243222_)
                                                 (let* ((___stx249941249942_
                                                         _clause243222_)
                                                        (_g243225243240_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx249941249942_)))))
                                                   (let ((___kont249943249944_
                                                          (lambda (_L243268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L243269_
                           _L243270_)
                    (for-each
                     (lambda (_g243285243287_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g243285243287_
                          _L243270_
                          _method-calls242425_
                          _slot-refs242426_
                          _class-type-check242427_
                          _struct-type-check242428_
                          _struct-type-assert242429_)))
                     _L243268_)))
                 (___kont249945249946_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx249941249942_))
                                                         (let ((_e243232243252_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx249941249942_))))
                   (let ((_tl243230243257_
                          (let ()
                            (declare (not safe))
                            (##cdr _e243232243252_)))
                         (_hd243231243255_
                          (let ()
                            (declare (not safe))
                            (##car _e243232243252_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd243231243255_))
                         (let ((_e243235243260_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd243231243255_))))
                           (let ((_tl243233243265_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e243235243260_)))
                                 (_hd243234243263_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e243235243260_))))
                             (___kont249943249944_
                              _tl243230243257_
                              _tl243233243265_
                              _hd243234243263_)))
                         (___kont249945249946_))))
                 (___kont249945249946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp252071
                                                      (lambda (_g243292243295_
                                                               _g243293243297_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g243292243295_
                                                                _g243293243297_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252071
                                                         '()
                                                         _L243209_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?242432_))
                                                  _stx242331_
                                                  (let* ((_specializer-id243306_
                                                          (let* ((_id243300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252072
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L242406_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252072 '"::specialize")))
                         (_specializer-id243303_
                          (let ((__tmp252073
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx242331_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id243300_ __tmp252073))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id243303_))
                    _specializer-id243303_))
                 (_lifted-specializer-id243313_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?242434_))
                      (let* ((_id243308_
                              (let ((__tmp252074
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L242406_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252074
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id243310_
                              (let ((__tmp252075
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx242331_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id243308_
                                 __tmp252075))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id243310_))
                        _lifted-specializer-id243310_)
                      '#f))
                 (_$t243315_
                  (let ((__tmp252076 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252076)))
                 (_methods243317_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls242425_)))
                 (_$methods243321_
                  (map (lambda (_id243319_)
                         (let ((__tmp252077 (gensym _id243319_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252077)))
                       _methods243317_))
                 (_g252078_
                  (for-each
                   (lambda (_g243322243325_ _g243323243327_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls242425_
                        _g243322243325_
                        _g243323243327_)))
                   _methods243317_
                   _$methods243321_))
                 (_methods-bind243338_
                  (map (lambda (_g243330243333_ _g243331243335_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind242333_
                            _$t243315_
                            _g243330243333_
                            _g243331243335_)))
                       _methods243317_
                       _$methods243321_))
                 (_slots243340_
                  (let () (declare (not safe)) (hash-keys _slot-refs242426_)))
                 (_$slots243344_
                  (map (lambda (_id243342_)
                         (let ((__tmp252079 (gensym _id243342_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252079)))
                       _slots243340_))
                 (_g252080_
                  (for-each
                   (lambda (_g243345243348_ _g243346243350_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs242426_
                        _g243345243348_
                        _g243346243350_)))
                   _slots243340_
                   _$slots243344_))
                 (_slots-bind243361_
                  (map (lambda (_g243353243356_ _g243354243358_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind242334_
                            _$t243315_
                            _g243353243356_
                            _g243354243358_)))
                       _slots243340_
                       _$slots243344_))
                 (_class-check243363_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check242427_)))
                 (_$class-check243366_
                  (map (lambda (_g252081_)
                         (let ((__tmp252082 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252082)))
                       _class-check243363_))
                 (_g252083_
                  (for-each
                   (lambda (_g243367243370_ _g243368243372_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check242427_
                        _g243367243370_
                        _g243368243372_)))
                   _class-check243363_
                   _$class-check243366_))
                 (_class-check-bind243383_
                  (map (lambda (_g243375243378_ _g243376243380_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind242335_
                            _$t243315_
                            _g243375243378_
                            _g243376243380_)))
                       _class-check243363_
                       _$class-check243366_))
                 (_struct-check-all243385_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check242428_
                     _struct-type-assert242429_)))
                 (_struct-check243387_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all243385_)))
                 (_$struct-check243390_
                  (map (lambda (_g252084_)
                         (let ((__tmp252085 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252085)))
                       _struct-check243387_))
                 (_g252086_
                  (for-each
                   (lambda (_g243391243394_ _g243392243396_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all243385_
                        _g243391243394_
                        _g243392243396_)))
                   _struct-check243387_
                   _$struct-check243390_))
                 (_struct-check-bind243407_
                  (map (lambda (_g243399243402_ _g243400243404_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind242336_
                            _$t243315_
                            _g243399243402_
                            _g243400243404_)))
                       _struct-check243387_
                       _$struct-check243390_))
                 (_make-specializer-impl243514_
                  (lambda (_struct-type-check1243409_
                           _struct-type-check2243410_)
                    (let* ((_specializer-clauses243512_
                            (map (lambda (_clause243412_)
                                   (let* ((___stx249961249962_ _clause243412_)
                                          (_g243415243430_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx249961249962_)))))
                                     (let ((___kont249963249964_
                                            (lambda (_L243458_
                                                     _L243459_
                                                     _L243460_)
                                              (let* ((_body243500_
                                                      (map (lambda (_g243495243497_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g243495243497_
                        _L243460_
                        _$t243315_
                        _method-calls242425_
                        _slot-refs242426_
                        _class-type-check242427_
                        _struct-type-check1243409_
                        _struct-type-check2243410_)))
                   _L243458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252087
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L243460_
                                                              _L243459_))))
                                                (declare (not safe))
                                                (cons __tmp252087
                                                      _body243500_))))
                                           (___kont249965249966_
                                            (lambda () _clause243412_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx249961249962_))
                                           (let ((_e243422243442_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx249961249962_))))
                                             (let ((_tl243420243447_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e243422243442_)))
                                                   (_hd243421243445_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e243422243442_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd243421243445_))
                                                   (let ((_e243425243450_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd243421243445_))))
                                                     (let ((_tl243423243455_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e243425243450_)))
                                                           (_hd243424243453_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e243425243450_))))
                                                       (___kont249963249964_
                                                        _tl243420243447_
                                                        _tl243423243455_
                                                        _hd243424243453_)))
                                                   (___kont249965249966_))))
                                           (___kont249965249966_)))))
                                 (let ((__tmp252088
                                        (lambda (_g243504243507_
                                                 _g243505243509_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g243504243507_
                                                  _g243505243509_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252088 '() _L243209_))))
                           (__tmp252089
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses243512_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252089 _stx242331_))))
                 (_specializer-impl243516_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl243514_
                     _struct-check-all243385_
                     _empty242430_)))
                 (_unchecked-specializer-impl243518_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?242433_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl243514_
                         _empty242430_
                         _struct-check-all243385_))
                      '#f))
                 (_specializer-impl243520_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl242337_
                     _$t243315_
                     _methods-bind243338_
                     _slots-bind243361_
                     _class-check-bind243383_
                     _struct-check-bind243407_
                     _specializer-impl243516_
                     _lifted-specializer-id243313_
                     _unchecked-specializer-impl243518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252091
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L242406_)))
                                                          (__tmp252090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id243306_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252091
                                                       '" => "
                                                       __tmp252090))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def242338_
                                                       _L242406_
                                                       _specializer-id243306_
                                                       _specializer-impl243520_
                                                       _lifted-specializer-id243313_
                                                       _unchecked-specializer-impl243518_)))))
                                            _clause243167243206_))))))
                           (let ()
                             (declare (not safe))
                             (_loop243162243190_ _target243159243185_ '())))
                         (let ()
                           (declare (not safe))
                           (_g243153243172_ _g243154243175_))))))
               (let ()
                 (declare (not safe))
                 (_g243153243172_ _g243154243175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g243153243172_
                                                  _g243154243175_))))))
                                   (declare (not safe))
                                   (_g243152243523_ _L242405_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L242405_))
                                     (let* ((_g243526243556_
                                             (lambda (_g243527243553_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g243527243553_))))
                                            (_g243525244244_
                                             (lambda (_g243527243559_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g243527243559_))
                                                   (let ((_e243533243561_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g243527243559_))))
                                                     (let ((_hd243532243564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e243533243561_)))
                                                           (_tl243531243566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e243533243561_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl243531243566_))
                                                           (let ((_e243536243569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl243531243566_))))
                     (let ((_hd243535243572_
                            (let ()
                              (declare (not safe))
                              (##car _e243536243569_)))
                           (_tl243534243574_
                            (let ()
                              (declare (not safe))
                              (##cdr _e243536243569_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd243535243572_))
                           (let ((_e243539243577_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd243535243572_))))
                             (let ((_hd243538243580_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e243539243577_)))
                                   (_tl243537243582_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e243539243577_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd243538243580_))
                                   (let ((_e243542243585_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd243538243580_))))
                                     (let ((_hd243541243588_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e243542243585_)))
                                           (_tl243540243590_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e243542243585_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd243541243588_))
                                           (let ((_e243545243593_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd243541243588_))))
                                             (let ((_hd243544243596_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e243545243593_)))
                                                   (_tl243543243598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e243545243593_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl243543243598_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl243540243590_))
                                                       (let ((_e243548243601_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl243540243590_))))
                 (let ((_hd243547243604_
                        (let () (declare (not safe)) (##car _e243548243601_)))
                       (_tl243546243606_
                        (let () (declare (not safe)) (##cdr _e243548243601_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl243546243606_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl243537243582_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl243534243574_))
                               (let ((_e243551243609_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl243534243574_))))
                                 (let ((_hd243550243612_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e243551243609_)))
                                       (_tl243549243614_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e243551243609_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl243549243614_))
                                       ((lambda (_L243617_ _L243618_ _L243619_)
                                          (let* ((_g243642243660_
                                                  (lambda (_g243643243657_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g243643243657_))))
                                                 (_g243641243711_
                                                  (lambda (_g243643243663_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g243643243663_))
                                                        (let ((_e243649243665_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g243643243663_))))
                  (let ((_hd243648243668_
                         (let () (declare (not safe)) (##car _e243649243665_)))
                        (_tl243647243670_
                         (let ()
                           (declare (not safe))
                           (##cdr _e243649243665_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl243647243670_))
                        (let ((_e243652243673_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl243647243670_))))
                          (let ((_hd243651243676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243652243673_)))
                                (_tl243650243678_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243652243673_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd243651243676_))
                                (let ((_e243655243681_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd243651243676_))))
                                  (let ((_hd243654243684_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e243655243681_)))
                                        (_tl243653243686_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e243655243681_))))
                                    ((lambda (_L243689_ _L243690_ _L243691_)
                                       (for-each
                                        (lambda (_g243706243708_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g243706243708_
                                             _L243691_
                                             _method-calls242425_
                                             _slot-refs242426_
                                             _class-type-check242427_
                                             _struct-type-check242428_
                                             _struct-type-assert242429_)))
                                        _L243689_))
                                     _tl243650243678_
                                     _tl243653243686_
                                     _hd243654243684_)))
                                (let ()
                                  (declare (not safe))
                                  (_g243642243660_ _g243643243663_)))))
                        (let ()
                          (declare (not safe))
                          (_g243642243660_ _g243643243663_)))))
                (let ()
                  (declare (not safe))
                  (_g243642243660_ _g243643243663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g243641243711_ _L243618_))
                                          (let* ((_g243714243733_
                                                  (lambda (_g243715243730_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g243715243730_))))
                                                 (_g243713243852_
                                                  (lambda (_g243715243736_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g243715243736_))
                                                        (let ((_e243719243738_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g243715243736_))))
                  (let ((_hd243718243741_
                         (let () (declare (not safe)) (##car _e243719243738_)))
                        (_tl243717243743_
                         (let ()
                           (declare (not safe))
                           (##cdr _e243719243738_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl243717243743_))
                        (let ((_g252032_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl243717243743_
                                  '0))))
                          (begin
                            (let ((_g252033_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252032_)
                                         (##vector-length _g252032_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252033_ 2)))
                                  (error "Context expects 2 values"
                                         _g252033_)))
                            (let ((_target243720243746_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252032_ 0)))
                                  (_tl243722243748_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252032_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl243722243748_))
                                  (letrec ((_loop243723243751_
                                            (lambda (_hd243721243754_
                                                     _clause243727243756_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd243721243754_))
                                                  (let ((_e243724243759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd243721243754_))))
                                                    (let ((_lp-hd243725243762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e243724243759_)))
                                                          (_lp-tl243726243764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e243724243759_))))
                                                      (let ((__tmp252035
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd243725243762_ _clause243727243756_))))
                (declare (not safe))
                (_loop243723243751_ _lp-tl243726243764_ __tmp252035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause243728243767_
                                                         (reverse _clause243727243756_)))
                                                    ((lambda (_L243770_)
                                                       (for-each
                                                        (lambda (_clause243783_)
                                                          (let* ((_g243785243800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g243786243797_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g243786243797_))))
                         (_g243784243842_
                          (lambda (_g243786243803_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g243786243803_))
                                (let ((_e243792243805_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g243786243803_))))
                                  (let ((_hd243791243808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e243792243805_)))
                                        (_tl243790243810_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e243792243805_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd243791243808_))
                                        (let ((_e243795243813_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd243791243808_))))
                                          (let ((_hd243794243816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e243795243813_)))
                                                (_tl243793243818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e243795243813_))))
                                            ((lambda (_L243821_
                                                      _L243822_
                                                      _L243823_)
                                               (for-each
                                                (lambda (_g243837243839_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g243837243839_
                                                     _L243823_
                                                     _method-calls242425_
                                                     _slot-refs242426_
                                                     _class-type-check242427_
                                                     _struct-type-check242428_
                                                     _struct-type-assert242429_)))
                                                _L243821_))
                                             _tl243790243810_
                                             _tl243793243818_
                                             _hd243794243816_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g243785243800_ _g243786243803_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g243785243800_ _g243786243803_))))))
                    (declare (not safe))
                    (_g243784243842_ _clause243783_)))
                (let ((__tmp252034
                       (lambda (_g243844243847_ _g243845243849_)
                         (let ()
                           (declare (not safe))
                           (cons _g243844243847_ _g243845243849_)))))
                  (declare (not safe))
                  (foldr1 __tmp252034 '() _L243770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause243728243767_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop243723243751_
                                       _target243720243746_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g243714243733_ _g243715243736_))))))
                        (let ()
                          (declare (not safe))
                          (_g243714243733_ _g243715243736_)))))
                (let ()
                  (declare (not safe))
                  (_g243714243733_ _g243715243736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g243713243852_ _L243617_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?242432_))
                                              _stx242331_
                                              (let* ((_specializer-id243861_
                                                      (let* ((_id243855_
                                                              (let ((__tmp252036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L242406_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252036 '"::specialize")))
                     (_specializer-id243858_
                      (let ((__tmp252037
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx242331_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id243855_ __tmp252037))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id243858_))
                _specializer-id243858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id243868_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?242434_))
                                                          (let* ((_id243863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252038
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L242406_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252038
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id243865_
                          (let ((__tmp252039
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx242331_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id243863_ __tmp252039))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id243865_))
                    _lifted-specializer-id243865_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t243870_
                                                      (let ((__tmp252040
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252040)))
                                                     (_methods243872_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls242425_)))
                                                     (_$methods243876_
                                                      (map (lambda (_id243874_)
                                                             (let ((__tmp252041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id243874_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252041)))
                   _methods243872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252042_
                                                      (for-each
                                                       (lambda (_g243877243880_
                                                                _g243878243882_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls242425_
                                                            _g243877243880_
                                                            _g243878243882_)))
                                                       _methods243872_
                                                       _$methods243876_))
                                                     (_methods-bind243893_
                                                      (map (lambda (_g243885243888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g243886243890_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind242333_
                        _$t243870_
                        _g243885243888_
                        _g243886243890_)))
                   _methods243872_
                   _$methods243876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots243895_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs242426_)))
                                                     (_$slots243899_
                                                      (map (lambda (_id243897_)
                                                             (let ((__tmp252043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id243897_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252043)))
                   _slots243895_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252044_
                                                      (for-each
                                                       (lambda (_g243900243903_
                                                                _g243901243905_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs242426_
                                                            _g243900243903_
                                                            _g243901243905_)))
                                                       _slots243895_
                                                       _$slots243899_))
                                                     (_slots-bind243916_
                                                      (map (lambda (_g243908243911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g243909243913_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind242334_
                        _$t243870_
                        _g243908243911_
                        _g243909243913_)))
                   _slots243895_
                   _$slots243899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check243918_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check242427_)))
                                                     (_$class-check243921_
                                                      (map (lambda (_g252045_)
                                                             (let ((__tmp252046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252046)))
                   _class-check243918_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252047_
                                                      (for-each
                                                       (lambda (_g243922243925_
                                                                _g243923243927_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check242427_
                                                            _g243922243925_
                                                            _g243923243927_)))
                                                       _class-check243918_
                                                       _$class-check243921_))
                                                     (_class-check-bind243938_
                                                      (map (lambda (_g243930243933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g243931243935_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind242335_
                        _$t243870_
                        _g243930243933_
                        _g243931243935_)))
                   _class-check243918_
                   _$class-check243921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all243940_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check242428_
                                                         _struct-type-assert242429_)))
                                                     (_struct-check243942_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all243940_)))
                                                     (_$struct-check243945_
                                                      (map (lambda (_g252048_)
                                                             (let ((__tmp252049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252049)))
                   _struct-check243942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252050_
                                                      (for-each
                                                       (lambda (_g243946243949_
                                                                _g243947243951_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all243940_
                                                            _g243946243949_
                                                            _g243947243951_)))
                                                       _struct-check243942_
                                                       _$struct-check243945_))
                                                     (_struct-check-bind243962_
                                                      (map (lambda (_g243954243957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g243955243959_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind242336_
                        _$t243870_
                        _g243954243957_
                        _g243955243959_)))
                   _struct-check243942_
                   _$struct-check243945_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr244061_
                                                      (lambda (_struct-type-check1243964_
                                                               _struct-type-check2243965_)
                                                        (let* ((_g243967243985_
                                                                (lambda (_g243968243982_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g243968243982_))))
                       (_g243966244058_
                        (lambda (_g243968243988_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g243968243988_))
                              (let ((_e243974243990_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g243968243988_))))
                                (let ((_hd243973243993_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243974243990_)))
                                      (_tl243972243995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243974243990_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243972243995_))
                                      (let ((_e243977243998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243972243995_))))
                                        (let ((_hd243976244001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243977243998_)))
                                              (_tl243975244003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243977243998_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd243976244001_))
                                              (let ((_e243980244006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd243976244001_))))
                                                (let ((_hd243979244009_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243980244006_)))
                                                      (_tl243978244011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243980244006_))))
                                                  ((lambda (_L244014_
                                                            _L244015_
                                                            _L244016_)
                                                     (let* ((_body244056_
                                                             (map (lambda (_g244051244053_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g244051244053_
                               _L244016_
                               _$t243870_
                               _method-calls242425_
                               _slot-refs242426_
                               _class-type-check242427_
                               _struct-type-check1243964_
                               _struct-type-check2243965_)))
                          _L244014_))
                    (__tmp252051
                     (let ((__tmp252052
                            (let ((__tmp252053
                                   (let ()
                                     (declare (not safe))
                                     (cons _L244016_ _L244015_))))
                              (declare (not safe))
                              (cons __tmp252053 _body244056_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252052))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252051 _L243618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl243975244003_
                                                   _tl243978244011_
                                                   _hd243979244009_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g243967243985_
                                                 _g243968243988_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243967243985_ _g243968243988_)))))
                              (let ()
                                (declare (not safe))
                                (_g243967243985_ _g243968243988_))))))
                  (declare (not safe))
                  (_g243966244058_ _L243618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr244222_
                                                      (lambda (_struct-type-check1244063_
                                                               _struct-type-check2244064_)
                                                        (let* ((_g244066244085_
                                                                (lambda (_g244067244082_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g244067244082_))))
                       (_g244065244219_
                        (lambda (_g244067244088_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g244067244088_))
                              (let ((_e244071244090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g244067244088_))))
                                (let ((_hd244070244093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244071244090_)))
                                      (_tl244069244095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244071244090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244069244095_))
                                      (let ((_g252054_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244069244095_
                                                '0))))
                                        (begin
                                          (let ((_g252055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252054_)
                                                       (##vector-length
                                                        _g252054_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252055_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252055_)))
                                          (let ((_target244072244098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252054_ 0)))
                                                (_tl244074244100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252054_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244074244100_))
                                                (letrec ((_loop244075244103_
                                                          (lambda (_hd244073244106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause244079244108_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd244073244106_))
                        (let ((_e244076244111_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd244073244106_))))
                          (let ((_lp-hd244077244114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244076244111_)))
                                (_lp-tl244078244116_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244076244111_))))
                            (let ((__tmp252059
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd244077244114_
                                           _clause244079244108_))))
                              (declare (not safe))
                              (_loop244075244103_
                               _lp-tl244078244116_
                               __tmp252059))))
                        (let ((_clause244080244119_
                               (reverse _clause244079244108_)))
                          ((lambda (_L244122_)
                             (let* ((_clauses244217_
                                     (map (lambda (_clause244137_)
                                            (let* ((___stx249981249982_
                                                    _clause244137_)
                                                   (_g244140244155_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx249981249982_)))))
                                              (let ((___kont249983249984_
                                                     (lambda (_L244183_
                                                              _L244184_
                                                              _L244185_)
                                                       (let* ((_body244205_
                                                               (map (lambda (_g244200244202_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g244200244202_
                                 _L244185_
                                 _$t243870_
                                 _method-calls242425_
                                 _slot-refs242426_
                                 _class-type-check242427_
                                 _struct-type-check1244063_
                                 _struct-type-check2244064_)))
                            _L244183_))
                      (__tmp252056
                       (let ()
                         (declare (not safe))
                         (cons _L244185_ _L244184_))))
                 (declare (not safe))
                 (cons __tmp252056 _body244205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249985249986_
                                                     (lambda ()
                                                       _clause244137_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx249981249982_))
                                                    (let ((_e244147244167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx249981249982_))))
                                                      (let ((_tl244145244172_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244147244167_)))
                    (_hd244146244170_
                     (let () (declare (not safe)) (##car _e244147244167_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd244146244170_))
                    (let ((_e244150244175_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd244146244170_))))
                      (let ((_tl244148244180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244150244175_)))
                            (_hd244149244178_
                             (let ()
                               (declare (not safe))
                               (##car _e244150244175_))))
                        (___kont249983249984_
                         _tl244145244172_
                         _tl244148244180_
                         _hd244149244178_)))
                    (___kont249985249986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249985249986_)))))
                                          (let ((__tmp252057
                                                 (lambda (_g244209244212_
                                                          _g244210244214_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g244209244212_
                                                           _g244210244214_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252057
                                                    '()
                                                    _L244122_))))
                                    (__tmp252058
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses244217_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252058 _L243617_)))
                           _clause244080244119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop244075244103_
                                                     _target244072244098_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g244066244085_
                                                   _g244067244088_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244066244085_ _g244067244088_)))))
                              (let ()
                                (declare (not safe))
                                (_g244066244085_ _g244067244088_))))))
                  (declare (not safe))
                  (_g244065244219_ _L243617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl244227_
                                                      (lambda (_specializer-lambda-expr244224_
                                                               _specializer-case-lambda-expr244225_)
                                                        (let ((__tmp252060
                                                               (let ((__tmp252061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp252063
                                     (let ((__tmp252064
                                            (let ((__tmp252066
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L243619_ '())))
                                                  (__tmp252065
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr244224_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp252066 __tmp252065))))
                                       (declare (not safe))
                                       (cons __tmp252064 '())))
                                    (__tmp252062
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr244225_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp252063 __tmp252062))))
                         (declare (not safe))
                         (cons '%#let-values __tmp252061))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp252060 _stx242331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr244229_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr244061_
                                                         _struct-check-all243940_
                                                         _empty242430_)))
                                                     (_specializer-case-lambda-expr244231_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr244222_
                                                         _struct-check-all243940_
                                                         _empty242430_)))
                                                     (_specializer-impl244233_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl244227_
                                                         _specializer-lambda-expr244229_
                                                         _specializer-case-lambda-expr244231_)))
                                                     (_unchecked-specializer-lambda-expr244235_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?242433_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr244061_
                                                             _empty242430_
                                                             _struct-check-all243940_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr244237_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?242433_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr244222_
                                                             _empty242430_
                                                             _struct-check-all243940_))
                                                          '#f))
                                                     (_unchecked-specializer-impl244239_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?242433_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl244227_
                                                             _unchecked-specializer-lambda-expr244235_
                                                             _unchecked-specializer-case-lambda-expr244237_))
                                                          '#f))
                                                     (_specializer-impl244241_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl242337_
                                                         _$t243870_
                                                         _methods-bind243893_
                                                         _slots-bind243916_
                                                         _class-check-bind243938_
                                                         _struct-check-bind243962_
                                                         _specializer-impl244233_
                                                         _lifted-specializer-id243868_
                                                         _unchecked-specializer-impl244239_))))
                                                (let ((__tmp252068
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L242406_)))
                                                      (__tmp252067
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id243861_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp252068
                                                   '" => "
                                                   __tmp252067))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def242338_
                                                   _L242406_
                                                   _specializer-id243861_
                                                   _specializer-impl244241_
                                                   _lifted-specializer-id243868_
                                                   _unchecked-specializer-impl244239_)))))
                                        _hd243550243612_
                                        _hd243547243604_
                                        _hd243544243596_)
                                       (let ()
                                         (declare (not safe))
                                         (_g243526243556_ _g243527243559_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g243526243556_ _g243527243559_)))
                           (let ()
                             (declare (not safe))
                             (_g243526243556_ _g243527243559_)))
                       (let ()
                         (declare (not safe))
                         (_g243526243556_ _g243527243559_)))))
               (let () (declare (not safe)) (_g243526243556_ _g243527243559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g243526243556_
                                                      _g243527243559_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g243526243556_
                                              _g243527243559_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g243526243556_ _g243527243559_)))))
                           (let ()
                             (declare (not safe))
                             (_g243526243556_ _g243527243559_)))))
                   (let ()
                     (declare (not safe))
                     (_g243526243556_ _g243527243559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g243526243556_
                                                      _g243527243559_))))))
                                       (declare (not safe))
                                       (_g243525244244_ _L242405_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L242405_))
                                         (let* ((_g244247244300_
                                                 (lambda (_g244248244297_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g244248244297_))))
                                                (_g244246245572_
                                                 (lambda (_g244248244303_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g244248244303_))
                                                       (let ((_e244256244305_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g244248244303_))))
                 (let ((_hd244255244308_
                        (let () (declare (not safe)) (##car _e244256244305_)))
                       (_tl244254244310_
                        (let () (declare (not safe)) (##cdr _e244256244305_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd244255244308_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd244255244308_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244254244310_))
                               (let ((_e244259244313_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244254244310_))))
                                 (let ((_hd244258244316_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244259244313_)))
                                       (_tl244257244318_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244259244313_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd244258244316_))
                                       (let ((_e244262244321_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd244258244316_))))
                                         (let ((_hd244261244324_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e244262244321_)))
                                               (_tl244260244326_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e244262244321_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd244261244324_))
                                               (let ((_e244265244329_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd244261244324_))))
                                                 (let ((_hd244264244332_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244265244329_)))
                                                       (_tl244263244334_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244265244329_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd244264244332_))
                                                       (let ((_e244268244337_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd244264244332_))))
                 (let ((_hd244267244340_
                        (let () (declare (not safe)) (##car _e244268244337_)))
                       (_tl244266244342_
                        (let () (declare (not safe)) (##cdr _e244268244337_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244266244342_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl244263244334_))
                           (let ((_e244271244345_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl244263244334_))))
                             (let ((_hd244270244348_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244271244345_)))
                                   (_tl244269244350_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244271244345_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244270244348_))
                                   (let ((_e244274244353_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244270244348_))))
                                     (let ((_hd244273244356_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244274244353_)))
                                           (_tl244272244358_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244274244353_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd244273244356_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd244273244356_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl244272244358_))
                                                   (let ((_e244277244361_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl244272244358_))))
                                                     (let ((_hd244276244364_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244277244361_)))
                                                           (_tl244275244366_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244277244361_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd244276244364_))
                                                           (let ((_e244280244369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd244276244364_))))
                     (let ((_hd244279244372_
                            (let ()
                              (declare (not safe))
                              (##car _e244280244369_)))
                           (_tl244278244374_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244280244369_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244279244372_))
                           (let ((_e244283244377_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244279244372_))))
                             (let ((_hd244282244380_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244283244377_)))
                                   (_tl244281244382_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244283244377_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244282244380_))
                                   (let ((_e244286244385_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244282244380_))))
                                     (let ((_hd244285244388_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244286244385_)))
                                           (_tl244284244390_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244286244385_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl244284244390_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl244281244382_))
                                               (let ((_e244289244393_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl244281244382_))))
                                                 (let ((_hd244288244396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244289244393_)))
                                                       (_tl244287244398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244289244393_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl244287244398_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl244278244374_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl244275244366_))
                       (let ((_e244292244401_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl244275244366_))))
                         (let ((_hd244291244404_
                                (let ()
                                  (declare (not safe))
                                  (##car _e244292244401_)))
                               (_tl244290244406_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e244292244401_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl244290244406_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl244269244350_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244260244326_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl244257244318_))
                                           (let ((_e244295244409_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl244257244318_))))
                                             (let ((_hd244294244412_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244295244409_)))
                                                   (_tl244293244414_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244295244409_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244293244414_))
                                                   ((lambda (_L244417_
                                                             _L244418_
                                                             _L244419_
                                                             _L244420_
                                                             _L244421_)
                                                      (let* ((_g244460244522_
                                                              (lambda (_g244461244519_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g244461244519_))))
                     (_g244459245569_
                      (lambda (_g244461244525_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g244461244525_))
                            (let ((_e244469244527_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g244461244525_))))
                              (let ((_hd244468244530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244469244527_)))
                                    (_tl244467244532_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244469244527_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244468244530_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd244468244530_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244467244532_))
                                            (let ((_e244472244535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244467244532_))))
                                              (let ((_hd244471244538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244472244535_)))
                                                    (_tl244470244540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244472244535_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244470244540_))
                                                    (let ((_e244475244543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244470244540_))))
                                                      (let ((_hd244474244546_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e244475244543_)))
                    (_tl244473244548_
                     (let () (declare (not safe)) (##cdr _e244475244543_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd244474244546_))
                    (let ((_e244478244551_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd244474244546_))))
                      (let ((_hd244477244554_
                             (let ()
                               (declare (not safe))
                               (##car _e244478244551_)))
                            (_tl244476244556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244478244551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd244477244554_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd244477244554_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl244476244556_))
                                    (let ((_e244481244559_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl244476244556_))))
                                      (let ((_hd244480244562_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244481244559_)))
                                            (_tl244479244564_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244481244559_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd244480244562_))
                                            (let ((_e244484244567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd244480244562_))))
                                              (let ((_hd244483244570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244484244567_)))
                                                    (_tl244482244572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244484244567_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd244483244570_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd244483244570_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244482244572_))
                                                            (let ((_e244487244575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244482244572_))))
                      (let ((_hd244486244578_
                             (let ()
                               (declare (not safe))
                               (##car _e244487244575_)))
                            (_tl244485244580_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244487244575_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244485244580_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244479244564_))
                                (let ((_e244490244583_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244479244564_))))
                                  (let ((_hd244489244586_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244490244583_)))
                                        (_tl244488244588_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244490244583_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244489244586_))
                                        (let ((_e244493244591_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244489244586_))))
                                          (let ((_hd244492244594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244493244591_)))
                                                (_tl244491244596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244493244591_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd244492244594_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd244492244594_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl244491244596_))
                                                        (let ((_e244496244599_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl244491244596_))))
                  (let ((_hd244495244602_
                         (let () (declare (not safe)) (##car _e244496244599_)))
                        (_tl244494244604_
                         (let ()
                           (declare (not safe))
                           (##cdr _e244496244599_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244494244604_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244488244588_))
                            (let ((_e244499244607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244488244588_))))
                              (let ((_hd244498244610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244499244607_)))
                                    (_tl244497244612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244499244607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244498244610_))
                                    (let ((_e244502244615_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244498244610_))))
                                      (let ((_hd244501244618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244502244615_)))
                                            (_tl244500244620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244502244615_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244501244618_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244501244618_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244500244620_))
                                                    (let ((_e244505244623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244500244620_))))
                                                      (let ((_hd244504244626_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e244505244623_)))
                    (_tl244503244628_
                     (let () (declare (not safe)) (##cdr _e244505244623_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244503244628_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl244497244612_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl244497244612_))
                                  '1)
                            (let ((_g251944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl244497244612_
                                      '1))))
                              (begin
                                (let ((_g251945_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251944_)
                                             (##vector-length _g251944_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251945_ 2)))
                                      (error "Context expects 2 values"
                                             _g251945_)))
                                (let ((_target244506244631_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251944_ 0)))
                                      (_tl244508244633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251944_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244508244633_))
                                      (let ((_e244517244636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244508244633_))))
                                        (let ((_hd244516244639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244517244636_)))
                                              (_tl244515244641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244517244636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244515244641_))
                                              (letrec ((_loop244509244644_
                                                        (lambda (_hd244507244647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref244513244649_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd244507244647_))
                      (let ((_e244510244652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd244507244647_))))
                        (let ((_lp-hd244511244655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e244510244652_)))
                              (_lp-tl244512244657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e244510244652_))))
                          (let ((__tmp252031
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd244511244655_
                                         _kw-ref244513244649_))))
                            (declare (not safe))
                            (_loop244509244644_
                             _lp-tl244512244657_
                             __tmp252031))))
                      (let ((_kw-ref244514244660_
                             (reverse _kw-ref244513244649_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244473244548_))
                            ((lambda (_L244663_
                                      _L244664_
                                      _L244665_
                                      _L244666_
                                      _L244667_)
                               (let* ((_kw-count244718_
                                       (length (let ((__tmp251946
                                                      (lambda (_g244710244713_
                                                               _g244711244715_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244710244713_
                                                                _g244711244715_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp251946
                                                         '()
                                                         _L244664_))))
                                      (_self-index244720_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count244718_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L244419_))
                                     (let* ((_g244723244737_
                                             (lambda (_g244724244734_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244724244734_))))
                                            (_g244722244908_
                                             (lambda (_g244724244740_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244724244740_))
                                                   (let ((_e244729244742_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244724244740_))))
                                                     (let ((_hd244728244745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244729244742_)))
                                                           (_tl244727244747_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244729244742_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244727244747_))
                                                           (let ((_e244732244750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244727244747_))))
                     (let ((_hd244731244753_
                            (let ()
                              (declare (not safe))
                              (##car _e244732244750_)))
                           (_tl244730244755_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244732244750_))))
                       ((lambda (_L244758_ _L244759_)
                          (let ((_self244775_
                                 (list-ref _L244759_ _self-index244720_)))
                            (for-each
                             (lambda (_g244776244778_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g244776244778_
                                  _self244775_
                                  _method-calls242425_
                                  _slot-refs242426_
                                  _class-type-check242427_
                                  _struct-type-check242428_
                                  _struct-type-assert242429_)))
                             _L244758_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?242432_))
                                _stx242331_
                                (let* ((_specializer-id244787_
                                        (let* ((_id244781_
                                                (let ((__tmp251997
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L242406_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp251997
                                                   '"::specialize")))
                                               (_specializer-id244784_
                                                (let ((__tmp251998
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx242331_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id244781_
                                                   __tmp251998))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id244784_))
                                          _specializer-id244784_))
                                       (_lifted-specializer-id244794_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?242434_))
                                            (let* ((_id244789_
                                                    (let ((__tmp251999
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L242406_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp251999
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id244791_
                                                    (let ((__tmp252000
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx242331_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id244789_
                                                       __tmp252000))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id244791_))
                                              _lifted-specializer-id244791_)
                                            '#f))
                                       (_$t244796_
                                        (let ((__tmp252001 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252001)))
                                       (_methods244798_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls242425_)))
                                       (_$methods244802_
                                        (map (lambda (_id244800_)
                                               (let ((__tmp252002
                                                      (gensym _id244800_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252002)))
                                             _methods244798_))
                                       (_g252003_
                                        (for-each
                                         (lambda (_g244803244806_
                                                  _g244804244808_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls242425_
                                              _g244803244806_
                                              _g244804244808_)))
                                         _methods244798_
                                         _$methods244802_))
                                       (_methods-bind244819_
                                        (map (lambda (_g244811244814_
                                                      _g244812244816_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind242333_
                                                  _$t244796_
                                                  _g244811244814_
                                                  _g244812244816_)))
                                             _methods244798_
                                             _$methods244802_))
                                       (_slots244821_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs242426_)))
                                       (_$slots244825_
                                        (map (lambda (_id244823_)
                                               (let ((__tmp252004
                                                      (gensym _id244823_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252004)))
                                             _slots244821_))
                                       (_g252005_
                                        (for-each
                                         (lambda (_g244826244829_
                                                  _g244827244831_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs242426_
                                              _g244826244829_
                                              _g244827244831_)))
                                         _slots244821_
                                         _$slots244825_))
                                       (_slots-bind244842_
                                        (map (lambda (_g244834244837_
                                                      _g244835244839_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind242334_
                                                  _$t244796_
                                                  _g244834244837_
                                                  _g244835244839_)))
                                             _slots244821_
                                             _$slots244825_))
                                       (_class-check244844_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check242427_)))
                                       (_$class-check244847_
                                        (map (lambda (_g252006_)
                                               (let ((__tmp252007
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252007)))
                                             _class-check244844_))
                                       (_g252008_
                                        (for-each
                                         (lambda (_g244848244851_
                                                  _g244849244853_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check242427_
                                              _g244848244851_
                                              _g244849244853_)))
                                         _class-check244844_
                                         _$class-check244847_))
                                       (_class-check-bind244864_
                                        (map (lambda (_g244856244859_
                                                      _g244857244861_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind242335_
                                                  _$t244796_
                                                  _g244856244859_
                                                  _g244857244861_)))
                                             _class-check244844_
                                             _$class-check244847_))
                                       (_struct-check-all244866_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check242428_
                                           _struct-type-assert242429_)))
                                       (_struct-check244868_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all244866_)))
                                       (_$struct-check244871_
                                        (map (lambda (_g252009_)
                                               (let ((__tmp252010
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252010)))
                                             _struct-check244868_))
                                       (_g252011_
                                        (for-each
                                         (lambda (_g244872244875_
                                                  _g244873244877_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all244866_
                                              _g244872244875_
                                              _g244873244877_)))
                                         _struct-check244868_
                                         _$struct-check244871_))
                                       (_struct-check-bind244888_
                                        (map (lambda (_g244880244883_
                                                      _g244881244885_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind242336_
                                                  _$t244796_
                                                  _g244880244883_
                                                  _g244881244885_)))
                                             _struct-check244868_
                                             _$struct-check244871_))
                                       (_make-specializer-impl244899_
                                        (lambda (_struct-type-check1244890_
                                                 _struct-type-check2244891_)
                                          (let* ((_specializer-body244897_
                                                  (map (lambda (_g244892244894_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g244892244894_
                                                            _self244775_
                                                            _$t244796_
                                                            _method-calls242425_
                                                            _slot-refs242426_
                                                            _class-type-check242427_
                                                            _struct-type-check1244890_
                                                            _struct-type-check2244891_)))
                                                       _L244758_))
                                                 (__tmp252012
                                                  (let ((__tmp252013
                                                         (let ((__tmp252015
                                                                (let ((__tmp252016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252028
                                      (let ()
                                        (declare (not safe))
                                        (cons _L244421_ '())))
                                     (__tmp252017
                                      (let ((__tmp252018
                                             (let ((__tmp252019
                                                    (let ((__tmp252021
                                                           (let ((__tmp252022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252027
                                 (let ()
                                   (declare (not safe))
                                   (cons _L244420_ '())))
                                (__tmp252023
                                 (let ((__tmp252024
                                        (let ((__tmp252025
                                               (let ((__tmp252026
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244759_
                                                              _specializer-body244897_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252026))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252025
                                           _L244419_))))
                                   (declare (not safe))
                                   (cons __tmp252024 '()))))
                            (declare (not safe))
                            (cons __tmp252027 __tmp252023))))
                     (declare (not safe))
                     (cons __tmp252022 '())))
                  (__tmp252020
                   (let () (declare (not safe)) (cons _L244418_ '()))))
              (declare (not safe))
              (cons __tmp252021 __tmp252020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252019))))
                                        (declare (not safe))
                                        (cons __tmp252018 '()))))
                                 (declare (not safe))
                                 (cons __tmp252028 __tmp252017))))
                          (declare (not safe))
                          (cons __tmp252016 '())))
                       (__tmp252014
                        (let () (declare (not safe)) (cons _L244417_ '()))))
                   (declare (not safe))
                   (cons __tmp252015 __tmp252014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252013))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252012
                                             _stx242331_))))
                                       (_specializer-impl244901_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl244899_
                                           _struct-check-all244866_
                                           _empty242430_)))
                                       (_unchecked-specializer-impl244903_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?242433_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl244899_
                                               _empty242430_
                                               _struct-check-all244866_))
                                            '#f))
                                       (_specializer-impl244905_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl242337_
                                           _$t244796_
                                           _methods-bind244819_
                                           _slots-bind244842_
                                           _class-check-bind244864_
                                           _struct-check-bind244888_
                                           _specializer-impl244901_
                                           _lifted-specializer-id244794_
                                           _unchecked-specializer-impl244903_))))
                                  (let ((__tmp252030
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L242406_)))
                                        (__tmp252029
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id244787_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252030
                                     '" => "
                                     __tmp252029))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def242338_
                                     _L242406_
                                     _specializer-id244787_
                                     _specializer-impl244905_
                                     _lifted-specializer-id244794_
                                     _unchecked-specializer-impl244903_))))))
                        _tl244730244755_
                        _hd244731244753_)))
                   (let ()
                     (declare (not safe))
                     (_g244723244737_ _g244724244740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244723244737_
                                                      _g244724244740_))))))
                                       (declare (not safe))
                                       (_g244722244908_ _L244419_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L244419_))
                                         (let* ((_g244911244941_
                                                 (lambda (_g244912244938_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g244912244938_))))
                                                (_g244910245566_
                                                 (lambda (_g244912244944_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g244912244944_))
                                                       (let ((_e244918244946_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g244912244944_))))
                 (let ((_hd244917244949_
                        (let () (declare (not safe)) (##car _e244918244946_)))
                       (_tl244916244951_
                        (let () (declare (not safe)) (##cdr _e244918244946_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl244916244951_))
                       (let ((_e244921244954_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl244916244951_))))
                         (let ((_hd244920244957_
                                (let ()
                                  (declare (not safe))
                                  (##car _e244921244954_)))
                               (_tl244919244959_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e244921244954_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd244920244957_))
                               (let ((_e244924244962_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd244920244957_))))
                                 (let ((_hd244923244965_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244924244962_)))
                                       (_tl244922244967_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244924244962_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd244923244965_))
                                       (let ((_e244927244970_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd244923244965_))))
                                         (let ((_hd244926244973_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e244927244970_)))
                                               (_tl244925244975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e244927244970_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd244926244973_))
                                               (let ((_e244930244978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd244926244973_))))
                                                 (let ((_hd244929244981_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244930244978_)))
                                                       (_tl244928244983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244930244978_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl244928244983_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244925244975_))
                                                           (let ((_e244933244986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244925244975_))))
                     (let ((_hd244932244989_
                            (let ()
                              (declare (not safe))
                              (##car _e244933244986_)))
                           (_tl244931244991_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244933244986_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244931244991_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl244922244967_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl244919244959_))
                                   (let ((_e244936244994_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl244919244959_))))
                                     (let ((_hd244935244997_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244936244994_)))
                                           (_tl244934244999_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244936244994_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl244934244999_))
                                           ((lambda (_L245002_
                                                     _L245003_
                                                     _L245004_)
                                              (let* ((_g245027245041_
                                                      (lambda (_g245028245038_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g245028245038_))))
                                                     (_g245026245082_
                                                      (lambda (_g245028245044_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g245028245044_))
                                                            (let ((_e245033245046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g245028245044_))))
                      (let ((_hd245032245049_
                             (let ()
                               (declare (not safe))
                               (##car _e245033245046_)))
                            (_tl245031245051_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245033245046_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245031245051_))
                            (let ((_e245036245054_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245031245051_))))
                              (let ((_hd245035245057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245036245054_)))
                                    (_tl245034245059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245036245054_))))
                                ((lambda (_L245062_ _L245063_)
                                   (let ((_self245076_
                                          (list-ref
                                           _L245063_
                                           _self-index244720_)))
                                     (for-each
                                      (lambda (_g245077245079_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g245077245079_
                                           _self245076_
                                           _method-calls242425_
                                           _slot-refs242426_
                                           _class-type-check242427_
                                           _struct-type-check242428_
                                           _struct-type-assert242429_)))
                                      _L245062_)))
                                 _tl245034245059_
                                 _hd245035245057_)))
                            (let ()
                              (declare (not safe))
                              (_g245027245041_ _g245028245044_)))))
                    (let ()
                      (declare (not safe))
                      (_g245027245041_ _g245028245044_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g245026245082_ _L245003_))
                                              (let* ((_g245085245104_
                                                      (lambda (_g245086245101_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g245086245101_))))
                                                     (_g245084245209_
                                                      (lambda (_g245086245107_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g245086245107_))
                                                            (let ((_e245090245109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g245086245107_))))
                      (let ((_hd245089245112_
                             (let ()
                               (declare (not safe))
                               (##car _e245090245109_)))
                            (_tl245088245114_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245090245109_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl245088245114_))
                            (let ((_g251947_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245088245114_
                                      '0))))
                              (begin
                                (let ((_g251948_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251947_)
                                             (##vector-length _g251947_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251948_ 2)))
                                      (error "Context expects 2 values"
                                             _g251948_)))
                                (let ((_target245091245117_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251947_ 0)))
                                      (_tl245093245119_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251947_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245093245119_))
                                      (letrec ((_loop245094245122_
                                                (lambda (_hd245092245125_
                                                         _clause245098245127_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd245092245125_))
                                                      (let ((_e245095245130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd245092245125_))))
                (let ((_lp-hd245096245133_
                       (let () (declare (not safe)) (##car _e245095245130_)))
                      (_lp-tl245097245135_
                       (let () (declare (not safe)) (##cdr _e245095245130_))))
                  (let ((__tmp251950
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd245096245133_ _clause245098245127_))))
                    (declare (not safe))
                    (_loop245094245122_ _lp-tl245097245135_ __tmp251950))))
              (let ((_clause245099245138_ (reverse _clause245098245127_)))
                ((lambda (_L245141_)
                   (for-each
                    (lambda (_clause245154_)
                      (let* ((_g245156245167_
                              (lambda (_g245157245164_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g245157245164_))))
                             (_g245155245199_
                              (lambda (_g245157245170_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g245157245170_))
                                    (let ((_e245162245172_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g245157245170_))))
                                      (let ((_hd245161245175_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245162245172_)))
                                            (_tl245160245177_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245162245172_))))
                                        ((lambda (_L245180_ _L245181_)
                                           (let ((_self245193_
                                                  (list-ref
                                                   _L245181_
                                                   _self-index244720_)))
                                             (for-each
                                              (lambda (_g245194245196_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g245194245196_
                                                   _self245193_
                                                   _method-calls242425_
                                                   _slot-refs242426_
                                                   _class-type-check242427_
                                                   _struct-type-check242428_
                                                   _struct-type-assert242429_)))
                                              _L245180_)))
                                         _tl245160245177_
                                         _hd245161245175_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245156245167_ _g245157245170_))))))
                        (declare (not safe))
                        (_g245155245199_ _clause245154_)))
                    (let ((__tmp251949
                           (lambda (_g245201245204_ _g245202245206_)
                             (let ()
                               (declare (not safe))
                               (cons _g245201245204_ _g245202245206_)))))
                      (declare (not safe))
                      (foldr1 __tmp251949 '() _L245141_))))
                 _clause245099245138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop245094245122_
                                           _target245091245117_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g245085245104_ _g245086245107_))))))
                            (let ()
                              (declare (not safe))
                              (_g245085245104_ _g245086245107_)))))
                    (let ()
                      (declare (not safe))
                      (_g245085245104_ _g245086245107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g245084245209_ _L245002_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?242432_))
                                                  _stx242331_
                                                  (let* ((_specializer-id245218_
                                                          (let* ((_id245212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251951
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L242406_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251951 '"::specialize")))
                         (_specializer-id245215_
                          (let ((__tmp251952
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx242331_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245212_ __tmp251952))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id245215_))
                    _specializer-id245215_))
                 (_lifted-specializer-id245225_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?242434_))
                      (let* ((_id245220_
                              (let ((__tmp251953
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L242406_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp251953
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id245222_
                              (let ((__tmp251954
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx242331_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id245220_
                                 __tmp251954))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id245222_))
                        _lifted-specializer-id245222_)
                      '#f))
                 (_$t245227_
                  (let ((__tmp251955 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp251955)))
                 (_methods245229_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls242425_)))
                 (_$methods245233_
                  (map (lambda (_id245231_)
                         (let ((__tmp251956 (gensym _id245231_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp251956)))
                       _methods245229_))
                 (_g251957_
                  (for-each
                   (lambda (_g245234245237_ _g245235245239_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls242425_
                        _g245234245237_
                        _g245235245239_)))
                   _methods245229_
                   _$methods245233_))
                 (_methods-bind245250_
                  (map (lambda (_g245242245245_ _g245243245247_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind242333_
                            _$t245227_
                            _g245242245245_
                            _g245243245247_)))
                       _methods245229_
                       _$methods245233_))
                 (_slots245252_
                  (let () (declare (not safe)) (hash-keys _slot-refs242426_)))
                 (_$slots245256_
                  (map (lambda (_id245254_)
                         (let ((__tmp251958 (gensym _id245254_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp251958)))
                       _slots245252_))
                 (_g251959_
                  (for-each
                   (lambda (_g245257245260_ _g245258245262_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs242426_
                        _g245257245260_
                        _g245258245262_)))
                   _slots245252_
                   _$slots245256_))
                 (_slots-bind245273_
                  (map (lambda (_g245265245268_ _g245266245270_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind242334_
                            _$t245227_
                            _g245265245268_
                            _g245266245270_)))
                       _slots245252_
                       _$slots245256_))
                 (_class-check245275_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check242427_)))
                 (_$class-check245278_
                  (map (lambda (_g251960_)
                         (let ((__tmp251961 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp251961)))
                       _class-check245275_))
                 (_g251962_
                  (for-each
                   (lambda (_g245279245282_ _g245280245284_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check242427_
                        _g245279245282_
                        _g245280245284_)))
                   _class-check245275_
                   _$class-check245278_))
                 (_class-check-bind245295_
                  (map (lambda (_g245287245290_ _g245288245292_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind242335_
                            _$t245227_
                            _g245287245290_
                            _g245288245292_)))
                       _class-check245275_
                       _$class-check245278_))
                 (_struct-check-all245297_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check242428_
                     _struct-type-assert242429_)))
                 (_struct-check245299_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all245297_)))
                 (_$struct-check245302_
                  (map (lambda (_g251963_)
                         (let ((__tmp251964 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp251964)))
                       _struct-check245299_))
                 (_g251965_
                  (for-each
                   (lambda (_g245303245306_ _g245304245308_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all245297_
                        _g245303245306_
                        _g245304245308_)))
                   _struct-check245299_
                   _$struct-check245302_))
                 (_struct-check-bind245319_
                  (map (lambda (_g245311245314_ _g245312245316_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind242336_
                            _$t245227_
                            _g245311245314_
                            _g245312245316_)))
                       _struct-check245299_
                       _$struct-check245302_))
                 (_make-specializer-lambda-expr245405_
                  (lambda (_struct-type-check1245321_
                           _struct-type-check2245322_)
                    (let* ((_g245324245338_
                            (lambda (_g245325245335_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g245325245335_))))
                           (_g245323245402_
                            (lambda (_g245325245341_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g245325245341_))
                                  (let ((_e245330245343_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g245325245341_))))
                                    (let ((_hd245329245346_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245330245343_)))
                                          (_tl245328245348_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245330245343_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245328245348_))
                                          (let ((_e245333245351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245328245348_))))
                                            (let ((_hd245332245354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245333245351_)))
                                                  (_tl245331245356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245333245351_))))
                                              ((lambda (_L245359_ _L245360_)
                                                 (let* ((_self245393_
                                                         (list-ref
                                                          _L245360_
                                                          _self-index244720_))
                                                        (_body245399_
                                                         (map (lambda (_g245394245396_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g245394245396_
                           _self245393_
                           _$t245227_
                           _method-calls242425_
                           _slot-refs242426_
                           _class-type-check242427_
                           _struct-type-check1245321_
                           _struct-type-check2245322_)))
                      _L245359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251966
                                                          (let ((__tmp251967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L245360_ _body245399_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp251967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251966
                                                      _L245003_))))
                                               _tl245331245356_
                                               _hd245332245354_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g245324245338_
                                             _g245325245341_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g245324245338_ _g245325245341_))))))
                      (declare (not safe))
                      (_g245323245402_ _L245003_))))
                 (_make-specializer-case-lambda-expr245544_
                  (lambda (_struct-type-check1245407_
                           _struct-type-check2245408_)
                    (let* ((_g245410245429_
                            (lambda (_g245411245426_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g245411245426_))))
                           (_g245409245541_
                            (lambda (_g245411245432_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g245411245432_))
                                  (let ((_e245415245434_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g245411245432_))))
                                    (let ((_hd245414245437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245415245434_)))
                                          (_tl245413245439_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245415245434_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl245413245439_))
                                          (let ((_g251968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl245413245439_
                                                    '0))))
                                            (begin
                                              (let ((_g251969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g251968_)
                                                           (##vector-length
                                                            _g251968_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g251969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g251969_)))
                                              (let ((_target245416245442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g251968_
                                                        0)))
                                                    (_tl245418245444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g251968_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl245418245444_))
                                                    (letrec ((_loop245419245447_
                                                              (lambda (_hd245417245450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause245423245452_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd245417245450_))
                            (let ((_e245420245455_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd245417245450_))))
                              (let ((_lp-hd245421245458_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245420245455_)))
                                    (_lp-tl245422245460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245420245455_))))
                                (let ((__tmp251972
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd245421245458_
                                               _clause245423245452_))))
                                  (declare (not safe))
                                  (_loop245419245447_
                                   _lp-tl245422245460_
                                   __tmp251972))))
                            (let ((_clause245424245463_
                                   (reverse _clause245423245452_)))
                              ((lambda (_L245466_)
                                 (let* ((_clauses245539_
                                         (map (lambda (_clause245481_)
                                                (let* ((_g245483245494_
                                                        (lambda (_g245484245491_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g245484245491_))))
                                                       (_g245482245529_
                                                        (lambda (_g245484245497_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g245484245497_))
                      (let ((_e245489245499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g245484245497_))))
                        (let ((_hd245488245502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245489245499_)))
                              (_tl245487245504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245489245499_))))
                          ((lambda (_L245507_ _L245508_)
                             (let* ((_self245520_
                                     (list-ref _L245508_ _self-index244720_))
                                    (_body245526_
                                     (map (lambda (_g245521245523_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g245521245523_
                                               _self245520_
                                               _$t245227_
                                               _method-calls242425_
                                               _slot-refs242426_
                                               _class-type-check242427_
                                               _struct-type-check1245407_
                                               _struct-type-check2245408_)))
                                          _L245507_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L245508_ _body245526_))))
                           _tl245487245504_
                           _hd245488245502_)))
                      (let ()
                        (declare (not safe))
                        (_g245483245494_ _g245484245497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g245482245529_
                                                   _clause245481_)))
                                              (let ((__tmp251970
                                                     (lambda (_g245531245534_
                                                              _g245532245536_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g245531245534_
                                                               _g245532245536_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp251970
                                                        '()
                                                        _L245466_))))
                                        (__tmp251971
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses245539_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp251971
                                    _L245002_)))
                               _clause245424245463_))))))
              (let ()
                (declare (not safe))
                (_loop245419245447_ _target245416245442_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245410245429_
                                                       _g245411245432_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g245410245429_
                                             _g245411245432_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g245410245429_ _g245411245432_))))))
                      (declare (not safe))
                      (_g245409245541_ _L245002_))))
                 (_make-specializer-impl245549_
                  (lambda (_specializer-lambda-expr245546_
                           _specializer-case-lambda-expr245547_)
                    (let ((__tmp251973
                           (let ((__tmp251974
                                  (let ((__tmp251976
                                         (let ((__tmp251977
                                                (let ((__tmp251994
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L244421_ '())))
                                                      (__tmp251978
                                                       (let ((__tmp251979
                                                              (let ((__tmp251980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251982
                                    (let ((__tmp251983
                                           (let ((__tmp251993
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L244420_ '())))
                                                 (__tmp251984
                                                  (let ((__tmp251985
                                                         (let ((__tmp251986
                                                                (let ((__tmp251987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251989
                                      (let ((__tmp251990
                                             (let ((__tmp251992
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L245004_ '())))
                                                   (__tmp251991
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr245546_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp251992
                                                     __tmp251991))))
                                        (declare (not safe))
                                        (cons __tmp251990 '())))
                                     (__tmp251988
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr245547_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp251989 __tmp251988))))
                          (declare (not safe))
                          (cons '%#let-values __tmp251987))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp251986 _stx242331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251985 '()))))
                                             (declare (not safe))
                                             (cons __tmp251993 __tmp251984))))
                                      (declare (not safe))
                                      (cons __tmp251983 '())))
                                   (__tmp251981
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244418_ '()))))
                               (declare (not safe))
                               (cons __tmp251982 __tmp251981))))
                        (declare (not safe))
                        (cons '%#let-values __tmp251980))))
                 (declare (not safe))
                 (cons __tmp251979 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251994
                                                        __tmp251978))))
                                           (declare (not safe))
                                           (cons __tmp251977 '())))
                                        (__tmp251975
                                         (let ()
                                           (declare (not safe))
                                           (cons _L244417_ '()))))
                                    (declare (not safe))
                                    (cons __tmp251976 __tmp251975))))
                             (declare (not safe))
                             (cons '%#let-values __tmp251974))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251973 _stx242331_))))
                 (_specializer-lambda-expr245551_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr245405_
                     _struct-check-all245297_
                     _empty242430_)))
                 (_specializer-case-lambda-expr245553_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr245544_
                     _struct-check-all245297_
                     _empty242430_)))
                 (_specializer-impl245555_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl245549_
                     _specializer-lambda-expr245551_
                     _specializer-case-lambda-expr245553_)))
                 (_unchecked-specializer-lambda-expr245557_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?242433_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr245405_
                         _empty242430_
                         _struct-check-all245297_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr245559_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?242433_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr245544_
                         _empty242430_
                         _struct-check-all245297_))
                      '#f))
                 (_unchecked-specializer-impl245561_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?242433_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl245549_
                         _unchecked-specializer-lambda-expr245557_
                         _unchecked-specializer-case-lambda-expr245559_))
                      '#f))
                 (_specializer-impl245563_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl242337_
                     _$t245227_
                     _methods-bind245250_
                     _slots-bind245273_
                     _class-check-bind245295_
                     _struct-check-bind245319_
                     _specializer-impl245555_
                     _lifted-specializer-id245225_
                     _unchecked-specializer-impl245561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp251996
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L242406_)))
                                                          (__tmp251995
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id245218_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp251996
                                                       '" => "
                                                       __tmp251995))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def242338_
                                                       _L242406_
                                                       _specializer-id245218_
                                                       _specializer-impl245563_
                                                       _lifted-specializer-id245225_
                                                       _unchecked-specializer-impl245561_)))))
                                            _hd244935244997_
                                            _hd244932244989_
                                            _hd244929244981_)
                                           (let ()
                                             (declare (not safe))
                                             (_g244911244941_
                                              _g244912244944_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244911244941_ _g244912244944_)))
                               (let ()
                                 (declare (not safe))
                                 (_g244911244941_ _g244912244944_)))
                           (let ()
                             (declare (not safe))
                             (_g244911244941_ _g244912244944_)))))
                   (let ()
                     (declare (not safe))
                     (_g244911244941_ _g244912244944_)))
               (let ()
                 (declare (not safe))
                 (_g244911244941_ _g244912244944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244911244941_
                                                  _g244912244944_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g244911244941_ _g244912244944_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244911244941_ _g244912244944_)))))
                       (let ()
                         (declare (not safe))
                         (_g244911244941_ _g244912244944_)))))
               (let ()
                 (declare (not safe))
                 (_g244911244941_ _g244912244944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g244910245566_ _L244419_))
                                         _stx242331_))))
                             _hd244516244639_
                             _kw-ref244514244660_
                             _hd244504244626_
                             _hd244495244602_
                             _hd244486244578_)
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop244509244644_
                                                   _target244506244631_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g244460244522_
                                                 _g244461244525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244460244522_ _g244461244525_))))))
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_)))
                        (let ()
                          (declare (not safe))
                          (_g244460244522_ _g244461244525_)))
                    (let ()
                      (declare (not safe))
                      (_g244460244522_ _g244461244525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g244460244522_
                                                       _g244461244525_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g244460244522_
                                                   _g244461244525_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g244460244522_
                                               _g244461244525_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g244460244522_ _g244461244525_)))))
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_)))
                        (let ()
                          (declare (not safe))
                          (_g244460244522_ _g244461244525_)))))
                (let ()
                  (declare (not safe))
                  (_g244460244522_ _g244461244525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g244460244522_
                                                       _g244461244525_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g244460244522_
                                                   _g244461244525_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g244460244522_ _g244461244525_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244460244522_ _g244461244525_)))
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_)))))
                    (let ()
                      (declare (not safe))
                      (_g244460244522_ _g244461244525_)))
                (let ()
                  (declare (not safe))
                  (_g244460244522_ _g244461244525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g244460244522_
                                                       _g244461244525_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g244460244522_
                                               _g244461244525_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g244460244522_ _g244461244525_)))
                                (let ()
                                  (declare (not safe))
                                  (_g244460244522_ _g244461244525_)))
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_)))))
                    (let ()
                      (declare (not safe))
                      (_g244460244522_ _g244461244525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g244460244522_
                                                       _g244461244525_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g244460244522_
                                               _g244461244525_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g244460244522_ _g244461244525_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g244460244522_ _g244461244525_)))))
                            (let ()
                              (declare (not safe))
                              (_g244460244522_ _g244461244525_))))))
                (declare (not safe))
                (_g244459245569_ _L244418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd244294244412_
                                                    _hd244291244404_
                                                    _hd244288244396_
                                                    _hd244285244388_
                                                    _hd244267244340_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244247244300_
                                                      _g244248244303_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244247244300_
                                              _g244248244303_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g244247244300_ _g244248244303_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g244247244300_ _g244248244303_)))
                               (let ()
                                 (declare (not safe))
                                 (_g244247244300_ _g244248244303_)))))
                       (let ()
                         (declare (not safe))
                         (_g244247244300_ _g244248244303_)))
                   (let ()
                     (declare (not safe))
                     (_g244247244300_ _g244248244303_)))
               (let ()
                 (declare (not safe))
                 (_g244247244300_ _g244248244303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244247244300_
                                                  _g244248244303_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g244247244300_
                                              _g244248244303_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244247244300_ _g244248244303_)))))
                           (let ()
                             (declare (not safe))
                             (_g244247244300_ _g244248244303_)))))
                   (let ()
                     (declare (not safe))
                     (_g244247244300_ _g244248244303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244247244300_
                                                      _g244248244303_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244247244300_
                                                  _g244248244303_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g244247244300_
                                              _g244248244303_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244247244300_ _g244248244303_)))))
                           (let ()
                             (declare (not safe))
                             (_g244247244300_ _g244248244303_)))
                       (let ()
                         (declare (not safe))
                         (_g244247244300_ _g244248244303_)))))
               (let ()
                 (declare (not safe))
                 (_g244247244300_ _g244248244303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244247244300_
                                                  _g244248244303_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g244247244300_ _g244248244303_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244247244300_ _g244248244303_)))
                           (let ()
                             (declare (not safe))
                             (_g244247244300_ _g244248244303_)))
                       (let ()
                         (declare (not safe))
                         (_g244247244300_ _g244248244303_)))))
               (let ()
                 (declare (not safe))
                 (_g244247244300_ _g244248244303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g244246245572_ _L242405_))
                                         _stx242331_))))))))
                  (___kont250005250006_ (lambda () _stx242331_)))
              (let ((___match250034250035_
                     (lambda (_e242347242373_
                              _hd242346242376_
                              _tl242345242378_
                              _e242350242381_
                              _hd242349242384_
                              _tl242348242386_
                              _e242353242389_
                              _hd242352242392_
                              _tl242351242394_
                              _e242356242397_
                              _hd242355242400_
                              _tl242354242402_)
                       (let ((_L242405_ _hd242355242400_)
                             (_L242406_ _hd242352242392_))
                         (if (let ((__tmp252113
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L242406_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp252113))
                             (___kont250003250004_ _L242405_ _L242406_)
                             (___kont250005250006_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250001250002_))
                    (let ((_e242347242373_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250001250002_))))
                      (let ((_tl242345242378_
                             (let ()
                               (declare (not safe))
                               (##cdr _e242347242373_)))
                            (_hd242346242376_
                             (let ()
                               (declare (not safe))
                               (##car _e242347242373_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl242345242378_))
                            (let ((_e242350242381_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl242345242378_))))
                              (let ((_tl242348242386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242350242381_)))
                                    (_hd242349242384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242350242381_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd242349242384_))
                                    (let ((_e242353242389_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd242349242384_))))
                                      (let ((_tl242351242394_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e242353242389_)))
                                            (_hd242352242392_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e242353242389_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl242351242394_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl242348242386_))
                                                (let ((_e242356242397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl242348242386_))))
                                                  (let ((_tl242354242402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e242356242397_)))
                                                        (_hd242355242400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e242356242397_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl242354242402_))
                                                        (___match250034250035_
                                                         _e242347242373_
                                                         _hd242346242376_
                                                         _tl242345242378_
                                                         _e242350242381_
                                                         _hd242349242384_
                                                         _tl242348242386_
                                                         _e242353242389_
                                                         _hd242352242392_
                                                         _tl242351242394_
                                                         _e242356242397_
                                                         _hd242355242400_
                                                         _tl242354242402_)
                                                        (___kont250005250006_))))
                                                (___kont250005250006_))
                                            (___kont250005250006_))))
                                    (___kont250005250006_))))
                            (___kont250005250006_))))
                    (___kont250005250006_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx240601_
               _self240602_
               _methods240603_
               _slots240604_
               _class-check240605_
               _struct-check240606_
               _struct-assert240607_)
        (let* ((___stx250037250038_ _stx240601_)
               (_g240621240989_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250037250038_)))))
          (let ((___kont250039250040_
                 (lambda (_L242280_ _L242281_ _L242282_ _L242283_)
                   (let ((__tmp252114
                          (let () (declare (not safe)) (gx#stx-e _L242281_))))
                     (declare (not safe))
                     (table-set! _methods240603_ __tmp252114 '#t))
                   (for-each
                    (lambda (_g242316242318_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g242316242318_
                         _self240602_
                         _methods240603_
                         _slots240604_
                         _class-check240605_
                         _struct-check240606_
                         _struct-assert240607_)))
                    (let ((__tmp252115
                           (lambda (_g242320242323_ _g242321242325_)
                             (let ()
                               (declare (not safe))
                               (cons _g242320242323_ _g242321242325_)))))
                      (declare (not safe))
                      (foldr1 __tmp252115 '() _L242280_)))))
                (___kont250043250044_
                 (lambda (_L242115_ _L242116_ _L242117_ _L242118_ _L242119_)
                   (let ((__tmp252116
                          (let () (declare (not safe)) (gx#stx-e _L242116_))))
                     (declare (not safe))
                     (table-set! _methods240603_ __tmp252116 '#t))
                   (for-each
                    (lambda (_g242159242161_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g242159242161_
                         _self240602_
                         _methods240603_
                         _slots240604_
                         _class-check240605_
                         _struct-check240606_
                         _struct-assert240607_)))
                    (let ((__tmp252117
                           (lambda (_g242163242166_ _g242164242168_)
                             (let ()
                               (declare (not safe))
                               (cons _g242163242166_ _g242164242168_)))))
                      (declare (not safe))
                      (foldr1 __tmp252117 '() _L242115_)))))
                (___kont250047250048_
                 (lambda (_L241948_ _L241949_ _L241950_)
                   (let ((__tmp252118
                          (let () (declare (not safe)) (gx#stx-e _L241948_))))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252118 '#t))))
                (___kont250049250050_
                 (lambda (_L241825_ _L241826_ _L241827_ _L241828_)
                   (let ((__tmp252119
                          (let () (declare (not safe)) (gx#stx-e _L241826_))))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252119 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L241825_
                      _self240602_
                      _methods240603_
                      _slots240604_
                      _class-check240605_
                      _struct-check240606_
                      _struct-assert240607_))))
                (___kont250051250052_
                 (lambda (_L241709_ _L241710_)
                   (let ((__tmp252120
                          (##structure-ref
                           (let ((__tmp252121
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241710_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252121))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252120 '#t))))
                (___kont250053250054_
                 (lambda (_L241621_ _L241622_ _L241623_)
                   (let ((__tmp252122
                          (##structure-ref
                           (let ((__tmp252123
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241623_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252123))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252122 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L241621_
                      _self240602_
                      _methods240603_
                      _slots240604_
                      _class-check240605_
                      _struct-check240606_
                      _struct-assert240607_))))
                (___kont250055250056_
                 (lambda (_L241529_ _L241530_)
                   (let ((__tmp252124
                          (##structure-ref
                           (let ((__tmp252125
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241530_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252125))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252124 '#t))))
                (___kont250057250058_
                 (lambda (_L241441_ _L241442_ _L241443_)
                   (let ((__tmp252126
                          (##structure-ref
                           (let ((__tmp252127
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241443_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252127))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots240604_ __tmp252126 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L241441_
                      _self240602_
                      _methods240603_
                      _slots240604_
                      _class-check240605_
                      _struct-check240606_
                      _struct-assert240607_))))
                (___kont250059250060_
                 (lambda (_L241349_ _L241350_)
                   (let ((__tmp252128
                          (##structure-ref
                           (let ((__tmp252129
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241350_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252129))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check240605_ __tmp252128 '#t))))
                (___kont250061250062_
                 (lambda (_L241265_ _L241266_)
                   (let ((__tmp252130
                          (##structure-ref
                           (let ((__tmp252131
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L241266_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp252131))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check240606_ __tmp252130 '#t))))
                (___kont250063250064_
                 (lambda (_L241168_ _L241169_)
                   (let ((_getf241202_
                          (let ((__tmp252132
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L241169_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp252132))))
                     (if (##structure-ref
                          _getf241202_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp252133
                                (##structure-ref
                                 _getf241202_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert240607_
                            __tmp252133
                            '#t))))))
                (___kont250065250066_
                 (lambda (_L241065_ _L241066_ _L241067_)
                   (let ((_setf241105_
                          (let ((__tmp252134
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L241067_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp252134))))
                     (if (##structure-ref
                          _setf241105_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp252135
                                (##structure-ref
                                 _setf241105_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert240607_ __tmp252135 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L241065_
                        _self240602_
                        _methods240603_
                        _slots240604_
                        _class-check240605_
                        _struct-check240606_
                        _struct-assert240607_)))))
                (___kont250067250068_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx240601_
                      _self240602_
                      _methods240603_
                      _slots240604_
                      _class-check240605_
                      _struct-check240606_
                      _struct-assert240607_)))))
            (let* ((___match250896250897_
                    (lambda (_e240963241001_
                             _hd240962241004_
                             _tl240961241006_
                             _e240966241009_
                             _hd240965241012_
                             _tl240964241014_
                             _e240969241017_
                             _hd240968241020_
                             _tl240967241022_
                             _e240972241025_
                             _hd240971241028_
                             _tl240970241030_
                             _e240975241033_
                             _hd240974241036_
                             _tl240973241038_
                             _e240978241041_
                             _hd240977241044_
                             _tl240976241046_
                             _e240981241049_
                             _hd240980241052_
                             _tl240979241054_
                             _e240984241057_
                             _hd240983241060_
                             _tl240982241062_)
                      (let ((_L241065_ _hd240983241060_)
                            (_L241066_ _hd240980241052_)
                            (_L241067_ _hd240971241028_))
                        (if (if (let ((__tmp252138
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L241066_
                                          _self240602_))))
                                  (declare (not safe))
                                  (not __tmp252138))
                                '#f
                                (let ((_$e241094_
                                       (let ((__tmp252136
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L241067_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp252136))))
                                  (and _$e241094_
                                       ((lambda (_t241097_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t241097_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t241098241100_
                                                      (let ((__tmp252137
                                                             (##structure-ref
                                                              _t241097_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp252137))))
                                                 (and _struct-t241098241100_
                                                      (let ((_struct-t241103_
                                                             _struct-t241098241100_))
                                                        (##structure-ref
                                                         _struct-t241103_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e241094_))))
                            (___kont250065250066_
                             _L241065_
                             _L241066_
                             _L241067_)
                            (___kont250067250068_)))))
                   (___match250888250889_
                    (lambda (_e240963241001_
                             _hd240962241004_
                             _tl240961241006_
                             _e240966241009_
                             _hd240965241012_
                             _tl240964241014_
                             _e240969241017_
                             _hd240968241020_
                             _tl240967241022_
                             _e240972241025_
                             _hd240971241028_
                             _tl240970241030_
                             _e240975241033_
                             _hd240974241036_
                             _tl240973241038_
                             _e240978241041_
                             _hd240977241044_
                             _tl240976241046_
                             _e240981241049_
                             _hd240980241052_
                             _tl240979241054_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240973241038_))
                          (let ((_e240984241057_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240973241038_))))
                            (let ((_tl240982241062_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240984241057_)))
                                  (_hd240983241060_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240984241057_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240982241062_))
                                  (___match250896250897_
                                   _e240963241001_
                                   _hd240962241004_
                                   _tl240961241006_
                                   _e240966241009_
                                   _hd240965241012_
                                   _tl240964241014_
                                   _e240969241017_
                                   _hd240968241020_
                                   _tl240967241022_
                                   _e240972241025_
                                   _hd240971241028_
                                   _tl240970241030_
                                   _e240975241033_
                                   _hd240974241036_
                                   _tl240973241038_
                                   _e240978241041_
                                   _hd240977241044_
                                   _tl240976241046_
                                   _e240981241049_
                                   _hd240980241052_
                                   _tl240979241054_
                                   _e240984241057_
                                   _hd240983241060_
                                   _tl240982241062_)
                                  (___kont250067250068_))))
                          (___kont250067250068_))))
                   (___match250834250835_
                    (lambda (_e240939241112_
                             _hd240938241115_
                             _tl240937241117_
                             _e240942241120_
                             _hd240941241123_
                             _tl240940241125_
                             _e240945241128_
                             _hd240944241131_
                             _tl240943241133_
                             _e240948241136_
                             _hd240947241139_
                             _tl240946241141_
                             _e240951241144_
                             _hd240950241147_
                             _tl240949241149_
                             _e240954241152_
                             _hd240953241155_
                             _tl240952241157_
                             _e240957241160_
                             _hd240956241163_
                             _tl240955241165_)
                      (let ((_L241168_ _hd240956241163_)
                            (_L241169_ _hd240947241139_))
                        (if (if (let ((__tmp252141
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L241168_
                                          _self240602_))))
                                  (declare (not safe))
                                  (not __tmp252141))
                                '#f
                                (let ((_$e241191_
                                       (let ((__tmp252139
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L241169_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp252139))))
                                  (and _$e241191_
                                       ((lambda (_t241194_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t241194_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t241195241197_
                                                      (let ((__tmp252140
                                                             (##structure-ref
                                                              _t241194_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp252140))))
                                                 (and _struct-t241195241197_
                                                      (let ((_struct-t241200_
                                                             _struct-t241195241197_))
                                                        (##structure-ref
                                                         _struct-t241200_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e241191_))))
                            (___kont250063250064_ _L241168_ _L241169_)
                            (___kont250067250068_)))))
                   (___match250778250779_
                    (lambda (_e240916241209_
                             _hd240915241212_
                             _tl240914241214_
                             _e240919241217_
                             _hd240918241220_
                             _tl240917241222_
                             _e240922241225_
                             _hd240921241228_
                             _tl240920241230_
                             _e240925241233_
                             _hd240924241236_
                             _tl240923241238_
                             _e240928241241_
                             _hd240927241244_
                             _tl240926241246_
                             _e240931241249_
                             _hd240930241252_
                             _tl240929241254_
                             _e240934241257_
                             _hd240933241260_
                             _tl240932241262_)
                      (let ((_L241265_ _hd240933241260_)
                            (_L241266_ _hd240924241236_))
                        (if (and (let ((__tmp252142
                                        (let ((__tmp252143
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241266_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252143))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252142
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241265_
                                    _self240602_)))
                            (___kont250061250062_ _L241265_ _L241266_)
                            (___match250834250835_
                             _e240916241209_
                             _hd240915241212_
                             _tl240914241214_
                             _e240919241217_
                             _hd240918241220_
                             _tl240917241222_
                             _e240922241225_
                             _hd240921241228_
                             _tl240920241230_
                             _e240925241233_
                             _hd240924241236_
                             _tl240923241238_
                             _e240928241241_
                             _hd240927241244_
                             _tl240926241246_
                             _e240931241249_
                             _hd240930241252_
                             _tl240929241254_
                             _e240934241257_
                             _hd240933241260_
                             _tl240932241262_)))))
                   (___match250722250723_
                    (lambda (_e240893241293_
                             _hd240892241296_
                             _tl240891241298_
                             _e240896241301_
                             _hd240895241304_
                             _tl240894241306_
                             _e240899241309_
                             _hd240898241312_
                             _tl240897241314_
                             _e240902241317_
                             _hd240901241320_
                             _tl240900241322_
                             _e240905241325_
                             _hd240904241328_
                             _tl240903241330_
                             _e240908241333_
                             _hd240907241336_
                             _tl240906241338_
                             _e240911241341_
                             _hd240910241344_
                             _tl240909241346_)
                      (let ((_L241349_ _hd240910241344_)
                            (_L241350_ _hd240901241320_))
                        (if (and (let ((__tmp252144
                                        (let ((__tmp252145
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241350_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252145))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252144
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241349_
                                    _self240602_)))
                            (___kont250059250060_ _L241349_ _L241350_)
                            (___match250778250779_
                             _e240893241293_
                             _hd240892241296_
                             _tl240891241298_
                             _e240896241301_
                             _hd240895241304_
                             _tl240894241306_
                             _e240899241309_
                             _hd240898241312_
                             _tl240897241314_
                             _e240902241317_
                             _hd240901241320_
                             _tl240900241322_
                             _e240905241325_
                             _hd240904241328_
                             _tl240903241330_
                             _e240908241333_
                             _hd240907241336_
                             _tl240906241338_
                             _e240911241341_
                             _hd240910241344_
                             _tl240909241346_)))))
                   (___match250720250721_
                    (lambda (_e240893241293_
                             _hd240892241296_
                             _tl240891241298_
                             _e240896241301_
                             _hd240895241304_
                             _tl240894241306_
                             _e240899241309_
                             _hd240898241312_
                             _tl240897241314_
                             _e240902241317_
                             _hd240901241320_
                             _tl240900241322_
                             _e240905241325_
                             _hd240904241328_
                             _tl240903241330_
                             _e240908241333_
                             _hd240907241336_
                             _tl240906241338_
                             _e240911241341_
                             _hd240910241344_
                             _tl240909241346_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240903241330_))
                          (___match250722250723_
                           _e240893241293_
                           _hd240892241296_
                           _tl240891241298_
                           _e240896241301_
                           _hd240895241304_
                           _tl240894241306_
                           _e240899241309_
                           _hd240898241312_
                           _tl240897241314_
                           _e240902241317_
                           _hd240901241320_
                           _tl240900241322_
                           _e240905241325_
                           _hd240904241328_
                           _tl240903241330_
                           _e240908241333_
                           _hd240907241336_
                           _tl240906241338_
                           _e240911241341_
                           _hd240910241344_
                           _tl240909241346_)
                          (___match250888250889_
                           _e240893241293_
                           _hd240892241296_
                           _tl240891241298_
                           _e240896241301_
                           _hd240895241304_
                           _tl240894241306_
                           _e240899241309_
                           _hd240898241312_
                           _tl240897241314_
                           _e240902241317_
                           _hd240901241320_
                           _tl240900241322_
                           _e240905241325_
                           _hd240904241328_
                           _tl240903241330_
                           _e240908241333_
                           _hd240907241336_
                           _tl240906241338_
                           _e240911241341_
                           _hd240910241344_
                           _tl240909241346_))))
                   (___match250666250667_
                    (lambda (_e240867241377_
                             _hd240866241380_
                             _tl240865241382_
                             _e240870241385_
                             _hd240869241388_
                             _tl240868241390_
                             _e240873241393_
                             _hd240872241396_
                             _tl240871241398_
                             _e240876241401_
                             _hd240875241404_
                             _tl240874241406_
                             _e240879241409_
                             _hd240878241412_
                             _tl240877241414_
                             _e240882241417_
                             _hd240881241420_
                             _tl240880241422_
                             _e240885241425_
                             _hd240884241428_
                             _tl240883241430_
                             _e240888241433_
                             _hd240887241436_
                             _tl240886241438_)
                      (let ((_L241441_ _hd240887241436_)
                            (_L241442_ _hd240884241428_)
                            (_L241443_ _hd240875241404_))
                        (if (and (let ((__tmp252146
                                        (let ((__tmp252147
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241443_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252147))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252146
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241442_
                                    _self240602_)))
                            (___kont250057250058_
                             _L241441_
                             _L241442_
                             _L241443_)
                            (___match250896250897_
                             _e240867241377_
                             _hd240866241380_
                             _tl240865241382_
                             _e240870241385_
                             _hd240869241388_
                             _tl240868241390_
                             _e240873241393_
                             _hd240872241396_
                             _tl240871241398_
                             _e240876241401_
                             _hd240875241404_
                             _tl240874241406_
                             _e240879241409_
                             _hd240878241412_
                             _tl240877241414_
                             _e240882241417_
                             _hd240881241420_
                             _tl240880241422_
                             _e240885241425_
                             _hd240884241428_
                             _tl240883241430_
                             _e240888241433_
                             _hd240887241436_
                             _tl240886241438_)))))
                   (___match250658250659_
                    (lambda (_e240867241377_
                             _hd240866241380_
                             _tl240865241382_
                             _e240870241385_
                             _hd240869241388_
                             _tl240868241390_
                             _e240873241393_
                             _hd240872241396_
                             _tl240871241398_
                             _e240876241401_
                             _hd240875241404_
                             _tl240874241406_
                             _e240879241409_
                             _hd240878241412_
                             _tl240877241414_
                             _e240882241417_
                             _hd240881241420_
                             _tl240880241422_
                             _e240885241425_
                             _hd240884241428_
                             _tl240883241430_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240877241414_))
                          (let ((_e240888241433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240877241414_))))
                            (let ((_tl240886241438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240888241433_)))
                                  (_hd240887241436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240888241433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240886241438_))
                                  (___match250666250667_
                                   _e240867241377_
                                   _hd240866241380_
                                   _tl240865241382_
                                   _e240870241385_
                                   _hd240869241388_
                                   _tl240868241390_
                                   _e240873241393_
                                   _hd240872241396_
                                   _tl240871241398_
                                   _e240876241401_
                                   _hd240875241404_
                                   _tl240874241406_
                                   _e240879241409_
                                   _hd240878241412_
                                   _tl240877241414_
                                   _e240882241417_
                                   _hd240881241420_
                                   _tl240880241422_
                                   _e240885241425_
                                   _hd240884241428_
                                   _tl240883241430_
                                   _e240888241433_
                                   _hd240887241436_
                                   _tl240886241438_)
                                  (___kont250067250068_))))
                          (___match250720250721_
                           _e240867241377_
                           _hd240866241380_
                           _tl240865241382_
                           _e240870241385_
                           _hd240869241388_
                           _tl240868241390_
                           _e240873241393_
                           _hd240872241396_
                           _tl240871241398_
                           _e240876241401_
                           _hd240875241404_
                           _tl240874241406_
                           _e240879241409_
                           _hd240878241412_
                           _tl240877241414_
                           _e240882241417_
                           _hd240881241420_
                           _tl240880241422_
                           _e240885241425_
                           _hd240884241428_
                           _tl240883241430_))))
                   (___match250604250605_
                    (lambda (_e240843241473_
                             _hd240842241476_
                             _tl240841241478_
                             _e240846241481_
                             _hd240845241484_
                             _tl240844241486_
                             _e240849241489_
                             _hd240848241492_
                             _tl240847241494_
                             _e240852241497_
                             _hd240851241500_
                             _tl240850241502_
                             _e240855241505_
                             _hd240854241508_
                             _tl240853241510_
                             _e240858241513_
                             _hd240857241516_
                             _tl240856241518_
                             _e240861241521_
                             _hd240860241524_
                             _tl240859241526_)
                      (let ((_L241529_ _hd240860241524_)
                            (_L241530_ _hd240851241500_))
                        (if (and (let ((__tmp252148
                                        (let ((__tmp252149
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241530_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252149))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252148
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241529_
                                    _self240602_)))
                            (___kont250055250056_ _L241529_ _L241530_)
                            (___match250722250723_
                             _e240843241473_
                             _hd240842241476_
                             _tl240841241478_
                             _e240846241481_
                             _hd240845241484_
                             _tl240844241486_
                             _e240849241489_
                             _hd240848241492_
                             _tl240847241494_
                             _e240852241497_
                             _hd240851241500_
                             _tl240850241502_
                             _e240855241505_
                             _hd240854241508_
                             _tl240853241510_
                             _e240858241513_
                             _hd240857241516_
                             _tl240856241518_
                             _e240861241521_
                             _hd240860241524_
                             _tl240859241526_)))))
                   (___match250602250603_
                    (lambda (_e240843241473_
                             _hd240842241476_
                             _tl240841241478_
                             _e240846241481_
                             _hd240845241484_
                             _tl240844241486_
                             _e240849241489_
                             _hd240848241492_
                             _tl240847241494_
                             _e240852241497_
                             _hd240851241500_
                             _tl240850241502_
                             _e240855241505_
                             _hd240854241508_
                             _tl240853241510_
                             _e240858241513_
                             _hd240857241516_
                             _tl240856241518_
                             _e240861241521_
                             _hd240860241524_
                             _tl240859241526_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240853241510_))
                          (___match250604250605_
                           _e240843241473_
                           _hd240842241476_
                           _tl240841241478_
                           _e240846241481_
                           _hd240845241484_
                           _tl240844241486_
                           _e240849241489_
                           _hd240848241492_
                           _tl240847241494_
                           _e240852241497_
                           _hd240851241500_
                           _tl240850241502_
                           _e240855241505_
                           _hd240854241508_
                           _tl240853241510_
                           _e240858241513_
                           _hd240857241516_
                           _tl240856241518_
                           _e240861241521_
                           _hd240860241524_
                           _tl240859241526_)
                          (___match250658250659_
                           _e240843241473_
                           _hd240842241476_
                           _tl240841241478_
                           _e240846241481_
                           _hd240845241484_
                           _tl240844241486_
                           _e240849241489_
                           _hd240848241492_
                           _tl240847241494_
                           _e240852241497_
                           _hd240851241500_
                           _tl240850241502_
                           _e240855241505_
                           _hd240854241508_
                           _tl240853241510_
                           _e240858241513_
                           _hd240857241516_
                           _tl240856241518_
                           _e240861241521_
                           _hd240860241524_
                           _tl240859241526_))))
                   (___match250548250549_
                    (lambda (_e240817241557_
                             _hd240816241560_
                             _tl240815241562_
                             _e240820241565_
                             _hd240819241568_
                             _tl240818241570_
                             _e240823241573_
                             _hd240822241576_
                             _tl240821241578_
                             _e240826241581_
                             _hd240825241584_
                             _tl240824241586_
                             _e240829241589_
                             _hd240828241592_
                             _tl240827241594_
                             _e240832241597_
                             _hd240831241600_
                             _tl240830241602_
                             _e240835241605_
                             _hd240834241608_
                             _tl240833241610_
                             _e240838241613_
                             _hd240837241616_
                             _tl240836241618_)
                      (let ((_L241621_ _hd240837241616_)
                            (_L241622_ _hd240834241608_)
                            (_L241623_ _hd240825241584_))
                        (if (and (let ((__tmp252150
                                        (let ((__tmp252151
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241623_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252151))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252150
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241622_
                                    _self240602_)))
                            (___kont250053250054_
                             _L241621_
                             _L241622_
                             _L241623_)
                            (___match250666250667_
                             _e240817241557_
                             _hd240816241560_
                             _tl240815241562_
                             _e240820241565_
                             _hd240819241568_
                             _tl240818241570_
                             _e240823241573_
                             _hd240822241576_
                             _tl240821241578_
                             _e240826241581_
                             _hd240825241584_
                             _tl240824241586_
                             _e240829241589_
                             _hd240828241592_
                             _tl240827241594_
                             _e240832241597_
                             _hd240831241600_
                             _tl240830241602_
                             _e240835241605_
                             _hd240834241608_
                             _tl240833241610_
                             _e240838241613_
                             _hd240837241616_
                             _tl240836241618_)))))
                   (___match250546250547_
                    (lambda (_e240817241557_
                             _hd240816241560_
                             _tl240815241562_
                             _e240820241565_
                             _hd240819241568_
                             _tl240818241570_
                             _e240823241573_
                             _hd240822241576_
                             _tl240821241578_
                             _e240826241581_
                             _hd240825241584_
                             _tl240824241586_
                             _e240829241589_
                             _hd240828241592_
                             _tl240827241594_
                             _e240832241597_
                             _hd240831241600_
                             _tl240830241602_
                             _e240835241605_
                             _hd240834241608_
                             _tl240833241610_
                             _e240838241613_
                             _hd240837241616_
                             _tl240836241618_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240836241618_))
                          (___match250548250549_
                           _e240817241557_
                           _hd240816241560_
                           _tl240815241562_
                           _e240820241565_
                           _hd240819241568_
                           _tl240818241570_
                           _e240823241573_
                           _hd240822241576_
                           _tl240821241578_
                           _e240826241581_
                           _hd240825241584_
                           _tl240824241586_
                           _e240829241589_
                           _hd240828241592_
                           _tl240827241594_
                           _e240832241597_
                           _hd240831241600_
                           _tl240830241602_
                           _e240835241605_
                           _hd240834241608_
                           _tl240833241610_
                           _e240838241613_
                           _hd240837241616_
                           _tl240836241618_)
                          (___kont250067250068_))))
                   (___match250540250541_
                    (lambda (_e240817241557_
                             _hd240816241560_
                             _tl240815241562_
                             _e240820241565_
                             _hd240819241568_
                             _tl240818241570_
                             _e240823241573_
                             _hd240822241576_
                             _tl240821241578_
                             _e240826241581_
                             _hd240825241584_
                             _tl240824241586_
                             _e240829241589_
                             _hd240828241592_
                             _tl240827241594_
                             _e240832241597_
                             _hd240831241600_
                             _tl240830241602_
                             _e240835241605_
                             _hd240834241608_
                             _tl240833241610_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240827241594_))
                          (let ((_e240838241613_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240827241594_))))
                            (let ((_tl240836241618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240838241613_)))
                                  (_hd240837241616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240838241613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240836241618_))
                                  (___match250548250549_
                                   _e240817241557_
                                   _hd240816241560_
                                   _tl240815241562_
                                   _e240820241565_
                                   _hd240819241568_
                                   _tl240818241570_
                                   _e240823241573_
                                   _hd240822241576_
                                   _tl240821241578_
                                   _e240826241581_
                                   _hd240825241584_
                                   _tl240824241586_
                                   _e240829241589_
                                   _hd240828241592_
                                   _tl240827241594_
                                   _e240832241597_
                                   _hd240831241600_
                                   _tl240830241602_
                                   _e240835241605_
                                   _hd240834241608_
                                   _tl240833241610_
                                   _e240838241613_
                                   _hd240837241616_
                                   _tl240836241618_)
                                  (___kont250067250068_))))
                          (___match250602250603_
                           _e240817241557_
                           _hd240816241560_
                           _tl240815241562_
                           _e240820241565_
                           _hd240819241568_
                           _tl240818241570_
                           _e240823241573_
                           _hd240822241576_
                           _tl240821241578_
                           _e240826241581_
                           _hd240825241584_
                           _tl240824241586_
                           _e240829241589_
                           _hd240828241592_
                           _tl240827241594_
                           _e240832241597_
                           _hd240831241600_
                           _tl240830241602_
                           _e240835241605_
                           _hd240834241608_
                           _tl240833241610_))))
                   (___match250486250487_
                    (lambda (_e240793241653_
                             _hd240792241656_
                             _tl240791241658_
                             _e240796241661_
                             _hd240795241664_
                             _tl240794241666_
                             _e240799241669_
                             _hd240798241672_
                             _tl240797241674_
                             _e240802241677_
                             _hd240801241680_
                             _tl240800241682_
                             _e240805241685_
                             _hd240804241688_
                             _tl240803241690_
                             _e240808241693_
                             _hd240807241696_
                             _tl240806241698_
                             _e240811241701_
                             _hd240810241704_
                             _tl240809241706_)
                      (let ((_L241709_ _hd240810241704_)
                            (_L241710_ _hd240801241680_))
                        (if (and (let ((__tmp252152
                                        (let ((__tmp252153
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L241710_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp252153))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp252152
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241709_
                                    _self240602_)))
                            (___kont250051250052_ _L241709_ _L241710_)
                            (___match250604250605_
                             _e240793241653_
                             _hd240792241656_
                             _tl240791241658_
                             _e240796241661_
                             _hd240795241664_
                             _tl240794241666_
                             _e240799241669_
                             _hd240798241672_
                             _tl240797241674_
                             _e240802241677_
                             _hd240801241680_
                             _tl240800241682_
                             _e240805241685_
                             _hd240804241688_
                             _tl240803241690_
                             _e240808241693_
                             _hd240807241696_
                             _tl240806241698_
                             _e240811241701_
                             _hd240810241704_
                             _tl240809241706_)))))
                   (___match250484250485_
                    (lambda (_e240793241653_
                             _hd240792241656_
                             _tl240791241658_
                             _e240796241661_
                             _hd240795241664_
                             _tl240794241666_
                             _e240799241669_
                             _hd240798241672_
                             _tl240797241674_
                             _e240802241677_
                             _hd240801241680_
                             _tl240800241682_
                             _e240805241685_
                             _hd240804241688_
                             _tl240803241690_
                             _e240808241693_
                             _hd240807241696_
                             _tl240806241698_
                             _e240811241701_
                             _hd240810241704_
                             _tl240809241706_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240803241690_))
                          (___match250486250487_
                           _e240793241653_
                           _hd240792241656_
                           _tl240791241658_
                           _e240796241661_
                           _hd240795241664_
                           _tl240794241666_
                           _e240799241669_
                           _hd240798241672_
                           _tl240797241674_
                           _e240802241677_
                           _hd240801241680_
                           _tl240800241682_
                           _e240805241685_
                           _hd240804241688_
                           _tl240803241690_
                           _e240808241693_
                           _hd240807241696_
                           _tl240806241698_
                           _e240811241701_
                           _hd240810241704_
                           _tl240809241706_)
                          (___match250540250541_
                           _e240793241653_
                           _hd240792241656_
                           _tl240791241658_
                           _e240796241661_
                           _hd240795241664_
                           _tl240794241666_
                           _e240799241669_
                           _hd240798241672_
                           _tl240797241674_
                           _e240802241677_
                           _hd240801241680_
                           _tl240800241682_
                           _e240805241685_
                           _hd240804241688_
                           _tl240803241690_
                           _e240808241693_
                           _hd240807241696_
                           _tl240806241698_
                           _e240811241701_
                           _hd240810241704_
                           _tl240809241706_))))
                   (___match250430250431_
                    (lambda (_e240758241737_
                             _hd240757241740_
                             _tl240756241742_
                             _e240761241745_
                             _hd240760241748_
                             _tl240759241750_
                             _e240764241753_
                             _hd240763241756_
                             _tl240762241758_
                             _e240767241761_
                             _hd240766241764_
                             _tl240765241766_
                             _e240770241769_
                             _hd240769241772_
                             _tl240768241774_
                             _e240773241777_
                             _hd240772241780_
                             _tl240771241782_
                             _e240776241785_
                             _hd240775241788_
                             _tl240774241790_
                             _e240779241793_
                             _hd240778241796_
                             _tl240777241798_
                             _e240782241801_
                             _hd240781241804_
                             _tl240780241806_
                             _e240785241809_
                             _hd240784241812_
                             _tl240783241814_
                             _e240788241817_
                             _hd240787241820_
                             _tl240786241822_)
                      (let ((_L241825_ _hd240787241820_)
                            (_L241826_ _hd240784241812_)
                            (_L241827_ _hd240775241788_)
                            (_L241828_ _hd240766241764_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L241828_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L241828_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241827_
                                    _self240602_)))
                            (___kont250049250050_
                             _L241825_
                             _L241826_
                             _L241827_
                             _L241828_)
                            (___kont250067250068_)))))
                   (___match250422250423_
                    (lambda (_e240758241737_
                             _hd240757241740_
                             _tl240756241742_
                             _e240761241745_
                             _hd240760241748_
                             _tl240759241750_
                             _e240764241753_
                             _hd240763241756_
                             _tl240762241758_
                             _e240767241761_
                             _hd240766241764_
                             _tl240765241766_
                             _e240770241769_
                             _hd240769241772_
                             _tl240768241774_
                             _e240773241777_
                             _hd240772241780_
                             _tl240771241782_
                             _e240776241785_
                             _hd240775241788_
                             _tl240774241790_
                             _e240779241793_
                             _hd240778241796_
                             _tl240777241798_
                             _e240782241801_
                             _hd240781241804_
                             _tl240780241806_
                             _e240785241809_
                             _hd240784241812_
                             _tl240783241814_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240777241798_))
                          (let ((_e240788241817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240777241798_))))
                            (let ((_tl240786241822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240788241817_)))
                                  (_hd240787241820_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240788241817_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240786241822_))
                                  (___match250430250431_
                                   _e240758241737_
                                   _hd240757241740_
                                   _tl240756241742_
                                   _e240761241745_
                                   _hd240760241748_
                                   _tl240759241750_
                                   _e240764241753_
                                   _hd240763241756_
                                   _tl240762241758_
                                   _e240767241761_
                                   _hd240766241764_
                                   _tl240765241766_
                                   _e240770241769_
                                   _hd240769241772_
                                   _tl240768241774_
                                   _e240773241777_
                                   _hd240772241780_
                                   _tl240771241782_
                                   _e240776241785_
                                   _hd240775241788_
                                   _tl240774241790_
                                   _e240779241793_
                                   _hd240778241796_
                                   _tl240777241798_
                                   _e240782241801_
                                   _hd240781241804_
                                   _tl240780241806_
                                   _e240785241809_
                                   _hd240784241812_
                                   _tl240783241814_
                                   _e240788241817_
                                   _hd240787241820_
                                   _tl240786241822_)
                                  (___kont250067250068_))))
                          (___match250546250547_
                           _e240758241737_
                           _hd240757241740_
                           _tl240756241742_
                           _e240761241745_
                           _hd240760241748_
                           _tl240759241750_
                           _e240764241753_
                           _hd240763241756_
                           _tl240762241758_
                           _e240767241761_
                           _hd240766241764_
                           _tl240765241766_
                           _e240770241769_
                           _hd240769241772_
                           _tl240768241774_
                           _e240773241777_
                           _hd240772241780_
                           _tl240771241782_
                           _e240776241785_
                           _hd240775241788_
                           _tl240774241790_
                           _e240779241793_
                           _hd240778241796_
                           _tl240777241798_))))
                   (___match250344250345_
                    (lambda (_e240724241868_
                             _hd240723241871_
                             _tl240722241873_
                             _e240727241876_
                             _hd240726241879_
                             _tl240725241881_
                             _e240730241884_
                             _hd240729241887_
                             _tl240728241889_
                             _e240733241892_
                             _hd240732241895_
                             _tl240731241897_
                             _e240736241900_
                             _hd240735241903_
                             _tl240734241905_
                             _e240739241908_
                             _hd240738241911_
                             _tl240737241913_
                             _e240742241916_
                             _hd240741241919_
                             _tl240740241921_
                             _e240745241924_
                             _hd240744241927_
                             _tl240743241929_
                             _e240748241932_
                             _hd240747241935_
                             _tl240746241937_
                             _e240751241940_
                             _hd240750241943_
                             _tl240749241945_)
                      (let ((_L241948_ _hd240750241943_)
                            (_L241949_ _hd240741241919_)
                            (_L241950_ _hd240732241895_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L241950_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L241950_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L241949_
                                    _self240602_)))
                            (___kont250047250048_
                             _L241948_
                             _L241949_
                             _L241950_)
                            (___match250548250549_
                             _e240724241868_
                             _hd240723241871_
                             _tl240722241873_
                             _e240727241876_
                             _hd240726241879_
                             _tl240725241881_
                             _e240730241884_
                             _hd240729241887_
                             _tl240728241889_
                             _e240733241892_
                             _hd240732241895_
                             _tl240731241897_
                             _e240736241900_
                             _hd240735241903_
                             _tl240734241905_
                             _e240739241908_
                             _hd240738241911_
                             _tl240737241913_
                             _e240742241916_
                             _hd240741241919_
                             _tl240740241921_
                             _e240745241924_
                             _hd240744241927_
                             _tl240743241929_)))))
                   (___match250342250343_
                    (lambda (_e240724241868_
                             _hd240723241871_
                             _tl240722241873_
                             _e240727241876_
                             _hd240726241879_
                             _tl240725241881_
                             _e240730241884_
                             _hd240729241887_
                             _tl240728241889_
                             _e240733241892_
                             _hd240732241895_
                             _tl240731241897_
                             _e240736241900_
                             _hd240735241903_
                             _tl240734241905_
                             _e240739241908_
                             _hd240738241911_
                             _tl240737241913_
                             _e240742241916_
                             _hd240741241919_
                             _tl240740241921_
                             _e240745241924_
                             _hd240744241927_
                             _tl240743241929_
                             _e240748241932_
                             _hd240747241935_
                             _tl240746241937_
                             _e240751241940_
                             _hd240750241943_
                             _tl240749241945_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl240743241929_))
                          (___match250344250345_
                           _e240724241868_
                           _hd240723241871_
                           _tl240722241873_
                           _e240727241876_
                           _hd240726241879_
                           _tl240725241881_
                           _e240730241884_
                           _hd240729241887_
                           _tl240728241889_
                           _e240733241892_
                           _hd240732241895_
                           _tl240731241897_
                           _e240736241900_
                           _hd240735241903_
                           _tl240734241905_
                           _e240739241908_
                           _hd240738241911_
                           _tl240737241913_
                           _e240742241916_
                           _hd240741241919_
                           _tl240740241921_
                           _e240745241924_
                           _hd240744241927_
                           _tl240743241929_
                           _e240748241932_
                           _hd240747241935_
                           _tl240746241937_
                           _e240751241940_
                           _hd240750241943_
                           _tl240749241945_)
                          (___match250422250423_
                           _e240724241868_
                           _hd240723241871_
                           _tl240722241873_
                           _e240727241876_
                           _hd240726241879_
                           _tl240725241881_
                           _e240730241884_
                           _hd240729241887_
                           _tl240728241889_
                           _e240733241892_
                           _hd240732241895_
                           _tl240731241897_
                           _e240736241900_
                           _hd240735241903_
                           _tl240734241905_
                           _e240739241908_
                           _hd240738241911_
                           _tl240737241913_
                           _e240742241916_
                           _hd240741241919_
                           _tl240740241921_
                           _e240745241924_
                           _hd240744241927_
                           _tl240743241929_
                           _e240748241932_
                           _hd240747241935_
                           _tl240746241937_
                           _e240751241940_
                           _hd240750241943_
                           _tl240749241945_))))
                   (___match250332250333_
                    (lambda (_e240724241868_
                             _hd240723241871_
                             _tl240722241873_
                             _e240727241876_
                             _hd240726241879_
                             _tl240725241881_
                             _e240730241884_
                             _hd240729241887_
                             _tl240728241889_
                             _e240733241892_
                             _hd240732241895_
                             _tl240731241897_
                             _e240736241900_
                             _hd240735241903_
                             _tl240734241905_
                             _e240739241908_
                             _hd240738241911_
                             _tl240737241913_
                             _e240742241916_
                             _hd240741241919_
                             _tl240740241921_
                             _e240745241924_
                             _hd240744241927_
                             _tl240743241929_
                             _e240748241932_
                             _hd240747241935_
                             _tl240746241937_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd240747241935_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240746241937_))
                              (let ((_e240751241940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240746241937_))))
                                (let ((_tl240749241945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240751241940_)))
                                      (_hd240750241943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240751241940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240749241945_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240743241929_))
                                          (___match250344250345_
                                           _e240724241868_
                                           _hd240723241871_
                                           _tl240722241873_
                                           _e240727241876_
                                           _hd240726241879_
                                           _tl240725241881_
                                           _e240730241884_
                                           _hd240729241887_
                                           _tl240728241889_
                                           _e240733241892_
                                           _hd240732241895_
                                           _tl240731241897_
                                           _e240736241900_
                                           _hd240735241903_
                                           _tl240734241905_
                                           _e240739241908_
                                           _hd240738241911_
                                           _tl240737241913_
                                           _e240742241916_
                                           _hd240741241919_
                                           _tl240740241921_
                                           _e240745241924_
                                           _hd240744241927_
                                           _tl240743241929_
                                           _e240748241932_
                                           _hd240747241935_
                                           _tl240746241937_
                                           _e240751241940_
                                           _hd240750241943_
                                           _tl240749241945_)
                                          (___match250422250423_
                                           _e240724241868_
                                           _hd240723241871_
                                           _tl240722241873_
                                           _e240727241876_
                                           _hd240726241879_
                                           _tl240725241881_
                                           _e240730241884_
                                           _hd240729241887_
                                           _tl240728241889_
                                           _e240733241892_
                                           _hd240732241895_
                                           _tl240731241897_
                                           _e240736241900_
                                           _hd240735241903_
                                           _tl240734241905_
                                           _e240739241908_
                                           _hd240738241911_
                                           _tl240737241913_
                                           _e240742241916_
                                           _hd240741241919_
                                           _tl240740241921_
                                           _e240745241924_
                                           _hd240744241927_
                                           _tl240743241929_
                                           _e240748241932_
                                           _hd240747241935_
                                           _tl240746241937_
                                           _e240751241940_
                                           _hd240750241943_
                                           _tl240749241945_))
                                      (___match250546250547_
                                       _e240724241868_
                                       _hd240723241871_
                                       _tl240722241873_
                                       _e240727241876_
                                       _hd240726241879_
                                       _tl240725241881_
                                       _e240730241884_
                                       _hd240729241887_
                                       _tl240728241889_
                                       _e240733241892_
                                       _hd240732241895_
                                       _tl240731241897_
                                       _e240736241900_
                                       _hd240735241903_
                                       _tl240734241905_
                                       _e240739241908_
                                       _hd240738241911_
                                       _tl240737241913_
                                       _e240742241916_
                                       _hd240741241919_
                                       _tl240740241921_
                                       _e240745241924_
                                       _hd240744241927_
                                       _tl240743241929_))))
                              (___match250546250547_
                               _e240724241868_
                               _hd240723241871_
                               _tl240722241873_
                               _e240727241876_
                               _hd240726241879_
                               _tl240725241881_
                               _e240730241884_
                               _hd240729241887_
                               _tl240728241889_
                               _e240733241892_
                               _hd240732241895_
                               _tl240731241897_
                               _e240736241900_
                               _hd240735241903_
                               _tl240734241905_
                               _e240739241908_
                               _hd240738241911_
                               _tl240737241913_
                               _e240742241916_
                               _hd240741241919_
                               _tl240740241921_
                               _e240745241924_
                               _hd240744241927_
                               _tl240743241929_))
                          (___match250546250547_
                           _e240724241868_
                           _hd240723241871_
                           _tl240722241873_
                           _e240727241876_
                           _hd240726241879_
                           _tl240725241881_
                           _e240730241884_
                           _hd240729241887_
                           _tl240728241889_
                           _e240733241892_
                           _hd240732241895_
                           _tl240731241897_
                           _e240736241900_
                           _hd240735241903_
                           _tl240734241905_
                           _e240739241908_
                           _hd240738241911_
                           _tl240737241913_
                           _e240742241916_
                           _hd240741241919_
                           _tl240740241921_
                           _e240745241924_
                           _hd240744241927_
                           _tl240743241929_))))
                   (___match250264250265_
                    (lambda (_e240673241987_
                             _hd240672241990_
                             _tl240671241992_
                             _e240676241995_
                             _hd240675241998_
                             _tl240674242000_
                             _e240679242003_
                             _hd240678242006_
                             _tl240677242008_
                             _e240682242011_
                             _hd240681242014_
                             _tl240680242016_
                             _e240685242019_
                             _hd240684242022_
                             _tl240683242024_
                             _e240688242027_
                             _hd240687242030_
                             _tl240686242032_
                             _e240691242035_
                             _hd240690242038_
                             _tl240689242040_
                             _e240694242043_
                             _hd240693242046_
                             _tl240692242048_
                             _e240697242051_
                             _hd240696242054_
                             _tl240695242056_
                             _e240700242059_
                             _hd240699242062_
                             _tl240698242064_
                             _e240703242067_
                             _hd240702242070_
                             _tl240701242072_
                             _e240706242075_
                             _hd240705242078_
                             _tl240704242080_
                             _e240709242083_
                             _hd240708242086_
                             _tl240707242088_
                             ___splice250045250046_
                             _target240710242091_
                             _tl240712242093_)
                      (letrec ((_loop240713242096_
                                (lambda (_hd240711242099_ _args240717242101_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240711242099_))
                                      (let ((_e240714242104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240711242099_))))
                                        (let ((_lp-tl240716242109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240714242104_)))
                                              (_lp-hd240715242107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240714242104_))))
                                          (let ((__tmp252154
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240715242107_
                                                         _args240717242101_))))
                                            (declare (not safe))
                                            (_loop240713242096_
                                             _lp-tl240716242109_
                                             __tmp252154))))
                                      (let ((_args240718242112_
                                             (reverse _args240717242101_)))
                                        (let ((_L242115_ _args240718242112_)
                                              (_L242116_ _hd240708242086_)
                                              (_L242117_ _hd240699242062_)
                                              (_L242118_ _hd240690242038_)
                                              (_L242119_ _hd240681242014_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L242119_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L242118_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L242117_
                                                      _self240602_)))
                                              (___kont250043250044_
                                               _L242115_
                                               _L242116_
                                               _L242117_
                                               _L242118_
                                               _L242119_)
                                              (___kont250067250068_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop240713242096_ _target240710242091_ '())))))
                   (___match250222250223_
                    (lambda (_e240673241987_
                             _hd240672241990_
                             _tl240671241992_
                             _e240676241995_
                             _hd240675241998_
                             _tl240674242000_
                             _e240679242003_
                             _hd240678242006_
                             _tl240677242008_
                             _e240682242011_
                             _hd240681242014_
                             _tl240680242016_
                             _e240685242019_
                             _hd240684242022_
                             _tl240683242024_
                             _e240688242027_
                             _hd240687242030_
                             _tl240686242032_
                             _e240691242035_
                             _hd240690242038_
                             _tl240689242040_
                             _e240694242043_
                             _hd240693242046_
                             _tl240692242048_
                             _e240697242051_
                             _hd240696242054_
                             _tl240695242056_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd240696242054_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240695242056_))
                              (let ((_e240700242059_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240695242056_))))
                                (let ((_tl240698242064_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240700242059_)))
                                      (_hd240699242062_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240700242059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240698242064_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240692242048_))
                                          (let ((_e240703242067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240692242048_))))
                                            (let ((_tl240701242072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240703242067_)))
                                                  (_hd240702242070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240703242067_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240702242070_))
                                                  (let ((_e240706242075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240702242070_))))
                                                    (let ((_tl240704242080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240706242075_)))
                                                          (_hd240705242078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240706242075_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd240705242078_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd240705242078_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240704242080_))
                          (let ((_e240709242083_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240704242080_))))
                            (let ((_tl240707242088_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240709242083_)))
                                  (_hd240708242086_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240709242083_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240707242088_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl240701242072_))
                                      (let ((___splice250045250046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl240701242072_
                                                '0))))
                                        (let ((_tl240712242093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice250045250046_
                                                  '1)))
                                              (_target240710242091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice250045250046_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240712242093_))
                                              (___match250264250265_
                                               _e240673241987_
                                               _hd240672241990_
                                               _tl240671241992_
                                               _e240676241995_
                                               _hd240675241998_
                                               _tl240674242000_
                                               _e240679242003_
                                               _hd240678242006_
                                               _tl240677242008_
                                               _e240682242011_
                                               _hd240681242014_
                                               _tl240680242016_
                                               _e240685242019_
                                               _hd240684242022_
                                               _tl240683242024_
                                               _e240688242027_
                                               _hd240687242030_
                                               _tl240686242032_
                                               _e240691242035_
                                               _hd240690242038_
                                               _tl240689242040_
                                               _e240694242043_
                                               _hd240693242046_
                                               _tl240692242048_
                                               _e240697242051_
                                               _hd240696242054_
                                               _tl240695242056_
                                               _e240700242059_
                                               _hd240699242062_
                                               _tl240698242064_
                                               _e240703242067_
                                               _hd240702242070_
                                               _tl240701242072_
                                               _e240706242075_
                                               _hd240705242078_
                                               _tl240704242080_
                                               _e240709242083_
                                               _hd240708242086_
                                               _tl240707242088_
                                               ___splice250045250046_
                                               _target240710242091_
                                               _tl240712242093_)
                                              (___kont250067250068_))))
                                      (___kont250067250068_))
                                  (___kont250067250068_))))
                          (___kont250067250068_))
                      (___kont250067250068_))
                  (___kont250067250068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250067250068_))))
                                          (___match250546250547_
                                           _e240673241987_
                                           _hd240672241990_
                                           _tl240671241992_
                                           _e240676241995_
                                           _hd240675241998_
                                           _tl240674242000_
                                           _e240679242003_
                                           _hd240678242006_
                                           _tl240677242008_
                                           _e240682242011_
                                           _hd240681242014_
                                           _tl240680242016_
                                           _e240685242019_
                                           _hd240684242022_
                                           _tl240683242024_
                                           _e240688242027_
                                           _hd240687242030_
                                           _tl240686242032_
                                           _e240691242035_
                                           _hd240690242038_
                                           _tl240689242040_
                                           _e240694242043_
                                           _hd240693242046_
                                           _tl240692242048_))
                                      (___match250546250547_
                                       _e240673241987_
                                       _hd240672241990_
                                       _tl240671241992_
                                       _e240676241995_
                                       _hd240675241998_
                                       _tl240674242000_
                                       _e240679242003_
                                       _hd240678242006_
                                       _tl240677242008_
                                       _e240682242011_
                                       _hd240681242014_
                                       _tl240680242016_
                                       _e240685242019_
                                       _hd240684242022_
                                       _tl240683242024_
                                       _e240688242027_
                                       _hd240687242030_
                                       _tl240686242032_
                                       _e240691242035_
                                       _hd240690242038_
                                       _tl240689242040_
                                       _e240694242043_
                                       _hd240693242046_
                                       _tl240692242048_))))
                              (___match250546250547_
                               _e240673241987_
                               _hd240672241990_
                               _tl240671241992_
                               _e240676241995_
                               _hd240675241998_
                               _tl240674242000_
                               _e240679242003_
                               _hd240678242006_
                               _tl240677242008_
                               _e240682242011_
                               _hd240681242014_
                               _tl240680242016_
                               _e240685242019_
                               _hd240684242022_
                               _tl240683242024_
                               _e240688242027_
                               _hd240687242030_
                               _tl240686242032_
                               _e240691242035_
                               _hd240690242038_
                               _tl240689242040_
                               _e240694242043_
                               _hd240693242046_
                               _tl240692242048_))
                          (___match250332250333_
                           _e240673241987_
                           _hd240672241990_
                           _tl240671241992_
                           _e240676241995_
                           _hd240675241998_
                           _tl240674242000_
                           _e240679242003_
                           _hd240678242006_
                           _tl240677242008_
                           _e240682242011_
                           _hd240681242014_
                           _tl240680242016_
                           _e240685242019_
                           _hd240684242022_
                           _tl240683242024_
                           _e240688242027_
                           _hd240687242030_
                           _tl240686242032_
                           _e240691242035_
                           _hd240690242038_
                           _tl240689242040_
                           _e240694242043_
                           _hd240693242046_
                           _tl240692242048_
                           _e240697242051_
                           _hd240696242054_
                           _tl240695242056_))))
                   (___match250154250155_
                    (lambda (_e240629242176_
                             _hd240628242179_
                             _tl240627242181_
                             _e240632242184_
                             _hd240631242187_
                             _tl240630242189_
                             _e240635242192_
                             _hd240634242195_
                             _tl240633242197_
                             _e240638242200_
                             _hd240637242203_
                             _tl240636242205_
                             _e240641242208_
                             _hd240640242211_
                             _tl240639242213_
                             _e240644242216_
                             _hd240643242219_
                             _tl240642242221_
                             _e240647242224_
                             _hd240646242227_
                             _tl240645242229_
                             _e240650242232_
                             _hd240649242235_
                             _tl240648242237_
                             _e240653242240_
                             _hd240652242243_
                             _tl240651242245_
                             _e240656242248_
                             _hd240655242251_
                             _tl240654242253_
                             ___splice250041250042_
                             _target240657242256_
                             _tl240659242258_)
                      (letrec ((_loop240660242261_
                                (lambda (_hd240658242264_ _args240664242266_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240658242264_))
                                      (let ((_e240661242269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240658242264_))))
                                        (let ((_lp-tl240663242274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240661242269_)))
                                              (_lp-hd240662242272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240661242269_))))
                                          (let ((__tmp252155
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240662242272_
                                                         _args240664242266_))))
                                            (declare (not safe))
                                            (_loop240660242261_
                                             _lp-tl240663242274_
                                             __tmp252155))))
                                      (let ((_args240665242277_
                                             (reverse _args240664242266_)))
                                        (let ((_L242280_ _args240665242277_)
                                              (_L242281_ _hd240655242251_)
                                              (_L242282_ _hd240646242227_)
                                              (_L242283_ _hd240637242203_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L242283_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L242282_
                                                      _self240602_)))
                                              (___kont250039250040_
                                               _L242280_
                                               _L242281_
                                               _L242282_
                                               _L242283_)
                                              (___match250342250343_
                                               _e240629242176_
                                               _hd240628242179_
                                               _tl240627242181_
                                               _e240632242184_
                                               _hd240631242187_
                                               _tl240630242189_
                                               _e240635242192_
                                               _hd240634242195_
                                               _tl240633242197_
                                               _e240638242200_
                                               _hd240637242203_
                                               _tl240636242205_
                                               _e240641242208_
                                               _hd240640242211_
                                               _tl240639242213_
                                               _e240644242216_
                                               _hd240643242219_
                                               _tl240642242221_
                                               _e240647242224_
                                               _hd240646242227_
                                               _tl240645242229_
                                               _e240650242232_
                                               _hd240649242235_
                                               _tl240648242237_
                                               _e240653242240_
                                               _hd240652242243_
                                               _tl240651242245_
                                               _e240656242248_
                                               _hd240655242251_
                                               _tl240654242253_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop240660242261_ _target240657242256_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250037250038_))
                  (let ((_e240629242176_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250037250038_))))
                    (let ((_tl240627242181_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240629242176_)))
                          (_hd240628242179_
                           (let ()
                             (declare (not safe))
                             (##car _e240629242176_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240627242181_))
                          (let ((_e240632242184_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240627242181_))))
                            (let ((_tl240630242189_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240632242184_)))
                                  (_hd240631242187_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240632242184_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd240631242187_))
                                  (let ((_e240635242192_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd240631242187_))))
                                    (let ((_tl240633242197_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240635242192_)))
                                          (_hd240634242195_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240635242192_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd240634242195_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd240634242195_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240633242197_))
                                                  (let ((_e240638242200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240633242197_))))
                                                    (let ((_tl240636242205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240638242200_)))
                                                          (_hd240637242203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240638242200_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl240636242205_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl240630242189_))
                      (let ((_e240641242208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl240630242189_))))
                        (let ((_tl240639242213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240641242208_)))
                              (_hd240640242211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240641242208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd240640242211_))
                              (let ((_e240644242216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd240640242211_))))
                                (let ((_tl240642242221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240644242216_)))
                                      (_hd240643242219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240644242216_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd240643242219_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd240643242219_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240642242221_))
                                              (let ((_e240647242224_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240642242221_))))
                                                (let ((_tl240645242229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240647242224_)))
                                                      (_hd240646242227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240647242224_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240645242229_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240639242213_))
                                                          (let ((_e240650242232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240639242213_))))
                    (let ((_tl240648242237_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240650242232_)))
                          (_hd240649242235_
                           (let ()
                             (declare (not safe))
                             (##car _e240650242232_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240649242235_))
                          (let ((_e240653242240_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240649242235_))))
                            (let ((_tl240651242245_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240653242240_)))
                                  (_hd240652242243_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240653242240_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240652242243_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd240652242243_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240651242245_))
                                          (let ((_e240656242248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240651242245_))))
                                            (let ((_tl240654242253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240656242248_)))
                                                  (_hd240655242251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240656242248_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240654242253_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl240648242237_))
                                                      (let ((___splice250041250042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl240648242237_ '0))))
                (let ((_tl240659242258_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice250041250042_ '1)))
                      (_target240657242256_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice250041250042_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl240659242258_))
                      (___match250154250155_
                       _e240629242176_
                       _hd240628242179_
                       _tl240627242181_
                       _e240632242184_
                       _hd240631242187_
                       _tl240630242189_
                       _e240635242192_
                       _hd240634242195_
                       _tl240633242197_
                       _e240638242200_
                       _hd240637242203_
                       _tl240636242205_
                       _e240641242208_
                       _hd240640242211_
                       _tl240639242213_
                       _e240644242216_
                       _hd240643242219_
                       _tl240642242221_
                       _e240647242224_
                       _hd240646242227_
                       _tl240645242229_
                       _e240650242232_
                       _hd240649242235_
                       _tl240648242237_
                       _e240653242240_
                       _hd240652242243_
                       _tl240651242245_
                       _e240656242248_
                       _hd240655242251_
                       _tl240654242253_
                       ___splice250041250042_
                       _target240657242256_
                       _tl240659242258_)
                      (___match250342250343_
                       _e240629242176_
                       _hd240628242179_
                       _tl240627242181_
                       _e240632242184_
                       _hd240631242187_
                       _tl240630242189_
                       _e240635242192_
                       _hd240634242195_
                       _tl240633242197_
                       _e240638242200_
                       _hd240637242203_
                       _tl240636242205_
                       _e240641242208_
                       _hd240640242211_
                       _tl240639242213_
                       _e240644242216_
                       _hd240643242219_
                       _tl240642242221_
                       _e240647242224_
                       _hd240646242227_
                       _tl240645242229_
                       _e240650242232_
                       _hd240649242235_
                       _tl240648242237_
                       _e240653242240_
                       _hd240652242243_
                       _tl240651242245_
                       _e240656242248_
                       _hd240655242251_
                       _tl240654242253_))))
              (___match250342250343_
               _e240629242176_
               _hd240628242179_
               _tl240627242181_
               _e240632242184_
               _hd240631242187_
               _tl240630242189_
               _e240635242192_
               _hd240634242195_
               _tl240633242197_
               _e240638242200_
               _hd240637242203_
               _tl240636242205_
               _e240641242208_
               _hd240640242211_
               _tl240639242213_
               _e240644242216_
               _hd240643242219_
               _tl240642242221_
               _e240647242224_
               _hd240646242227_
               _tl240645242229_
               _e240650242232_
               _hd240649242235_
               _tl240648242237_
               _e240653242240_
               _hd240652242243_
               _tl240651242245_
               _e240656242248_
               _hd240655242251_
               _tl240654242253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250546250547_
                                                   _e240629242176_
                                                   _hd240628242179_
                                                   _tl240627242181_
                                                   _e240632242184_
                                                   _hd240631242187_
                                                   _tl240630242189_
                                                   _e240635242192_
                                                   _hd240634242195_
                                                   _tl240633242197_
                                                   _e240638242200_
                                                   _hd240637242203_
                                                   _tl240636242205_
                                                   _e240641242208_
                                                   _hd240640242211_
                                                   _tl240639242213_
                                                   _e240644242216_
                                                   _hd240643242219_
                                                   _tl240642242221_
                                                   _e240647242224_
                                                   _hd240646242227_
                                                   _tl240645242229_
                                                   _e240650242232_
                                                   _hd240649242235_
                                                   _tl240648242237_))))
                                          (___match250546250547_
                                           _e240629242176_
                                           _hd240628242179_
                                           _tl240627242181_
                                           _e240632242184_
                                           _hd240631242187_
                                           _tl240630242189_
                                           _e240635242192_
                                           _hd240634242195_
                                           _tl240633242197_
                                           _e240638242200_
                                           _hd240637242203_
                                           _tl240636242205_
                                           _e240641242208_
                                           _hd240640242211_
                                           _tl240639242213_
                                           _e240644242216_
                                           _hd240643242219_
                                           _tl240642242221_
                                           _e240647242224_
                                           _hd240646242227_
                                           _tl240645242229_
                                           _e240650242232_
                                           _hd240649242235_
                                           _tl240648242237_))
                                      (___match250222250223_
                                       _e240629242176_
                                       _hd240628242179_
                                       _tl240627242181_
                                       _e240632242184_
                                       _hd240631242187_
                                       _tl240630242189_
                                       _e240635242192_
                                       _hd240634242195_
                                       _tl240633242197_
                                       _e240638242200_
                                       _hd240637242203_
                                       _tl240636242205_
                                       _e240641242208_
                                       _hd240640242211_
                                       _tl240639242213_
                                       _e240644242216_
                                       _hd240643242219_
                                       _tl240642242221_
                                       _e240647242224_
                                       _hd240646242227_
                                       _tl240645242229_
                                       _e240650242232_
                                       _hd240649242235_
                                       _tl240648242237_
                                       _e240653242240_
                                       _hd240652242243_
                                       _tl240651242245_))
                                  (___match250546250547_
                                   _e240629242176_
                                   _hd240628242179_
                                   _tl240627242181_
                                   _e240632242184_
                                   _hd240631242187_
                                   _tl240630242189_
                                   _e240635242192_
                                   _hd240634242195_
                                   _tl240633242197_
                                   _e240638242200_
                                   _hd240637242203_
                                   _tl240636242205_
                                   _e240641242208_
                                   _hd240640242211_
                                   _tl240639242213_
                                   _e240644242216_
                                   _hd240643242219_
                                   _tl240642242221_
                                   _e240647242224_
                                   _hd240646242227_
                                   _tl240645242229_
                                   _e240650242232_
                                   _hd240649242235_
                                   _tl240648242237_))))
                          (___match250546250547_
                           _e240629242176_
                           _hd240628242179_
                           _tl240627242181_
                           _e240632242184_
                           _hd240631242187_
                           _tl240630242189_
                           _e240635242192_
                           _hd240634242195_
                           _tl240633242197_
                           _e240638242200_
                           _hd240637242203_
                           _tl240636242205_
                           _e240641242208_
                           _hd240640242211_
                           _tl240639242213_
                           _e240644242216_
                           _hd240643242219_
                           _tl240642242221_
                           _e240647242224_
                           _hd240646242227_
                           _tl240645242229_
                           _e240650242232_
                           _hd240649242235_
                           _tl240648242237_))))
                  (___match250484250485_
                   _e240629242176_
                   _hd240628242179_
                   _tl240627242181_
                   _e240632242184_
                   _hd240631242187_
                   _tl240630242189_
                   _e240635242192_
                   _hd240634242195_
                   _tl240633242197_
                   _e240638242200_
                   _hd240637242203_
                   _tl240636242205_
                   _e240641242208_
                   _hd240640242211_
                   _tl240639242213_
                   _e240644242216_
                   _hd240643242219_
                   _tl240642242221_
                   _e240647242224_
                   _hd240646242227_
                   _tl240645242229_))
              (___kont250067250068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont250067250068_))
                                          (___kont250067250068_))
                                      (___kont250067250068_))))
                              (___kont250067250068_))))
                      (___kont250067250068_))
                  (___kont250067250068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont250067250068_))
                                              (___kont250067250068_))
                                          (___kont250067250068_))))
                                  (___kont250067250068_))))
                          (___kont250067250068_))))
                  (___kont250067250068_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx238784_
               _self238785_
               _$t238786_
               _methods238787_
               _slots238788_
               _class-check238789_
               _struct-check238790_
               _struct-assert238791_)
        (letrec ((_force-e238793_
                  (lambda (_what240599_)
                    (let ((__tmp252156
                           (let ((__tmp252160
                                  (let ((__tmp252161
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp252161)))
                                 (__tmp252157
                                  (let ((__tmp252158
                                         (let ((__tmp252159
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what240599_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252159))))
                                    (declare (not safe))
                                    (cons __tmp252158 '()))))
                             (declare (not safe))
                             (cons __tmp252160 __tmp252157))))
                      (declare (not safe))
                      (cons '%#call __tmp252156)))))
          (let* ((___stx250899250900_ _stx238784_)
                 (_g238807239175_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250899250900_)))))
            (let ((___kont250901250902_
                   (lambda (_L240545_ _L240546_ _L240547_ _L240548_)
                     (let ((_$method240593_
                            (let ((__tmp252162
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L240546_))))
                              (declare (not safe))
                              (table-ref _methods238787_ __tmp252162)))
                           (_args240594_
                            (map (lambda (_g240581240583_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g240581240583_
                                      _self238785_
                                      _$t238786_
                                      _methods238787_
                                      _slots238788_
                                      _class-check238789_
                                      _struct-check238790_
                                      _struct-assert238791_)))
                                 (let ((__tmp252163
                                        (lambda (_g240585240588_
                                                 _g240586240590_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g240585240588_
                                                  _g240586240590_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252163 '() _L240545_)))))
                       (let ((__tmp252164
                              (let ((__tmp252165
                                     (let ((__tmp252169
                                            (let ()
                                              (declare (not safe))
                                              (_force-e238793_
                                               _$method240593_)))
                                           (__tmp252166
                                            (let ((__tmp252167
                                                   (let ((__tmp252168
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self238785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252168))))
                                              (declare (not safe))
                                              (cons __tmp252167
                                                    _args240594_))))
                                       (declare (not safe))
                                       (cons __tmp252169 __tmp252166))))
                                (declare (not safe))
                                (cons '%#call __tmp252165))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252164 _stx238784_)))))
                  (___kont250905250906_
                   (lambda (_L240377_ _L240378_ _L240379_ _L240380_ _L240381_)
                     (let ((_$method240433_
                            (let ((__tmp252170
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L240378_))))
                              (declare (not safe))
                              (table-ref _methods238787_ __tmp252170)))
                           (_args240434_
                            (map (lambda (_g240421240423_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g240421240423_
                                      _self238785_
                                      _$t238786_
                                      _methods238787_
                                      _slots238788_
                                      _class-check238789_
                                      _struct-check238790_
                                      _struct-assert238791_)))
                                 (let ((__tmp252171
                                        (lambda (_g240425240428_
                                                 _g240426240430_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g240425240428_
                                                  _g240426240430_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp252171 '() _L240377_)))))
                       (let ((__tmp252172
                              (let ((__tmp252173
                                     (let ((__tmp252179
                                            (let ((__tmp252180
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252180)))
                                           (__tmp252174
                                            (let ((__tmp252178
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e238793_
                                                      _$method240433_)))
                                                  (__tmp252175
                                                   (let ((__tmp252176
                                                          (let ((__tmp252177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252176
                                                           _args240434_))))
                                              (declare (not safe))
                                              (cons __tmp252178 __tmp252175))))
                                       (declare (not safe))
                                       (cons __tmp252179 __tmp252174))))
                                (declare (not safe))
                                (cons '%#call __tmp252173))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252172 _stx238784_)))))
                  (___kont250909250910_
                   (lambda (_L240208_ _L240209_ _L240210_)
                     (let* ((_$field240242_
                             (let ((__tmp252181
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L240208_))))
                               (declare (not safe))
                               (table-ref _slots238788_ __tmp252181)))
                            (__tmp252182
                             (let ((__tmp252183
                                    (let ((__tmp252190
                                           (let ((__tmp252191
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t238786_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252191)))
                                          (__tmp252184
                                           (let ((__tmp252188
                                                  (let ((__tmp252189
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field240242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252189)))
                                                 (__tmp252185
                                                  (let ((__tmp252186
                                                         (let ((__tmp252187
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self238785_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252186 '()))))
                                             (declare (not safe))
                                             (cons __tmp252188 __tmp252185))))
                                      (declare (not safe))
                                      (cons __tmp252190 __tmp252184))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp252183))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp252182 _stx238784_))))
                  (___kont250911250912_
                   (lambda (_L240082_ _L240083_ _L240084_ _L240085_)
                     (let ((_$field240120_
                            (let ((__tmp252192
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L240083_))))
                              (declare (not safe))
                              (table-ref _slots238788_ __tmp252192)))
                           (_expr240121_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L240082_
                               _self238785_
                               _$t238786_
                               _methods238787_
                               _slots238788_
                               _class-check238789_
                               _struct-check238790_
                               _struct-assert238791_))))
                       (let ((__tmp252193
                              (let ((__tmp252194
                                     (let ((__tmp252202
                                            (let ((__tmp252203
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t238786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252203)))
                                           (__tmp252195
                                            (let ((__tmp252200
                                                   (let ((__tmp252201
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field240120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252201)))
                                                  (__tmp252196
                                                   (let ((__tmp252198
                                                          (let ((__tmp252199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252199)))
                 (__tmp252197
                  (let () (declare (not safe)) (cons _expr240121_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252198
                                                           __tmp252197))))
                                              (declare (not safe))
                                              (cons __tmp252200 __tmp252196))))
                                       (declare (not safe))
                                       (cons __tmp252202 __tmp252195))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252194))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252193 _stx238784_)))))
                  (___kont250913250914_
                   (lambda (_L239961_ _L239962_)
                     (let* ((_slot239984_
                             (##structure-ref
                              (let ((__tmp252204
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L239962_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252204))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field239986_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots238788_ _slot239984_))))
                       (let ((__tmp252205
                              (let ((__tmp252206
                                     (let ((__tmp252213
                                            (let ((__tmp252214
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t238786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252214)))
                                           (__tmp252207
                                            (let ((__tmp252211
                                                   (let ((__tmp252212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field239986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252212)))
                                                  (__tmp252208
                                                   (let ((__tmp252209
                                                          (let ((__tmp252210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252209 '()))))
                                              (declare (not safe))
                                              (cons __tmp252211 __tmp252208))))
                                       (declare (not safe))
                                       (cons __tmp252213 __tmp252207))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252206))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252205 _stx238784_)))))
                  (___kont250915250916_
                   (lambda (_L239866_ _L239867_ _L239868_)
                     (let* ((_slot239893_
                             (##structure-ref
                              (let ((__tmp252215
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L239868_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252215))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field239895_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots238788_ _slot239893_)))
                            (_expr239897_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L239866_
                                _self238785_
                                _$t238786_
                                _methods238787_
                                _slots238788_
                                _class-check238789_
                                _struct-check238790_
                                _struct-assert238791_))))
                       (let ((__tmp252216
                              (let ((__tmp252217
                                     (let ((__tmp252225
                                            (let ((__tmp252226
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t238786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252226)))
                                           (__tmp252218
                                            (let ((__tmp252223
                                                   (let ((__tmp252224
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field239895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252224)))
                                                  (__tmp252219
                                                   (let ((__tmp252221
                                                          (let ((__tmp252222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252222)))
                 (__tmp252220
                  (let () (declare (not safe)) (cons _expr239897_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252221
                                                           __tmp252220))))
                                              (declare (not safe))
                                              (cons __tmp252223 __tmp252219))))
                                       (declare (not safe))
                                       (cons __tmp252225 __tmp252218))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252217))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252216 _stx238784_)))))
                  (___kont250917250918_
                   (lambda (_L239769_ _L239770_)
                     (let* ((_slot239792_
                             (##structure-ref
                              (let ((__tmp252227
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L239770_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252227))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field239794_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots238788_ _slot239792_))))
                       (let ((__tmp252228
                              (let ((__tmp252229
                                     (let ((__tmp252236
                                            (let ((__tmp252237
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t238786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252237)))
                                           (__tmp252230
                                            (let ((__tmp252234
                                                   (let ((__tmp252235
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field239794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252235)))
                                                  (__tmp252231
                                                   (let ((__tmp252232
                                                          (let ((__tmp252233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252232 '()))))
                                              (declare (not safe))
                                              (cons __tmp252234 __tmp252231))))
                                       (declare (not safe))
                                       (cons __tmp252236 __tmp252230))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp252229))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252228 _stx238784_)))))
                  (___kont250919250920_
                   (lambda (_L239674_ _L239675_ _L239676_)
                     (let* ((_slot239701_
                             (##structure-ref
                              (let ((__tmp252238
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L239676_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp252238))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field239703_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots238788_ _slot239701_)))
                            (_expr239705_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L239674_
                                _self238785_
                                _$t238786_
                                _methods238787_
                                _slots238788_
                                _class-check238789_
                                _struct-check238790_
                                _struct-assert238791_))))
                       (let ((__tmp252239
                              (let ((__tmp252240
                                     (let ((__tmp252248
                                            (let ((__tmp252249
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t238786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252249)))
                                           (__tmp252241
                                            (let ((__tmp252246
                                                   (let ((__tmp252247
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field239703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252247)))
                                                  (__tmp252242
                                                   (let ((__tmp252244
                                                          (let ((__tmp252245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self238785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252245)))
                 (__tmp252243
                  (let () (declare (not safe)) (cons _expr239705_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252244
                                                           __tmp252243))))
                                              (declare (not safe))
                                              (cons __tmp252246 __tmp252242))))
                                       (declare (not safe))
                                       (cons __tmp252248 __tmp252241))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp252240))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp252239 _stx238784_)))))
                  (___kont250921250922_
                   (lambda (_L239582_ _L239583_)
                     (let ((__tmp252250
                            (let ((__tmp252251
                                   (let ((__tmp252252
                                          (##structure-ref
                                           (let ((__tmp252253
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L239583_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp252253))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check238789_
                                      __tmp252252))))
                              (declare (not safe))
                              (cons __tmp252251 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252250))))
                  (___kont250923250924_
                   (lambda (_L239491_ _L239492_)
                     (let ((_t239514_
                            (##structure-ref
                             (let ((__tmp252254
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239492_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp252254))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert238791_ _t239514_ '#f))
                           '(%#quote #t)
                           (let ((_$e239516_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check238790_
                                     _t239514_
                                     '#f))))
                             (if _$e239516_
                                 ((lambda (_checkq239519_)
                                    (let ((__tmp252255
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq239519_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp252255)))
                                  _$e239516_)
                                 _stx238784_))))))
                  (___kont250925250926_
                   (lambda (_L239376_ _L239377_)
                     (let* ((_getf239410_
                             (let ((__tmp252256
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239377_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp252256)))
                            (_t239412_
                             (##structure-ref
                              _getf239410_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf239410_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx238784_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref
                                  _struct-assert238791_
                                  _t239412_
                                  '#f))
                               (let* ((_struct-t239415_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t239412_)))
                                      (_off239417_
                                       (fx+ (##structure-ref
                                             _getf239410_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t239415_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp252285
                                        (let ((__tmp252292
                                               (let ((__tmp252293
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t239412_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252293)))
                                              (__tmp252286
                                               (let ((__tmp252290
                                                      (let ((__tmp252291
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off239417_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp252291)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252287
                                                      (let ((__tmp252288
                                                             (let ((__tmp252289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self238785_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252289))))
                (declare (not safe))
                (cons __tmp252288 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252290
                                                       __tmp252287))))
                                          (declare (not safe))
                                          (cons __tmp252292 __tmp252286))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp252285)))
                               (let ((_$e239420_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check238790_
                                         _t239412_
                                         '#f))))
                                 (if _$e239420_
                                     ((lambda (_checkq239423_)
                                        (let* ((_struct-t239425_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t239412_)))
                                               (_off239427_
                                                (fx+ (##structure-ref
                                                      _getf239410_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t239425_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp252257
                                                 (let ((__tmp252283
                                                        (let ((__tmp252284
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq239423_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp252284)))
               (__tmp252258
                (let ((__tmp252273
                       (let ((__tmp252274
                              (let ((__tmp252281
                                     (let ((__tmp252282
                                            (let ()
                                              (declare (not safe))
                                              (cons _t239412_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp252282)))
                                    (__tmp252275
                                     (let ((__tmp252279
                                            (let ((__tmp252280
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off239427_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp252280)))
                                           (__tmp252276
                                            (let ((__tmp252277
                                                   (let ((__tmp252278
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self238785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252278))))
                                              (declare (not safe))
                                              (cons __tmp252277 '()))))
                                       (declare (not safe))
                                       (cons __tmp252279 __tmp252276))))
                                (declare (not safe))
                                (cons __tmp252281 __tmp252275))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp252274)))
                      (__tmp252259
                       (let ((__tmp252260
                              (let ((__tmp252261
                                     (let ((__tmp252271
                                            (let ((__tmp252272
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252272)))
                                           (__tmp252262
                                            (let ((__tmp252269
                                                   (let ((__tmp252270
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp252270)))
                                                  (__tmp252263
                                                   (let ((__tmp252267
                                                          (let ((__tmp252268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t239412_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252268)))
                 (__tmp252264
                  (let ((__tmp252265
                         (let ((__tmp252266
                                (let ()
                                  (declare (not safe))
                                  (cons _self238785_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp252266))))
                    (declare (not safe))
                    (cons __tmp252265 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252267
                                                           __tmp252264))))
                                              (declare (not safe))
                                              (cons __tmp252269 __tmp252263))))
                                       (declare (not safe))
                                       (cons __tmp252271 __tmp252262))))
                                (declare (not safe))
                                (cons '%#call __tmp252261))))
                         (declare (not safe))
                         (cons __tmp252260 '()))))
                  (declare (not safe))
                  (cons __tmp252273 __tmp252259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp252283
                                                         __tmp252258))))
                                            (declare (not safe))
                                            (cons '%#if __tmp252257))))
                                      _$e239420_)
                                     _stx238784_)))))))
                  (___kont250927250928_
                   (lambda (_L239251_ _L239252_ _L239253_)
                     (let* ((_setf239293_
                             (let ((__tmp252294
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239253_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp252294)))
                            (_t239295_
                             (##structure-ref
                              _setf239293_
                              '1
                              gxc#!type::t
                              '#f))
                            (_expr239297_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L239251_
                                _self238785_
                                _$t238786_
                                _methods238787_
                                _slots238788_
                                _class-check238789_
                                _struct-check238790_
                                _struct-assert238791_))))
                       (if (##structure-ref
                            _setf239293_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp252344
                                  (let ((__tmp252350
                                         (let ((__tmp252353
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp252351
                                                (let ((__tmp252352
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp252352 '()))))
                                           (declare (not safe))
                                           (cons __tmp252353 __tmp252351)))
                                        (__tmp252345
                                         (let ((__tmp252347
                                                (let ((__tmp252349
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp252348
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L239252_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp252349
                                                        __tmp252348)))
                                               (__tmp252346
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr239297_ '()))))
                                           (declare (not safe))
                                           (cons __tmp252347 __tmp252346))))
                                    (declare (not safe))
                                    (cons __tmp252350 __tmp252345))))
                             (declare (not safe))
                             (cons '%#call __tmp252344))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref
                                  _struct-assert238791_
                                  _t239295_
                                  '#f))
                               (let* ((_struct-t239300_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t239295_)))
                                      (_off239302_
                                       (fx+ (##structure-ref
                                             _setf239293_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t239300_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp252334
                                        (let ((__tmp252342
                                               (let ((__tmp252343
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t239295_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252343)))
                                              (__tmp252335
                                               (let ((__tmp252340
                                                      (let ((__tmp252341
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off239302_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp252341)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252336
                                                      (let ((__tmp252338
                                                             (let ((__tmp252339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self238785_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252339)))
                    (__tmp252337
                     (let () (declare (not safe)) (cons _expr239297_ '()))))
                (declare (not safe))
                (cons __tmp252338 __tmp252337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252340
                                                       __tmp252336))))
                                          (declare (not safe))
                                          (cons __tmp252342 __tmp252335))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set!
                                         __tmp252334)))
                               (let ((_$e239305_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check238790_
                                         _t239295_
                                         '#f))))
                                 (if _$e239305_
                                     ((lambda (_checkq239308_)
                                        (let* ((_struct-t239310_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t239295_)))
                                               (_off239312_
                                                (fx+ (##structure-ref
                                                      _setf239293_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t239310_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp252305
                                                 (let ((__tmp252332
                                                        (let ((__tmp252333
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq239308_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp252333)))
               (__tmp252306
                (let ((__tmp252321
                       (let ((__tmp252322
                              (let ((__tmp252330
                                     (let ((__tmp252331
                                            (let ()
                                              (declare (not safe))
                                              (cons _t239295_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp252331)))
                                    (__tmp252323
                                     (let ((__tmp252328
                                            (let ((__tmp252329
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off239312_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp252329)))
                                           (__tmp252324
                                            (let ((__tmp252326
                                                   (let ((__tmp252327
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self238785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp252327)))
                                                  (__tmp252325
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr239297_ '()))))
                                              (declare (not safe))
                                              (cons __tmp252326 __tmp252325))))
                                       (declare (not safe))
                                       (cons __tmp252328 __tmp252324))))
                                (declare (not safe))
                                (cons __tmp252330 __tmp252323))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp252322)))
                      (__tmp252307
                       (let ((__tmp252308
                              (let ((__tmp252309
                                     (let ((__tmp252319
                                            (let ((__tmp252320
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp252320)))
                                           (__tmp252310
                                            (let ((__tmp252317
                                                   (let ((__tmp252318
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp252318)))
                                                  (__tmp252311
                                                   (let ((__tmp252315
                                                          (let ((__tmp252316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t239295_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp252316)))
                 (__tmp252312
                  (let ((__tmp252313
                         (let ((__tmp252314
                                (let ()
                                  (declare (not safe))
                                  (cons _self238785_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp252314))))
                    (declare (not safe))
                    (cons __tmp252313 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252315
                                                           __tmp252312))))
                                              (declare (not safe))
                                              (cons __tmp252317 __tmp252311))))
                                       (declare (not safe))
                                       (cons __tmp252319 __tmp252310))))
                                (declare (not safe))
                                (cons '%#call __tmp252309))))
                         (declare (not safe))
                         (cons __tmp252308 '()))))
                  (declare (not safe))
                  (cons __tmp252321 __tmp252307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp252332
                                                         __tmp252306))))
                                            (declare (not safe))
                                            (cons '%#if __tmp252305))))
                                      _$e239305_)
                                     (let ((__tmp252295
                                            (let ((__tmp252301
                                                   (let ((__tmp252304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp252302
                                                          (let ((__tmp252303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp252303 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252304
                                                           __tmp252302)))
                                                  (__tmp252296
                                                   (let ((__tmp252298
                                                          (let ((__tmp252300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp252299
                         (let () (declare (not safe)) (cons _L239252_ '()))))
                    (declare (not safe))
                    (cons __tmp252300 __tmp252299)))
                 (__tmp252297
                  (let () (declare (not safe)) (cons _expr239297_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp252298
                                                           __tmp252297))))
                                              (declare (not safe))
                                              (cons __tmp252301 __tmp252296))))
                                       (declare (not safe))
                                       (cons '%#call __tmp252295)))))))))
                  (___kont250929250930_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx238784_
                        _self238785_
                        _$t238786_
                        _methods238787_
                        _slots238788_
                        _class-check238789_
                        _struct-check238790_
                        _struct-assert238791_)))))
              (let* ((___match251758251759_
                      (lambda (_e239149239187_
                               _hd239148239190_
                               _tl239147239192_
                               _e239152239195_
                               _hd239151239198_
                               _tl239150239200_
                               _e239155239203_
                               _hd239154239206_
                               _tl239153239208_
                               _e239158239211_
                               _hd239157239214_
                               _tl239156239216_
                               _e239161239219_
                               _hd239160239222_
                               _tl239159239224_
                               _e239164239227_
                               _hd239163239230_
                               _tl239162239232_
                               _e239167239235_
                               _hd239166239238_
                               _tl239165239240_
                               _e239170239243_
                               _hd239169239246_
                               _tl239168239248_)
                        (let ((_L239251_ _hd239169239246_)
                              (_L239252_ _hd239166239238_)
                              (_L239253_ _hd239157239214_))
                          (if (if (let ((__tmp252356
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L239252_
                                            _self238785_))))
                                    (declare (not safe))
                                    (not __tmp252356))
                                  '#f
                                  (let ((_$e239282_
                                         (let ((__tmp252354
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L239253_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp252354))))
                                    (and _$e239282_
                                         ((lambda (_t239285_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t239285_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t239286239288_
                                                        (let ((__tmp252355
                                                               (##structure-ref
                                                                _t239285_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp252355))))
                                                   (and _struct-t239286239288_
                                                        (let ((_struct-t239291_
                                                               _struct-t239286239288_))
                                                          (##structure-ref
                                                           _struct-t239291_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e239282_))))
                              (___kont250927250928_
                               _L239251_
                               _L239252_
                               _L239253_)
                              (___kont250929250930_)))))
                     (___match251750251751_
                      (lambda (_e239149239187_
                               _hd239148239190_
                               _tl239147239192_
                               _e239152239195_
                               _hd239151239198_
                               _tl239150239200_
                               _e239155239203_
                               _hd239154239206_
                               _tl239153239208_
                               _e239158239211_
                               _hd239157239214_
                               _tl239156239216_
                               _e239161239219_
                               _hd239160239222_
                               _tl239159239224_
                               _e239164239227_
                               _hd239163239230_
                               _tl239162239232_
                               _e239167239235_
                               _hd239166239238_
                               _tl239165239240_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239159239224_))
                            (let ((_e239170239243_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239159239224_))))
                              (let ((_tl239168239248_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239170239243_)))
                                    (_hd239169239246_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239170239243_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239168239248_))
                                    (___match251758251759_
                                     _e239149239187_
                                     _hd239148239190_
                                     _tl239147239192_
                                     _e239152239195_
                                     _hd239151239198_
                                     _tl239150239200_
                                     _e239155239203_
                                     _hd239154239206_
                                     _tl239153239208_
                                     _e239158239211_
                                     _hd239157239214_
                                     _tl239156239216_
                                     _e239161239219_
                                     _hd239160239222_
                                     _tl239159239224_
                                     _e239164239227_
                                     _hd239163239230_
                                     _tl239162239232_
                                     _e239167239235_
                                     _hd239166239238_
                                     _tl239165239240_
                                     _e239170239243_
                                     _hd239169239246_
                                     _tl239168239248_)
                                    (___kont250929250930_))))
                            (___kont250929250930_))))
                     (___match251696251697_
                      (lambda (_e239125239320_
                               _hd239124239323_
                               _tl239123239325_
                               _e239128239328_
                               _hd239127239331_
                               _tl239126239333_
                               _e239131239336_
                               _hd239130239339_
                               _tl239129239341_
                               _e239134239344_
                               _hd239133239347_
                               _tl239132239349_
                               _e239137239352_
                               _hd239136239355_
                               _tl239135239357_
                               _e239140239360_
                               _hd239139239363_
                               _tl239138239365_
                               _e239143239368_
                               _hd239142239371_
                               _tl239141239373_)
                        (let ((_L239376_ _hd239142239371_)
                              (_L239377_ _hd239133239347_))
                          (if (if (let ((__tmp252359
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L239376_
                                            _self238785_))))
                                    (declare (not safe))
                                    (not __tmp252359))
                                  '#f
                                  (let ((_$e239399_
                                         (let ((__tmp252357
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L239377_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp252357))))
                                    (and _$e239399_
                                         ((lambda (_t239402_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t239402_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t239403239405_
                                                        (let ((__tmp252358
                                                               (##structure-ref
                                                                _t239402_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp252358))))
                                                   (and _struct-t239403239405_
                                                        (let ((_struct-t239408_
                                                               _struct-t239403239405_))
                                                          (##structure-ref
                                                           _struct-t239408_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e239399_))))
                              (___kont250925250926_ _L239376_ _L239377_)
                              (___kont250929250930_)))))
                     (___match251640251641_
                      (lambda (_e239102239435_
                               _hd239101239438_
                               _tl239100239440_
                               _e239105239443_
                               _hd239104239446_
                               _tl239103239448_
                               _e239108239451_
                               _hd239107239454_
                               _tl239106239456_
                               _e239111239459_
                               _hd239110239462_
                               _tl239109239464_
                               _e239114239467_
                               _hd239113239470_
                               _tl239112239472_
                               _e239117239475_
                               _hd239116239478_
                               _tl239115239480_
                               _e239120239483_
                               _hd239119239486_
                               _tl239118239488_)
                        (let ((_L239491_ _hd239119239486_)
                              (_L239492_ _hd239110239462_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239491_
                                      _self238785_))
                                   (let ((__tmp252360
                                          (let ((__tmp252361
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239492_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252361))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252360
                                      'gxc#!struct-pred::t)))
                              (___kont250923250924_ _L239491_ _L239492_)
                              (___match251696251697_
                               _e239102239435_
                               _hd239101239438_
                               _tl239100239440_
                               _e239105239443_
                               _hd239104239446_
                               _tl239103239448_
                               _e239108239451_
                               _hd239107239454_
                               _tl239106239456_
                               _e239111239459_
                               _hd239110239462_
                               _tl239109239464_
                               _e239114239467_
                               _hd239113239470_
                               _tl239112239472_
                               _e239117239475_
                               _hd239116239478_
                               _tl239115239480_
                               _e239120239483_
                               _hd239119239486_
                               _tl239118239488_)))))
                     (___match251584251585_
                      (lambda (_e239079239526_
                               _hd239078239529_
                               _tl239077239531_
                               _e239082239534_
                               _hd239081239537_
                               _tl239080239539_
                               _e239085239542_
                               _hd239084239545_
                               _tl239083239547_
                               _e239088239550_
                               _hd239087239553_
                               _tl239086239555_
                               _e239091239558_
                               _hd239090239561_
                               _tl239089239563_
                               _e239094239566_
                               _hd239093239569_
                               _tl239092239571_
                               _e239097239574_
                               _hd239096239577_
                               _tl239095239579_)
                        (let ((_L239582_ _hd239096239577_)
                              (_L239583_ _hd239087239553_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239582_
                                      _self238785_))
                                   (let ((__tmp252362
                                          (let ((__tmp252363
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239583_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252363))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252362
                                      'gxc#!class-pred::t)))
                              (___kont250921250922_ _L239582_ _L239583_)
                              (___match251640251641_
                               _e239079239526_
                               _hd239078239529_
                               _tl239077239531_
                               _e239082239534_
                               _hd239081239537_
                               _tl239080239539_
                               _e239085239542_
                               _hd239084239545_
                               _tl239083239547_
                               _e239088239550_
                               _hd239087239553_
                               _tl239086239555_
                               _e239091239558_
                               _hd239090239561_
                               _tl239089239563_
                               _e239094239566_
                               _hd239093239569_
                               _tl239092239571_
                               _e239097239574_
                               _hd239096239577_
                               _tl239095239579_)))))
                     (___match251582251583_
                      (lambda (_e239079239526_
                               _hd239078239529_
                               _tl239077239531_
                               _e239082239534_
                               _hd239081239537_
                               _tl239080239539_
                               _e239085239542_
                               _hd239084239545_
                               _tl239083239547_
                               _e239088239550_
                               _hd239087239553_
                               _tl239086239555_
                               _e239091239558_
                               _hd239090239561_
                               _tl239089239563_
                               _e239094239566_
                               _hd239093239569_
                               _tl239092239571_
                               _e239097239574_
                               _hd239096239577_
                               _tl239095239579_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl239089239563_))
                            (___match251584251585_
                             _e239079239526_
                             _hd239078239529_
                             _tl239077239531_
                             _e239082239534_
                             _hd239081239537_
                             _tl239080239539_
                             _e239085239542_
                             _hd239084239545_
                             _tl239083239547_
                             _e239088239550_
                             _hd239087239553_
                             _tl239086239555_
                             _e239091239558_
                             _hd239090239561_
                             _tl239089239563_
                             _e239094239566_
                             _hd239093239569_
                             _tl239092239571_
                             _e239097239574_
                             _hd239096239577_
                             _tl239095239579_)
                            (___match251750251751_
                             _e239079239526_
                             _hd239078239529_
                             _tl239077239531_
                             _e239082239534_
                             _hd239081239537_
                             _tl239080239539_
                             _e239085239542_
                             _hd239084239545_
                             _tl239083239547_
                             _e239088239550_
                             _hd239087239553_
                             _tl239086239555_
                             _e239091239558_
                             _hd239090239561_
                             _tl239089239563_
                             _e239094239566_
                             _hd239093239569_
                             _tl239092239571_
                             _e239097239574_
                             _hd239096239577_
                             _tl239095239579_))))
                     (___match251528251529_
                      (lambda (_e239053239610_
                               _hd239052239613_
                               _tl239051239615_
                               _e239056239618_
                               _hd239055239621_
                               _tl239054239623_
                               _e239059239626_
                               _hd239058239629_
                               _tl239057239631_
                               _e239062239634_
                               _hd239061239637_
                               _tl239060239639_
                               _e239065239642_
                               _hd239064239645_
                               _tl239063239647_
                               _e239068239650_
                               _hd239067239653_
                               _tl239066239655_
                               _e239071239658_
                               _hd239070239661_
                               _tl239069239663_
                               _e239074239666_
                               _hd239073239669_
                               _tl239072239671_)
                        (let ((_L239674_ _hd239073239669_)
                              (_L239675_ _hd239070239661_)
                              (_L239676_ _hd239061239637_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239675_
                                      _self238785_))
                                   (let ((__tmp252364
                                          (let ((__tmp252365
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239676_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252365))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252364
                                      'gxc#!class-setf::t)))
                              (___kont250919250920_
                               _L239674_
                               _L239675_
                               _L239676_)
                              (___match251758251759_
                               _e239053239610_
                               _hd239052239613_
                               _tl239051239615_
                               _e239056239618_
                               _hd239055239621_
                               _tl239054239623_
                               _e239059239626_
                               _hd239058239629_
                               _tl239057239631_
                               _e239062239634_
                               _hd239061239637_
                               _tl239060239639_
                               _e239065239642_
                               _hd239064239645_
                               _tl239063239647_
                               _e239068239650_
                               _hd239067239653_
                               _tl239066239655_
                               _e239071239658_
                               _hd239070239661_
                               _tl239069239663_
                               _e239074239666_
                               _hd239073239669_
                               _tl239072239671_)))))
                     (___match251520251521_
                      (lambda (_e239053239610_
                               _hd239052239613_
                               _tl239051239615_
                               _e239056239618_
                               _hd239055239621_
                               _tl239054239623_
                               _e239059239626_
                               _hd239058239629_
                               _tl239057239631_
                               _e239062239634_
                               _hd239061239637_
                               _tl239060239639_
                               _e239065239642_
                               _hd239064239645_
                               _tl239063239647_
                               _e239068239650_
                               _hd239067239653_
                               _tl239066239655_
                               _e239071239658_
                               _hd239070239661_
                               _tl239069239663_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239063239647_))
                            (let ((_e239074239666_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239063239647_))))
                              (let ((_tl239072239671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239074239666_)))
                                    (_hd239073239669_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239074239666_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239072239671_))
                                    (___match251528251529_
                                     _e239053239610_
                                     _hd239052239613_
                                     _tl239051239615_
                                     _e239056239618_
                                     _hd239055239621_
                                     _tl239054239623_
                                     _e239059239626_
                                     _hd239058239629_
                                     _tl239057239631_
                                     _e239062239634_
                                     _hd239061239637_
                                     _tl239060239639_
                                     _e239065239642_
                                     _hd239064239645_
                                     _tl239063239647_
                                     _e239068239650_
                                     _hd239067239653_
                                     _tl239066239655_
                                     _e239071239658_
                                     _hd239070239661_
                                     _tl239069239663_
                                     _e239074239666_
                                     _hd239073239669_
                                     _tl239072239671_)
                                    (___kont250929250930_))))
                            (___match251582251583_
                             _e239053239610_
                             _hd239052239613_
                             _tl239051239615_
                             _e239056239618_
                             _hd239055239621_
                             _tl239054239623_
                             _e239059239626_
                             _hd239058239629_
                             _tl239057239631_
                             _e239062239634_
                             _hd239061239637_
                             _tl239060239639_
                             _e239065239642_
                             _hd239064239645_
                             _tl239063239647_
                             _e239068239650_
                             _hd239067239653_
                             _tl239066239655_
                             _e239071239658_
                             _hd239070239661_
                             _tl239069239663_))))
                     (___match251466251467_
                      (lambda (_e239029239713_
                               _hd239028239716_
                               _tl239027239718_
                               _e239032239721_
                               _hd239031239724_
                               _tl239030239726_
                               _e239035239729_
                               _hd239034239732_
                               _tl239033239734_
                               _e239038239737_
                               _hd239037239740_
                               _tl239036239742_
                               _e239041239745_
                               _hd239040239748_
                               _tl239039239750_
                               _e239044239753_
                               _hd239043239756_
                               _tl239042239758_
                               _e239047239761_
                               _hd239046239764_
                               _tl239045239766_)
                        (let ((_L239769_ _hd239046239764_)
                              (_L239770_ _hd239037239740_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239769_
                                      _self238785_))
                                   (let ((__tmp252366
                                          (let ((__tmp252367
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239770_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252367))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252366
                                      'gxc#!class-getf::t)))
                              (___kont250917250918_ _L239769_ _L239770_)
                              (___match251584251585_
                               _e239029239713_
                               _hd239028239716_
                               _tl239027239718_
                               _e239032239721_
                               _hd239031239724_
                               _tl239030239726_
                               _e239035239729_
                               _hd239034239732_
                               _tl239033239734_
                               _e239038239737_
                               _hd239037239740_
                               _tl239036239742_
                               _e239041239745_
                               _hd239040239748_
                               _tl239039239750_
                               _e239044239753_
                               _hd239043239756_
                               _tl239042239758_
                               _e239047239761_
                               _hd239046239764_
                               _tl239045239766_)))))
                     (___match251464251465_
                      (lambda (_e239029239713_
                               _hd239028239716_
                               _tl239027239718_
                               _e239032239721_
                               _hd239031239724_
                               _tl239030239726_
                               _e239035239729_
                               _hd239034239732_
                               _tl239033239734_
                               _e239038239737_
                               _hd239037239740_
                               _tl239036239742_
                               _e239041239745_
                               _hd239040239748_
                               _tl239039239750_
                               _e239044239753_
                               _hd239043239756_
                               _tl239042239758_
                               _e239047239761_
                               _hd239046239764_
                               _tl239045239766_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl239039239750_))
                            (___match251466251467_
                             _e239029239713_
                             _hd239028239716_
                             _tl239027239718_
                             _e239032239721_
                             _hd239031239724_
                             _tl239030239726_
                             _e239035239729_
                             _hd239034239732_
                             _tl239033239734_
                             _e239038239737_
                             _hd239037239740_
                             _tl239036239742_
                             _e239041239745_
                             _hd239040239748_
                             _tl239039239750_
                             _e239044239753_
                             _hd239043239756_
                             _tl239042239758_
                             _e239047239761_
                             _hd239046239764_
                             _tl239045239766_)
                            (___match251520251521_
                             _e239029239713_
                             _hd239028239716_
                             _tl239027239718_
                             _e239032239721_
                             _hd239031239724_
                             _tl239030239726_
                             _e239035239729_
                             _hd239034239732_
                             _tl239033239734_
                             _e239038239737_
                             _hd239037239740_
                             _tl239036239742_
                             _e239041239745_
                             _hd239040239748_
                             _tl239039239750_
                             _e239044239753_
                             _hd239043239756_
                             _tl239042239758_
                             _e239047239761_
                             _hd239046239764_
                             _tl239045239766_))))
                     (___match251410251411_
                      (lambda (_e239003239802_
                               _hd239002239805_
                               _tl239001239807_
                               _e239006239810_
                               _hd239005239813_
                               _tl239004239815_
                               _e239009239818_
                               _hd239008239821_
                               _tl239007239823_
                               _e239012239826_
                               _hd239011239829_
                               _tl239010239831_
                               _e239015239834_
                               _hd239014239837_
                               _tl239013239839_
                               _e239018239842_
                               _hd239017239845_
                               _tl239016239847_
                               _e239021239850_
                               _hd239020239853_
                               _tl239019239855_
                               _e239024239858_
                               _hd239023239861_
                               _tl239022239863_)
                        (let ((_L239866_ _hd239023239861_)
                              (_L239867_ _hd239020239853_)
                              (_L239868_ _hd239011239829_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239867_
                                      _self238785_))
                                   (let ((__tmp252368
                                          (let ((__tmp252369
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239868_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252369))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252368
                                      'gxc#!mutator::t)))
                              (___kont250915250916_
                               _L239866_
                               _L239867_
                               _L239868_)
                              (___match251528251529_
                               _e239003239802_
                               _hd239002239805_
                               _tl239001239807_
                               _e239006239810_
                               _hd239005239813_
                               _tl239004239815_
                               _e239009239818_
                               _hd239008239821_
                               _tl239007239823_
                               _e239012239826_
                               _hd239011239829_
                               _tl239010239831_
                               _e239015239834_
                               _hd239014239837_
                               _tl239013239839_
                               _e239018239842_
                               _hd239017239845_
                               _tl239016239847_
                               _e239021239850_
                               _hd239020239853_
                               _tl239019239855_
                               _e239024239858_
                               _hd239023239861_
                               _tl239022239863_)))))
                     (___match251408251409_
                      (lambda (_e239003239802_
                               _hd239002239805_
                               _tl239001239807_
                               _e239006239810_
                               _hd239005239813_
                               _tl239004239815_
                               _e239009239818_
                               _hd239008239821_
                               _tl239007239823_
                               _e239012239826_
                               _hd239011239829_
                               _tl239010239831_
                               _e239015239834_
                               _hd239014239837_
                               _tl239013239839_
                               _e239018239842_
                               _hd239017239845_
                               _tl239016239847_
                               _e239021239850_
                               _hd239020239853_
                               _tl239019239855_
                               _e239024239858_
                               _hd239023239861_
                               _tl239022239863_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl239022239863_))
                            (___match251410251411_
                             _e239003239802_
                             _hd239002239805_
                             _tl239001239807_
                             _e239006239810_
                             _hd239005239813_
                             _tl239004239815_
                             _e239009239818_
                             _hd239008239821_
                             _tl239007239823_
                             _e239012239826_
                             _hd239011239829_
                             _tl239010239831_
                             _e239015239834_
                             _hd239014239837_
                             _tl239013239839_
                             _e239018239842_
                             _hd239017239845_
                             _tl239016239847_
                             _e239021239850_
                             _hd239020239853_
                             _tl239019239855_
                             _e239024239858_
                             _hd239023239861_
                             _tl239022239863_)
                            (___kont250929250930_))))
                     (___match251402251403_
                      (lambda (_e239003239802_
                               _hd239002239805_
                               _tl239001239807_
                               _e239006239810_
                               _hd239005239813_
                               _tl239004239815_
                               _e239009239818_
                               _hd239008239821_
                               _tl239007239823_
                               _e239012239826_
                               _hd239011239829_
                               _tl239010239831_
                               _e239015239834_
                               _hd239014239837_
                               _tl239013239839_
                               _e239018239842_
                               _hd239017239845_
                               _tl239016239847_
                               _e239021239850_
                               _hd239020239853_
                               _tl239019239855_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239013239839_))
                            (let ((_e239024239858_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239013239839_))))
                              (let ((_tl239022239863_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239024239858_)))
                                    (_hd239023239861_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239024239858_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239022239863_))
                                    (___match251410251411_
                                     _e239003239802_
                                     _hd239002239805_
                                     _tl239001239807_
                                     _e239006239810_
                                     _hd239005239813_
                                     _tl239004239815_
                                     _e239009239818_
                                     _hd239008239821_
                                     _tl239007239823_
                                     _e239012239826_
                                     _hd239011239829_
                                     _tl239010239831_
                                     _e239015239834_
                                     _hd239014239837_
                                     _tl239013239839_
                                     _e239018239842_
                                     _hd239017239845_
                                     _tl239016239847_
                                     _e239021239850_
                                     _hd239020239853_
                                     _tl239019239855_
                                     _e239024239858_
                                     _hd239023239861_
                                     _tl239022239863_)
                                    (___kont250929250930_))))
                            (___match251464251465_
                             _e239003239802_
                             _hd239002239805_
                             _tl239001239807_
                             _e239006239810_
                             _hd239005239813_
                             _tl239004239815_
                             _e239009239818_
                             _hd239008239821_
                             _tl239007239823_
                             _e239012239826_
                             _hd239011239829_
                             _tl239010239831_
                             _e239015239834_
                             _hd239014239837_
                             _tl239013239839_
                             _e239018239842_
                             _hd239017239845_
                             _tl239016239847_
                             _e239021239850_
                             _hd239020239853_
                             _tl239019239855_))))
                     (___match251348251349_
                      (lambda (_e238979239905_
                               _hd238978239908_
                               _tl238977239910_
                               _e238982239913_
                               _hd238981239916_
                               _tl238980239918_
                               _e238985239921_
                               _hd238984239924_
                               _tl238983239926_
                               _e238988239929_
                               _hd238987239932_
                               _tl238986239934_
                               _e238991239937_
                               _hd238990239940_
                               _tl238989239942_
                               _e238994239945_
                               _hd238993239948_
                               _tl238992239950_
                               _e238997239953_
                               _hd238996239956_
                               _tl238995239958_)
                        (let ((_L239961_ _hd238996239956_)
                              (_L239962_ _hd238987239932_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L239961_
                                      _self238785_))
                                   (let ((__tmp252370
                                          (let ((__tmp252371
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L239962_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp252371))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp252370
                                      'gxc#!accessor::t)))
                              (___kont250913250914_ _L239961_ _L239962_)
                              (___match251466251467_
                               _e238979239905_
                               _hd238978239908_
                               _tl238977239910_
                               _e238982239913_
                               _hd238981239916_
                               _tl238980239918_
                               _e238985239921_
                               _hd238984239924_
                               _tl238983239926_
                               _e238988239929_
                               _hd238987239932_
                               _tl238986239934_
                               _e238991239937_
                               _hd238990239940_
                               _tl238989239942_
                               _e238994239945_
                               _hd238993239948_
                               _tl238992239950_
                               _e238997239953_
                               _hd238996239956_
                               _tl238995239958_)))))
                     (___match251346251347_
                      (lambda (_e238979239905_
                               _hd238978239908_
                               _tl238977239910_
                               _e238982239913_
                               _hd238981239916_
                               _tl238980239918_
                               _e238985239921_
                               _hd238984239924_
                               _tl238983239926_
                               _e238988239929_
                               _hd238987239932_
                               _tl238986239934_
                               _e238991239937_
                               _hd238990239940_
                               _tl238989239942_
                               _e238994239945_
                               _hd238993239948_
                               _tl238992239950_
                               _e238997239953_
                               _hd238996239956_
                               _tl238995239958_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl238989239942_))
                            (___match251348251349_
                             _e238979239905_
                             _hd238978239908_
                             _tl238977239910_
                             _e238982239913_
                             _hd238981239916_
                             _tl238980239918_
                             _e238985239921_
                             _hd238984239924_
                             _tl238983239926_
                             _e238988239929_
                             _hd238987239932_
                             _tl238986239934_
                             _e238991239937_
                             _hd238990239940_
                             _tl238989239942_
                             _e238994239945_
                             _hd238993239948_
                             _tl238992239950_
                             _e238997239953_
                             _hd238996239956_
                             _tl238995239958_)
                            (___match251402251403_
                             _e238979239905_
                             _hd238978239908_
                             _tl238977239910_
                             _e238982239913_
                             _hd238981239916_
                             _tl238980239918_
                             _e238985239921_
                             _hd238984239924_
                             _tl238983239926_
                             _e238988239929_
                             _hd238987239932_
                             _tl238986239934_
                             _e238991239937_
                             _hd238990239940_
                             _tl238989239942_
                             _e238994239945_
                             _hd238993239948_
                             _tl238992239950_
                             _e238997239953_
                             _hd238996239956_
                             _tl238995239958_))))
                     (___match251292251293_
                      (lambda (_e238944239994_
                               _hd238943239997_
                               _tl238942239999_
                               _e238947240002_
                               _hd238946240005_
                               _tl238945240007_
                               _e238950240010_
                               _hd238949240013_
                               _tl238948240015_
                               _e238953240018_
                               _hd238952240021_
                               _tl238951240023_
                               _e238956240026_
                               _hd238955240029_
                               _tl238954240031_
                               _e238959240034_
                               _hd238958240037_
                               _tl238957240039_
                               _e238962240042_
                               _hd238961240045_
                               _tl238960240047_
                               _e238965240050_
                               _hd238964240053_
                               _tl238963240055_
                               _e238968240058_
                               _hd238967240061_
                               _tl238966240063_
                               _e238971240066_
                               _hd238970240069_
                               _tl238969240071_
                               _e238974240074_
                               _hd238973240077_
                               _tl238972240079_)
                        (let ((_L240082_ _hd238973240077_)
                              (_L240083_ _hd238970240069_)
                              (_L240084_ _hd238961240045_)
                              (_L240085_ _hd238952240021_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L240085_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L240085_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240084_
                                      _self238785_)))
                              (___kont250911250912_
                               _L240082_
                               _L240083_
                               _L240084_
                               _L240085_)
                              (___kont250929250930_)))))
                     (___match251284251285_
                      (lambda (_e238944239994_
                               _hd238943239997_
                               _tl238942239999_
                               _e238947240002_
                               _hd238946240005_
                               _tl238945240007_
                               _e238950240010_
                               _hd238949240013_
                               _tl238948240015_
                               _e238953240018_
                               _hd238952240021_
                               _tl238951240023_
                               _e238956240026_
                               _hd238955240029_
                               _tl238954240031_
                               _e238959240034_
                               _hd238958240037_
                               _tl238957240039_
                               _e238962240042_
                               _hd238961240045_
                               _tl238960240047_
                               _e238965240050_
                               _hd238964240053_
                               _tl238963240055_
                               _e238968240058_
                               _hd238967240061_
                               _tl238966240063_
                               _e238971240066_
                               _hd238970240069_
                               _tl238969240071_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238963240055_))
                            (let ((_e238974240074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238963240055_))))
                              (let ((_tl238972240079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238974240074_)))
                                    (_hd238973240077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238974240074_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238972240079_))
                                    (___match251292251293_
                                     _e238944239994_
                                     _hd238943239997_
                                     _tl238942239999_
                                     _e238947240002_
                                     _hd238946240005_
                                     _tl238945240007_
                                     _e238950240010_
                                     _hd238949240013_
                                     _tl238948240015_
                                     _e238953240018_
                                     _hd238952240021_
                                     _tl238951240023_
                                     _e238956240026_
                                     _hd238955240029_
                                     _tl238954240031_
                                     _e238959240034_
                                     _hd238958240037_
                                     _tl238957240039_
                                     _e238962240042_
                                     _hd238961240045_
                                     _tl238960240047_
                                     _e238965240050_
                                     _hd238964240053_
                                     _tl238963240055_
                                     _e238968240058_
                                     _hd238967240061_
                                     _tl238966240063_
                                     _e238971240066_
                                     _hd238970240069_
                                     _tl238969240071_
                                     _e238974240074_
                                     _hd238973240077_
                                     _tl238972240079_)
                                    (___kont250929250930_))))
                            (___match251408251409_
                             _e238944239994_
                             _hd238943239997_
                             _tl238942239999_
                             _e238947240002_
                             _hd238946240005_
                             _tl238945240007_
                             _e238950240010_
                             _hd238949240013_
                             _tl238948240015_
                             _e238953240018_
                             _hd238952240021_
                             _tl238951240023_
                             _e238956240026_
                             _hd238955240029_
                             _tl238954240031_
                             _e238959240034_
                             _hd238958240037_
                             _tl238957240039_
                             _e238962240042_
                             _hd238961240045_
                             _tl238960240047_
                             _e238965240050_
                             _hd238964240053_
                             _tl238963240055_))))
                     (___match251206251207_
                      (lambda (_e238910240128_
                               _hd238909240131_
                               _tl238908240133_
                               _e238913240136_
                               _hd238912240139_
                               _tl238911240141_
                               _e238916240144_
                               _hd238915240147_
                               _tl238914240149_
                               _e238919240152_
                               _hd238918240155_
                               _tl238917240157_
                               _e238922240160_
                               _hd238921240163_
                               _tl238920240165_
                               _e238925240168_
                               _hd238924240171_
                               _tl238923240173_
                               _e238928240176_
                               _hd238927240179_
                               _tl238926240181_
                               _e238931240184_
                               _hd238930240187_
                               _tl238929240189_
                               _e238934240192_
                               _hd238933240195_
                               _tl238932240197_
                               _e238937240200_
                               _hd238936240203_
                               _tl238935240205_)
                        (let ((_L240208_ _hd238936240203_)
                              (_L240209_ _hd238927240179_)
                              (_L240210_ _hd238918240155_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L240210_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L240210_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240209_
                                      _self238785_)))
                              (___kont250909250910_
                               _L240208_
                               _L240209_
                               _L240210_)
                              (___match251410251411_
                               _e238910240128_
                               _hd238909240131_
                               _tl238908240133_
                               _e238913240136_
                               _hd238912240139_
                               _tl238911240141_
                               _e238916240144_
                               _hd238915240147_
                               _tl238914240149_
                               _e238919240152_
                               _hd238918240155_
                               _tl238917240157_
                               _e238922240160_
                               _hd238921240163_
                               _tl238920240165_
                               _e238925240168_
                               _hd238924240171_
                               _tl238923240173_
                               _e238928240176_
                               _hd238927240179_
                               _tl238926240181_
                               _e238931240184_
                               _hd238930240187_
                               _tl238929240189_)))))
                     (___match251204251205_
                      (lambda (_e238910240128_
                               _hd238909240131_
                               _tl238908240133_
                               _e238913240136_
                               _hd238912240139_
                               _tl238911240141_
                               _e238916240144_
                               _hd238915240147_
                               _tl238914240149_
                               _e238919240152_
                               _hd238918240155_
                               _tl238917240157_
                               _e238922240160_
                               _hd238921240163_
                               _tl238920240165_
                               _e238925240168_
                               _hd238924240171_
                               _tl238923240173_
                               _e238928240176_
                               _hd238927240179_
                               _tl238926240181_
                               _e238931240184_
                               _hd238930240187_
                               _tl238929240189_
                               _e238934240192_
                               _hd238933240195_
                               _tl238932240197_
                               _e238937240200_
                               _hd238936240203_
                               _tl238935240205_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl238929240189_))
                            (___match251206251207_
                             _e238910240128_
                             _hd238909240131_
                             _tl238908240133_
                             _e238913240136_
                             _hd238912240139_
                             _tl238911240141_
                             _e238916240144_
                             _hd238915240147_
                             _tl238914240149_
                             _e238919240152_
                             _hd238918240155_
                             _tl238917240157_
                             _e238922240160_
                             _hd238921240163_
                             _tl238920240165_
                             _e238925240168_
                             _hd238924240171_
                             _tl238923240173_
                             _e238928240176_
                             _hd238927240179_
                             _tl238926240181_
                             _e238931240184_
                             _hd238930240187_
                             _tl238929240189_
                             _e238934240192_
                             _hd238933240195_
                             _tl238932240197_
                             _e238937240200_
                             _hd238936240203_
                             _tl238935240205_)
                            (___match251284251285_
                             _e238910240128_
                             _hd238909240131_
                             _tl238908240133_
                             _e238913240136_
                             _hd238912240139_
                             _tl238911240141_
                             _e238916240144_
                             _hd238915240147_
                             _tl238914240149_
                             _e238919240152_
                             _hd238918240155_
                             _tl238917240157_
                             _e238922240160_
                             _hd238921240163_
                             _tl238920240165_
                             _e238925240168_
                             _hd238924240171_
                             _tl238923240173_
                             _e238928240176_
                             _hd238927240179_
                             _tl238926240181_
                             _e238931240184_
                             _hd238930240187_
                             _tl238929240189_
                             _e238934240192_
                             _hd238933240195_
                             _tl238932240197_
                             _e238937240200_
                             _hd238936240203_
                             _tl238935240205_))))
                     (___match251194251195_
                      (lambda (_e238910240128_
                               _hd238909240131_
                               _tl238908240133_
                               _e238913240136_
                               _hd238912240139_
                               _tl238911240141_
                               _e238916240144_
                               _hd238915240147_
                               _tl238914240149_
                               _e238919240152_
                               _hd238918240155_
                               _tl238917240157_
                               _e238922240160_
                               _hd238921240163_
                               _tl238920240165_
                               _e238925240168_
                               _hd238924240171_
                               _tl238923240173_
                               _e238928240176_
                               _hd238927240179_
                               _tl238926240181_
                               _e238931240184_
                               _hd238930240187_
                               _tl238929240189_
                               _e238934240192_
                               _hd238933240195_
                               _tl238932240197_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd238933240195_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238932240197_))
                                (let ((_e238937240200_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238932240197_))))
                                  (let ((_tl238935240205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238937240200_)))
                                        (_hd238936240203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238937240200_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238935240205_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238929240189_))
                                            (___match251206251207_
                                             _e238910240128_
                                             _hd238909240131_
                                             _tl238908240133_
                                             _e238913240136_
                                             _hd238912240139_
                                             _tl238911240141_
                                             _e238916240144_
                                             _hd238915240147_
                                             _tl238914240149_
                                             _e238919240152_
                                             _hd238918240155_
                                             _tl238917240157_
                                             _e238922240160_
                                             _hd238921240163_
                                             _tl238920240165_
                                             _e238925240168_
                                             _hd238924240171_
                                             _tl238923240173_
                                             _e238928240176_
                                             _hd238927240179_
                                             _tl238926240181_
                                             _e238931240184_
                                             _hd238930240187_
                                             _tl238929240189_
                                             _e238934240192_
                                             _hd238933240195_
                                             _tl238932240197_
                                             _e238937240200_
                                             _hd238936240203_
                                             _tl238935240205_)
                                            (___match251284251285_
                                             _e238910240128_
                                             _hd238909240131_
                                             _tl238908240133_
                                             _e238913240136_
                                             _hd238912240139_
                                             _tl238911240141_
                                             _e238916240144_
                                             _hd238915240147_
                                             _tl238914240149_
                                             _e238919240152_
                                             _hd238918240155_
                                             _tl238917240157_
                                             _e238922240160_
                                             _hd238921240163_
                                             _tl238920240165_
                                             _e238925240168_
                                             _hd238924240171_
                                             _tl238923240173_
                                             _e238928240176_
                                             _hd238927240179_
                                             _tl238926240181_
                                             _e238931240184_
                                             _hd238930240187_
                                             _tl238929240189_
                                             _e238934240192_
                                             _hd238933240195_
                                             _tl238932240197_
                                             _e238937240200_
                                             _hd238936240203_
                                             _tl238935240205_))
                                        (___match251408251409_
                                         _e238910240128_
                                         _hd238909240131_
                                         _tl238908240133_
                                         _e238913240136_
                                         _hd238912240139_
                                         _tl238911240141_
                                         _e238916240144_
                                         _hd238915240147_
                                         _tl238914240149_
                                         _e238919240152_
                                         _hd238918240155_
                                         _tl238917240157_
                                         _e238922240160_
                                         _hd238921240163_
                                         _tl238920240165_
                                         _e238925240168_
                                         _hd238924240171_
                                         _tl238923240173_
                                         _e238928240176_
                                         _hd238927240179_
                                         _tl238926240181_
                                         _e238931240184_
                                         _hd238930240187_
                                         _tl238929240189_))))
                                (___match251408251409_
                                 _e238910240128_
                                 _hd238909240131_
                                 _tl238908240133_
                                 _e238913240136_
                                 _hd238912240139_
                                 _tl238911240141_
                                 _e238916240144_
                                 _hd238915240147_
                                 _tl238914240149_
                                 _e238919240152_
                                 _hd238918240155_
                                 _tl238917240157_
                                 _e238922240160_
                                 _hd238921240163_
                                 _tl238920240165_
                                 _e238925240168_
                                 _hd238924240171_
                                 _tl238923240173_
                                 _e238928240176_
                                 _hd238927240179_
                                 _tl238926240181_
                                 _e238931240184_
                                 _hd238930240187_
                                 _tl238929240189_))
                            (___match251408251409_
                             _e238910240128_
                             _hd238909240131_
                             _tl238908240133_
                             _e238913240136_
                             _hd238912240139_
                             _tl238911240141_
                             _e238916240144_
                             _hd238915240147_
                             _tl238914240149_
                             _e238919240152_
                             _hd238918240155_
                             _tl238917240157_
                             _e238922240160_
                             _hd238921240163_
                             _tl238920240165_
                             _e238925240168_
                             _hd238924240171_
                             _tl238923240173_
                             _e238928240176_
                             _hd238927240179_
                             _tl238926240181_
                             _e238931240184_
                             _hd238930240187_
                             _tl238929240189_))))
                     (___match251126251127_
                      (lambda (_e238859240249_
                               _hd238858240252_
                               _tl238857240254_
                               _e238862240257_
                               _hd238861240260_
                               _tl238860240262_
                               _e238865240265_
                               _hd238864240268_
                               _tl238863240270_
                               _e238868240273_
                               _hd238867240276_
                               _tl238866240278_
                               _e238871240281_
                               _hd238870240284_
                               _tl238869240286_
                               _e238874240289_
                               _hd238873240292_
                               _tl238872240294_
                               _e238877240297_
                               _hd238876240300_
                               _tl238875240302_
                               _e238880240305_
                               _hd238879240308_
                               _tl238878240310_
                               _e238883240313_
                               _hd238882240316_
                               _tl238881240318_
                               _e238886240321_
                               _hd238885240324_
                               _tl238884240326_
                               _e238889240329_
                               _hd238888240332_
                               _tl238887240334_
                               _e238892240337_
                               _hd238891240340_
                               _tl238890240342_
                               _e238895240345_
                               _hd238894240348_
                               _tl238893240350_
                               ___splice250907250908_
                               _target238896240353_
                               _tl238898240355_)
                        (letrec ((_loop238899240358_
                                  (lambda (_hd238897240361_ _args238903240363_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238897240361_))
                                        (let ((_e238900240366_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238897240361_))))
                                          (let ((_lp-tl238902240371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238900240366_)))
                                                (_lp-hd238901240369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238900240366_))))
                                            (let ((__tmp252372
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd238901240369_
                                                           _args238903240363_))))
                                              (declare (not safe))
                                              (_loop238899240358_
                                               _lp-tl238902240371_
                                               __tmp252372))))
                                        (let ((_args238904240374_
                                               (reverse _args238903240363_)))
                                          (let ((_L240377_ _args238904240374_)
                                                (_L240378_ _hd238894240348_)
                                                (_L240379_ _hd238885240324_)
                                                (_L240380_ _hd238876240300_)
                                                (_L240381_ _hd238867240276_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L240381_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L240380_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L240379_
                                                        _self238785_)))
                                                (___kont250905250906_
                                                 _L240377_
                                                 _L240378_
                                                 _L240379_
                                                 _L240380_
                                                 _L240381_)
                                                (___kont250929250930_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop238899240358_ _target238896240353_ '())))))
                     (___match251084251085_
                      (lambda (_e238859240249_
                               _hd238858240252_
                               _tl238857240254_
                               _e238862240257_
                               _hd238861240260_
                               _tl238860240262_
                               _e238865240265_
                               _hd238864240268_
                               _tl238863240270_
                               _e238868240273_
                               _hd238867240276_
                               _tl238866240278_
                               _e238871240281_
                               _hd238870240284_
                               _tl238869240286_
                               _e238874240289_
                               _hd238873240292_
                               _tl238872240294_
                               _e238877240297_
                               _hd238876240300_
                               _tl238875240302_
                               _e238880240305_
                               _hd238879240308_
                               _tl238878240310_
                               _e238883240313_
                               _hd238882240316_
                               _tl238881240318_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd238882240316_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238881240318_))
                                (let ((_e238886240321_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238881240318_))))
                                  (let ((_tl238884240326_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238886240321_)))
                                        (_hd238885240324_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238886240321_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238884240326_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238878240310_))
                                            (let ((_e238889240329_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238878240310_))))
                                              (let ((_tl238887240334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238889240329_)))
                                                    (_hd238888240332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238889240329_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238888240332_))
                                                    (let ((_e238892240337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238888240332_))))
                                                      (let ((_tl238890240342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238892240337_)))
                    (_hd238891240340_
                     (let () (declare (not safe)) (##car _e238892240337_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238891240340_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd238891240340_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238890240342_))
                            (let ((_e238895240345_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238890240342_))))
                              (let ((_tl238893240350_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238895240345_)))
                                    (_hd238894240348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238895240345_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238893240350_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl238887240334_))
                                        (let ((___splice250907250908_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl238887240334_
                                                  '0))))
                                          (let ((_tl238898240355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice250907250908_
                                                    '1)))
                                                (_target238896240353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice250907250908_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238898240355_))
                                                (___match251126251127_
                                                 _e238859240249_
                                                 _hd238858240252_
                                                 _tl238857240254_
                                                 _e238862240257_
                                                 _hd238861240260_
                                                 _tl238860240262_
                                                 _e238865240265_
                                                 _hd238864240268_
                                                 _tl238863240270_
                                                 _e238868240273_
                                                 _hd238867240276_
                                                 _tl238866240278_
                                                 _e238871240281_
                                                 _hd238870240284_
                                                 _tl238869240286_
                                                 _e238874240289_
                                                 _hd238873240292_
                                                 _tl238872240294_
                                                 _e238877240297_
                                                 _hd238876240300_
                                                 _tl238875240302_
                                                 _e238880240305_
                                                 _hd238879240308_
                                                 _tl238878240310_
                                                 _e238883240313_
                                                 _hd238882240316_
                                                 _tl238881240318_
                                                 _e238886240321_
                                                 _hd238885240324_
                                                 _tl238884240326_
                                                 _e238889240329_
                                                 _hd238888240332_
                                                 _tl238887240334_
                                                 _e238892240337_
                                                 _hd238891240340_
                                                 _tl238890240342_
                                                 _e238895240345_
                                                 _hd238894240348_
                                                 _tl238893240350_
                                                 ___splice250907250908_
                                                 _target238896240353_
                                                 _tl238898240355_)
                                                (___kont250929250930_))))
                                        (___kont250929250930_))
                                    (___kont250929250930_))))
                            (___kont250929250930_))
                        (___kont250929250930_))
                    (___kont250929250930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250929250930_))))
                                            (___match251408251409_
                                             _e238859240249_
                                             _hd238858240252_
                                             _tl238857240254_
                                             _e238862240257_
                                             _hd238861240260_
                                             _tl238860240262_
                                             _e238865240265_
                                             _hd238864240268_
                                             _tl238863240270_
                                             _e238868240273_
                                             _hd238867240276_
                                             _tl238866240278_
                                             _e238871240281_
                                             _hd238870240284_
                                             _tl238869240286_
                                             _e238874240289_
                                             _hd238873240292_
                                             _tl238872240294_
                                             _e238877240297_
                                             _hd238876240300_
                                             _tl238875240302_
                                             _e238880240305_
                                             _hd238879240308_
                                             _tl238878240310_))
                                        (___match251408251409_
                                         _e238859240249_
                                         _hd238858240252_
                                         _tl238857240254_
                                         _e238862240257_
                                         _hd238861240260_
                                         _tl238860240262_
                                         _e238865240265_
                                         _hd238864240268_
                                         _tl238863240270_
                                         _e238868240273_
                                         _hd238867240276_
                                         _tl238866240278_
                                         _e238871240281_
                                         _hd238870240284_
                                         _tl238869240286_
                                         _e238874240289_
                                         _hd238873240292_
                                         _tl238872240294_
                                         _e238877240297_
                                         _hd238876240300_
                                         _tl238875240302_
                                         _e238880240305_
                                         _hd238879240308_
                                         _tl238878240310_))))
                                (___match251408251409_
                                 _e238859240249_
                                 _hd238858240252_
                                 _tl238857240254_
                                 _e238862240257_
                                 _hd238861240260_
                                 _tl238860240262_
                                 _e238865240265_
                                 _hd238864240268_
                                 _tl238863240270_
                                 _e238868240273_
                                 _hd238867240276_
                                 _tl238866240278_
                                 _e238871240281_
                                 _hd238870240284_
                                 _tl238869240286_
                                 _e238874240289_
                                 _hd238873240292_
                                 _tl238872240294_
                                 _e238877240297_
                                 _hd238876240300_
                                 _tl238875240302_
                                 _e238880240305_
                                 _hd238879240308_
                                 _tl238878240310_))
                            (___match251194251195_
                             _e238859240249_
                             _hd238858240252_
                             _tl238857240254_
                             _e238862240257_
                             _hd238861240260_
                             _tl238860240262_
                             _e238865240265_
                             _hd238864240268_
                             _tl238863240270_
                             _e238868240273_
                             _hd238867240276_
                             _tl238866240278_
                             _e238871240281_
                             _hd238870240284_
                             _tl238869240286_
                             _e238874240289_
                             _hd238873240292_
                             _tl238872240294_
                             _e238877240297_
                             _hd238876240300_
                             _tl238875240302_
                             _e238880240305_
                             _hd238879240308_
                             _tl238878240310_
                             _e238883240313_
                             _hd238882240316_
                             _tl238881240318_))))
                     (___match251016251017_
                      (lambda (_e238815240441_
                               _hd238814240444_
                               _tl238813240446_
                               _e238818240449_
                               _hd238817240452_
                               _tl238816240454_
                               _e238821240457_
                               _hd238820240460_
                               _tl238819240462_
                               _e238824240465_
                               _hd238823240468_
                               _tl238822240470_
                               _e238827240473_
                               _hd238826240476_
                               _tl238825240478_
                               _e238830240481_
                               _hd238829240484_
                               _tl238828240486_
                               _e238833240489_
                               _hd238832240492_
                               _tl238831240494_
                               _e238836240497_
                               _hd238835240500_
                               _tl238834240502_
                               _e238839240505_
                               _hd238838240508_
                               _tl238837240510_
                               _e238842240513_
                               _hd238841240516_
                               _tl238840240518_
                               ___splice250903250904_
                               _target238843240521_
                               _tl238845240523_)
                        (letrec ((_loop238846240526_
                                  (lambda (_hd238844240529_ _args238850240531_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238844240529_))
                                        (let ((_e238847240534_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238844240529_))))
                                          (let ((_lp-tl238849240539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238847240534_)))
                                                (_lp-hd238848240537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238847240534_))))
                                            (let ((__tmp252373
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd238848240537_
                                                           _args238850240531_))))
                                              (declare (not safe))
                                              (_loop238846240526_
                                               _lp-tl238849240539_
                                               __tmp252373))))
                                        (let ((_args238851240542_
                                               (reverse _args238850240531_)))
                                          (let ((_L240545_ _args238851240542_)
                                                (_L240546_ _hd238841240516_)
                                                (_L240547_ _hd238832240492_)
                                                (_L240548_ _hd238823240468_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L240548_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L240547_
                                                        _self238785_)))
                                                (___kont250901250902_
                                                 _L240545_
                                                 _L240546_
                                                 _L240547_
                                                 _L240548_)
                                                (___match251204251205_
                                                 _e238815240441_
                                                 _hd238814240444_
                                                 _tl238813240446_
                                                 _e238818240449_
                                                 _hd238817240452_
                                                 _tl238816240454_
                                                 _e238821240457_
                                                 _hd238820240460_
                                                 _tl238819240462_
                                                 _e238824240465_
                                                 _hd238823240468_
                                                 _tl238822240470_
                                                 _e238827240473_
                                                 _hd238826240476_
                                                 _tl238825240478_
                                                 _e238830240481_
                                                 _hd238829240484_
                                                 _tl238828240486_
                                                 _e238833240489_
                                                 _hd238832240492_
                                                 _tl238831240494_
                                                 _e238836240497_
                                                 _hd238835240500_
                                                 _tl238834240502_
                                                 _e238839240505_
                                                 _hd238838240508_
                                                 _tl238837240510_
                                                 _e238842240513_
                                                 _hd238841240516_
                                                 _tl238840240518_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop238846240526_ _target238843240521_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250899250900_))
                    (let ((_e238815240441_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250899250900_))))
                      (let ((_tl238813240446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238815240441_)))
                            (_hd238814240444_
                             (let ()
                               (declare (not safe))
                               (##car _e238815240441_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238813240446_))
                            (let ((_e238818240449_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238813240446_))))
                              (let ((_tl238816240454_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238818240449_)))
                                    (_hd238817240452_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238818240449_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238817240452_))
                                    (let ((_e238821240457_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238817240452_))))
                                      (let ((_tl238819240462_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238821240457_)))
                                            (_hd238820240460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238821240457_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238820240460_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238820240460_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238819240462_))
                                                    (let ((_e238824240465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238819240462_))))
                                                      (let ((_tl238822240470_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238824240465_)))
                    (_hd238823240468_
                     (let () (declare (not safe)) (##car _e238824240465_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238822240470_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238816240454_))
                        (let ((_e238827240473_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238816240454_))))
                          (let ((_tl238825240478_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238827240473_)))
                                (_hd238826240476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238827240473_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238826240476_))
                                (let ((_e238830240481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238826240476_))))
                                  (let ((_tl238828240486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238830240481_)))
                                        (_hd238829240484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238830240481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238829240484_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd238829240484_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238828240486_))
                                                (let ((_e238833240489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238828240486_))))
                                                  (let ((_tl238831240494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238833240489_)))
                                                        (_hd238832240492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238833240489_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238831240494_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl238825240478_))
                                                            (let ((_e238836240497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl238825240478_))))
                      (let ((_tl238834240502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238836240497_)))
                            (_hd238835240500_
                             (let ()
                               (declare (not safe))
                               (##car _e238836240497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd238835240500_))
                            (let ((_e238839240505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd238835240500_))))
                              (let ((_tl238837240510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238839240505_)))
                                    (_hd238838240508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238839240505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd238838240508_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd238838240508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238837240510_))
                                            (let ((_e238842240513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238837240510_))))
                                              (let ((_tl238840240518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238842240513_)))
                                                    (_hd238841240516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238842240513_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238840240518_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl238834240502_))
                                                        (let ((___splice250903250904_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl238834240502_ '0))))
                  (let ((_tl238845240523_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice250903250904_ '1)))
                        (_target238843240521_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice250903250904_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl238845240523_))
                        (___match251016251017_
                         _e238815240441_
                         _hd238814240444_
                         _tl238813240446_
                         _e238818240449_
                         _hd238817240452_
                         _tl238816240454_
                         _e238821240457_
                         _hd238820240460_
                         _tl238819240462_
                         _e238824240465_
                         _hd238823240468_
                         _tl238822240470_
                         _e238827240473_
                         _hd238826240476_
                         _tl238825240478_
                         _e238830240481_
                         _hd238829240484_
                         _tl238828240486_
                         _e238833240489_
                         _hd238832240492_
                         _tl238831240494_
                         _e238836240497_
                         _hd238835240500_
                         _tl238834240502_
                         _e238839240505_
                         _hd238838240508_
                         _tl238837240510_
                         _e238842240513_
                         _hd238841240516_
                         _tl238840240518_
                         ___splice250903250904_
                         _target238843240521_
                         _tl238845240523_)
                        (___match251204251205_
                         _e238815240441_
                         _hd238814240444_
                         _tl238813240446_
                         _e238818240449_
                         _hd238817240452_
                         _tl238816240454_
                         _e238821240457_
                         _hd238820240460_
                         _tl238819240462_
                         _e238824240465_
                         _hd238823240468_
                         _tl238822240470_
                         _e238827240473_
                         _hd238826240476_
                         _tl238825240478_
                         _e238830240481_
                         _hd238829240484_
                         _tl238828240486_
                         _e238833240489_
                         _hd238832240492_
                         _tl238831240494_
                         _e238836240497_
                         _hd238835240500_
                         _tl238834240502_
                         _e238839240505_
                         _hd238838240508_
                         _tl238837240510_
                         _e238842240513_
                         _hd238841240516_
                         _tl238840240518_))))
                (___match251204251205_
                 _e238815240441_
                 _hd238814240444_
                 _tl238813240446_
                 _e238818240449_
                 _hd238817240452_
                 _tl238816240454_
                 _e238821240457_
                 _hd238820240460_
                 _tl238819240462_
                 _e238824240465_
                 _hd238823240468_
                 _tl238822240470_
                 _e238827240473_
                 _hd238826240476_
                 _tl238825240478_
                 _e238830240481_
                 _hd238829240484_
                 _tl238828240486_
                 _e238833240489_
                 _hd238832240492_
                 _tl238831240494_
                 _e238836240497_
                 _hd238835240500_
                 _tl238834240502_
                 _e238839240505_
                 _hd238838240508_
                 _tl238837240510_
                 _e238842240513_
                 _hd238841240516_
                 _tl238840240518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match251408251409_
                                                     _e238815240441_
                                                     _hd238814240444_
                                                     _tl238813240446_
                                                     _e238818240449_
                                                     _hd238817240452_
                                                     _tl238816240454_
                                                     _e238821240457_
                                                     _hd238820240460_
                                                     _tl238819240462_
                                                     _e238824240465_
                                                     _hd238823240468_
                                                     _tl238822240470_
                                                     _e238827240473_
                                                     _hd238826240476_
                                                     _tl238825240478_
                                                     _e238830240481_
                                                     _hd238829240484_
                                                     _tl238828240486_
                                                     _e238833240489_
                                                     _hd238832240492_
                                                     _tl238831240494_
                                                     _e238836240497_
                                                     _hd238835240500_
                                                     _tl238834240502_))))
                                            (___match251408251409_
                                             _e238815240441_
                                             _hd238814240444_
                                             _tl238813240446_
                                             _e238818240449_
                                             _hd238817240452_
                                             _tl238816240454_
                                             _e238821240457_
                                             _hd238820240460_
                                             _tl238819240462_
                                             _e238824240465_
                                             _hd238823240468_
                                             _tl238822240470_
                                             _e238827240473_
                                             _hd238826240476_
                                             _tl238825240478_
                                             _e238830240481_
                                             _hd238829240484_
                                             _tl238828240486_
                                             _e238833240489_
                                             _hd238832240492_
                                             _tl238831240494_
                                             _e238836240497_
                                             _hd238835240500_
                                             _tl238834240502_))
                                        (___match251084251085_
                                         _e238815240441_
                                         _hd238814240444_
                                         _tl238813240446_
                                         _e238818240449_
                                         _hd238817240452_
                                         _tl238816240454_
                                         _e238821240457_
                                         _hd238820240460_
                                         _tl238819240462_
                                         _e238824240465_
                                         _hd238823240468_
                                         _tl238822240470_
                                         _e238827240473_
                                         _hd238826240476_
                                         _tl238825240478_
                                         _e238830240481_
                                         _hd238829240484_
                                         _tl238828240486_
                                         _e238833240489_
                                         _hd238832240492_
                                         _tl238831240494_
                                         _e238836240497_
                                         _hd238835240500_
                                         _tl238834240502_
                                         _e238839240505_
                                         _hd238838240508_
                                         _tl238837240510_))
                                    (___match251408251409_
                                     _e238815240441_
                                     _hd238814240444_
                                     _tl238813240446_
                                     _e238818240449_
                                     _hd238817240452_
                                     _tl238816240454_
                                     _e238821240457_
                                     _hd238820240460_
                                     _tl238819240462_
                                     _e238824240465_
                                     _hd238823240468_
                                     _tl238822240470_
                                     _e238827240473_
                                     _hd238826240476_
                                     _tl238825240478_
                                     _e238830240481_
                                     _hd238829240484_
                                     _tl238828240486_
                                     _e238833240489_
                                     _hd238832240492_
                                     _tl238831240494_
                                     _e238836240497_
                                     _hd238835240500_
                                     _tl238834240502_))))
                            (___match251408251409_
                             _e238815240441_
                             _hd238814240444_
                             _tl238813240446_
                             _e238818240449_
                             _hd238817240452_
                             _tl238816240454_
                             _e238821240457_
                             _hd238820240460_
                             _tl238819240462_
                             _e238824240465_
                             _hd238823240468_
                             _tl238822240470_
                             _e238827240473_
                             _hd238826240476_
                             _tl238825240478_
                             _e238830240481_
                             _hd238829240484_
                             _tl238828240486_
                             _e238833240489_
                             _hd238832240492_
                             _tl238831240494_
                             _e238836240497_
                             _hd238835240500_
                             _tl238834240502_))))
                    (___match251346251347_
                     _e238815240441_
                     _hd238814240444_
                     _tl238813240446_
                     _e238818240449_
                     _hd238817240452_
                     _tl238816240454_
                     _e238821240457_
                     _hd238820240460_
                     _tl238819240462_
                     _e238824240465_
                     _hd238823240468_
                     _tl238822240470_
                     _e238827240473_
                     _hd238826240476_
                     _tl238825240478_
                     _e238830240481_
                     _hd238829240484_
                     _tl238828240486_
                     _e238833240489_
                     _hd238832240492_
                     _tl238831240494_))
                (___kont250929250930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250929250930_))
                                            (___kont250929250930_))
                                        (___kont250929250930_))))
                                (___kont250929250930_))))
                        (___kont250929250930_))
                    (___kont250929250930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250929250930_))
                                                (___kont250929250930_))
                                            (___kont250929250930_))))
                                    (___kont250929250930_))))
                            (___kont250929250930_))))
                    (___kont250929250930_))))))))))
