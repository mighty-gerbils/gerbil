(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx293191_)
      (let* ((_g293195293213_
              (lambda (_g293196293209_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293196293209_))))
             (_g293194293268_
              (lambda (_g293196293217_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293196293217_))
                    (let ((_e293201293220_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293196293217_))))
                      (let ((_hd293200293224_
                             (let ()
                               (declare (not safe))
                               (##car _e293201293220_)))
                            (_tl293199293227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293201293220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293199293227_))
                            (let ((_e293204293230_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293199293227_))))
                              (let ((_hd293203293234_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293204293230_)))
                                    (_tl293202293237_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293204293230_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl293202293237_))
                                    (let ((_e293207293240_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl293202293237_))))
                                      (let ((_hd293206293244_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293207293240_)))
                                            (_tl293205293247_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293207293240_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293205293247_))
                                            ((lambda (_L293250_ _L293252_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L293252_))
                                                   (let ((__tmp301182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp301177
                                                          (let ((__tmp301179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301181
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301180
                                (let ()
                                  (declare (not safe))
                                  (cons _L293252_ '()))))
                           (declare (not safe))
                           (cons __tmp301181 __tmp301180)))
                        (__tmp301178
                         (let () (declare (not safe)) (cons _L293250_ '()))))
                    (declare (not safe))
                    (cons __tmp301179 __tmp301178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301182
                                                           __tmp301177))
                                                   (_g293195293213_
                                                    _g293196293217_)))
                                             _hd293206293244_
                                             _hd293203293234_)
                                            (_g293195293213_
                                             _g293196293217_))))
                                    (_g293195293213_ _g293196293217_))))
                            (_g293195293213_ _g293196293217_))))
                    (_g293195293213_ _g293196293217_)))))
        (_g293194293268_ _$stx293191_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx293272_)
      (let* ((_g293276293305_
              (lambda (_g293277293301_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293277293301_))))
             (_g293275293405_
              (lambda (_g293277293309_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293277293309_))
                    (let ((_e293282293312_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293277293309_))))
                      (let ((_hd293281293316_
                             (let ()
                               (declare (not safe))
                               (##car _e293282293312_)))
                            (_tl293280293319_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293282293312_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293280293319_))
                            (let ((_g301183_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293280293319_
                                      '0))))
                              (begin
                                (let ((_g301184_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301183_)
                                             (##vector-length _g301183_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301184_ 2)))
                                      (error "Context expects 2 values"
                                             _g301184_)))
                                (let ((_target293283293322_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301183_ 0)))
                                      (_tl293285293325_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301183_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293285293325_))
                                      (letrec ((_loop293286293328_
                                                (lambda (_hd293284293332_
                                                         _type293290293335_
                                                         _symbol293291293337_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293284293332_))
                                                      (let ((_e293287293340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293284293332_))))
                (let ((_lp-hd293288293344_
                       (let () (declare (not safe)) (##car _e293287293340_)))
                      (_lp-tl293289293347_
                       (let () (declare (not safe)) (##cdr _e293287293340_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293288293344_))
                      (let ((_e293296293350_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293288293344_))))
                        (let ((_hd293295293354_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293296293350_)))
                              (_tl293294293357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293296293350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293294293357_))
                              (let ((_e293299293360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293294293357_))))
                                (let ((_hd293298293364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293299293360_)))
                                      (_tl293297293367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293299293360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293297293367_))
                                      (_loop293286293328_
                                       _lp-tl293289293347_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293298293364_
                                               _type293290293335_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd293295293354_
                                               _symbol293291293337_)))
                                      (_g293276293305_ _g293277293309_))))
                              (_g293276293305_ _g293277293309_))))
                      (_g293276293305_ _g293277293309_))))
              (let ((_type293292293370_ (reverse _type293290293335_))
                    (_symbol293293293373_ (reverse _symbol293291293337_)))
                ((lambda (_L293376_ _L293378_)
                   (let ((__tmp301191
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301185
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293376_
                               _L293378_))
                            (let ((__tmp301186
                                   (lambda (_g293393293397_
                                            _g293394293400_
                                            _g293395293402_)
                                     (let ((__tmp301187
                                            (let ((__tmp301190
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp301188
                                                   (let ((__tmp301189
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g293393293397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293394293400_
                                                           __tmp301189))))
                                              (declare (not safe))
                                              (cons __tmp301190 __tmp301188))))
                                       (declare (not safe))
                                       (cons __tmp301187 _g293395293402_)))))
                              (declare (not safe))
                              (foldr2 __tmp301186 '() _L293376_ _L293378_)))))
                     (declare (not safe))
                     (cons __tmp301191 __tmp301185)))
                 _type293292293370_
                 _symbol293293293373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293286293328_
                                         _target293283293322_
                                         '()
                                         '()))
                                      (_g293276293305_ _g293277293309_)))))
                            (_g293276293305_ _g293277293309_))))
                    (_g293276293305_ _g293277293309_)))))
        (_g293275293405_ _$stx293272_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx293410_)
      (let* ((___stx300742300743_ _$stx293410_)
             (_g293415293457_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300742300743_)))))
        (let ((___kont300745300746_
               (lambda (_L293585_ _L293587_ _L293588_ _L293589_)
                 (let ((__tmp301205
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp301192
                        (let ((__tmp301202
                               (let ((__tmp301204
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301203
                                      (let ()
                                        (declare (not safe))
                                        (cons _L293589_ '()))))
                                 (declare (not safe))
                                 (cons __tmp301204 __tmp301203)))
                              (__tmp301193
                               (let ((__tmp301199
                                      (let ((__tmp301201
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301200
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293588_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301201 __tmp301200)))
                                     (__tmp301194
                                      (let ((__tmp301196
                                             (let ((__tmp301198
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301197
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L293587_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301198 __tmp301197)))
                                            (__tmp301195
                                             (let ()
                                               (declare (not safe))
                                               (cons _L293585_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301196 __tmp301195))))
                                 (declare (not safe))
                                 (cons __tmp301199 __tmp301194))))
                          (declare (not safe))
                          (cons __tmp301202 __tmp301193))))
                   (declare (not safe))
                   (cons __tmp301205 __tmp301192))))
              (___kont300747300748_
               (lambda (_L293504_ _L293506_ _L293507_ _L293508_)
                 (let ((__tmp301206
                        (let ((__tmp301207
                               (let ((__tmp301208
                                      (let ((__tmp301209
                                             (let ((__tmp301210
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp301210 '()))))
                                        (declare (not safe))
                                        (cons _L293504_ __tmp301209))))
                                 (declare (not safe))
                                 (cons _L293506_ __tmp301208))))
                          (declare (not safe))
                          (cons _L293507_ __tmp301207))))
                   (declare (not safe))
                   (cons _L293508_ __tmp301206)))))
          (let ((___match300781300782_
                 (lambda (_e293423293535_
                          _hd293422293539_
                          _tl293421293542_
                          _e293426293545_
                          _hd293425293549_
                          _tl293424293552_
                          _e293429293555_
                          _hd293428293559_
                          _tl293427293562_
                          _e293432293565_
                          _hd293431293569_
                          _tl293430293572_
                          _e293435293575_
                          _hd293434293579_
                          _tl293433293582_)
                   (let ((_L293585_ _hd293434293579_)
                         (_L293587_ _hd293431293569_)
                         (_L293588_ _hd293428293559_)
                         (_L293589_ _hd293425293549_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L293589_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293588_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L293587_)))
                         (___kont300745300746_
                          _L293585_
                          _L293587_
                          _L293588_
                          _L293589_)
                         (let () (declare (not safe)) (_g293415293457_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300742300743_))
                (let ((_e293423293535_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300742300743_))))
                  (let ((_tl293421293542_
                         (let () (declare (not safe)) (##cdr _e293423293535_)))
                        (_hd293422293539_
                         (let ()
                           (declare (not safe))
                           (##car _e293423293535_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl293421293542_))
                        (let ((_e293426293545_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl293421293542_))))
                          (let ((_tl293424293552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e293426293545_)))
                                (_hd293425293549_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e293426293545_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl293424293552_))
                                (let ((_e293429293555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl293424293552_))))
                                  (let ((_tl293427293562_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e293429293555_)))
                                        (_hd293428293559_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e293429293555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl293427293562_))
                                        (let ((_e293432293565_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl293427293562_))))
                                          (let ((_tl293430293572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e293432293565_)))
                                                (_hd293431293569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e293432293565_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293430293572_))
                                                (let ((_e293435293575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl293430293572_))))
                                                  (let ((_tl293433293582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293435293575_)))
                                                        (_hd293434293579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293435293575_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293433293582_))
                                                        (___match300781300782_
                                                         _e293423293535_
                                                         _hd293422293539_
                                                         _tl293421293542_
                                                         _e293426293545_
                                                         _hd293425293549_
                                                         _tl293424293552_
                                                         _e293429293555_
                                                         _hd293428293559_
                                                         _tl293427293562_
                                                         _e293432293565_
                                                         _hd293431293569_
                                                         _tl293430293572_
                                                         _e293435293575_
                                                         _hd293434293579_
                                                         _tl293433293582_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293415293457_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl293430293572_))
                                                    (___kont300747300748_
                                                     _hd293431293569_
                                                     _hd293428293559_
                                                     _hd293425293549_
                                                     _hd293422293539_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293415293457_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293415293457_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g293415293457_)))))
                        (let () (declare (not safe)) (_g293415293457_)))))
                (let () (declare (not safe)) (_g293415293457_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx293614_)
      (let* ((_g293618293653_
              (lambda (_g293619293649_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293619293649_))))
             (_g293617293772_
              (lambda (_g293619293657_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293619293657_))
                    (let ((_e293625293660_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293619293657_))))
                      (let ((_hd293624293664_
                             (let ()
                               (declare (not safe))
                               (##car _e293625293660_)))
                            (_tl293623293667_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293625293660_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl293623293667_))
                            (let ((_g301211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl293623293667_
                                      '0))))
                              (begin
                                (let ((_g301212_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301211_)
                                             (##vector-length _g301211_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301212_ 2)))
                                      (error "Context expects 2 values"
                                             _g301212_)))
                                (let ((_target293626293670_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301211_ 0)))
                                      (_tl293628293673_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301211_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl293628293673_))
                                      (letrec ((_loop293629293676_
                                                (lambda (_hd293627293680_
                                                         _symbol293633293683_
                                                         _method293634293685_
                                                         _type-t293635293687_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd293627293680_))
                                                      (let ((_e293630293690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd293627293680_))))
                (let ((_lp-hd293631293694_
                       (let () (declare (not safe)) (##car _e293630293690_)))
                      (_lp-tl293632293697_
                       (let () (declare (not safe)) (##cdr _e293630293690_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd293631293694_))
                      (let ((_e293641293700_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd293631293694_))))
                        (let ((_hd293640293704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293641293700_)))
                              (_tl293639293707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293641293700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293639293707_))
                              (let ((_e293644293710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl293639293707_))))
                                (let ((_hd293643293714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293644293710_)))
                                      (_tl293642293717_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293644293710_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293642293717_))
                                      (let ((_e293647293720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293642293717_))))
                                        (let ((_hd293646293724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293647293720_)))
                                              (_tl293645293727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293647293720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293645293727_))
                                              (_loop293629293676_
                                               _lp-tl293632293697_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293646293724_
                                                       _symbol293633293683_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293643293714_
                                                       _method293634293685_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293640293704_
                                                       _type-t293635293687_)))
                                              (_g293618293653_
                                               _g293619293657_))))
                                      (_g293618293653_ _g293619293657_))))
                              (_g293618293653_ _g293619293657_))))
                      (_g293618293653_ _g293619293657_))))
              (let ((_symbol293636293730_ (reverse _symbol293633293683_))
                    (_method293637293733_ (reverse _method293634293685_))
                    (_type-t293638293735_ (reverse _type-t293635293687_)))
                ((lambda (_L293738_ _L293740_ _L293741_)
                   (let ((__tmp301220
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301213
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L293738_
                               _L293740_
                               _L293741_))
                            (let ((__tmp301214
                                   (lambda (_g293757293762_
                                            _g293758293765_
                                            _g293759293767_
                                            _g293760293769_)
                                     (let ((__tmp301215
                                            (let ((__tmp301219
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp301216
                                                   (let ((__tmp301217
                                                          (let ((__tmp301218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g293757293762_ '()))))
                    (declare (not safe))
                    (cons _g293758293765_ __tmp301218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g293759293767_
                                                           __tmp301217))))
                                              (declare (not safe))
                                              (cons __tmp301219 __tmp301216))))
                                       (declare (not safe))
                                       (cons __tmp301215 _g293760293769_)))))
                              (declare (not safe))
                              (foldr* __tmp301214
                                      '()
                                      _L293738_
                                      _L293740_
                                      _L293741_)))))
                     (declare (not safe))
                     (cons __tmp301220 __tmp301213)))
                 _symbol293636293730_
                 _method293637293733_
                 _type-t293638293735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop293629293676_
                                         _target293626293670_
                                         '()
                                         '()
                                         '()))
                                      (_g293618293653_ _g293619293657_)))))
                            (_g293618293653_ _g293619293657_))))
                    (_g293618293653_ _g293619293657_)))))
        (_g293617293772_ _$stx293614_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx293777_)
      (let* ((_g293781293814_
              (lambda (_g293782293810_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293782293810_))))
             (_g293780293928_
              (lambda (_g293782293818_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293782293818_))
                    (let ((_e293788293821_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293782293818_))))
                      (let ((_hd293787293825_
                             (let ()
                               (declare (not safe))
                               (##car _e293788293821_)))
                            (_tl293786293828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293788293821_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293786293828_))
                            (let ((_e293791293831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293786293828_))))
                              (let ((_hd293790293835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293791293831_)))
                                    (_tl293789293838_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293791293831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl293789293838_))
                                    (let ((_g301221_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl293789293838_
                                              '0))))
                                      (begin
                                        (let ((_g301222_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g301221_)
                                                     (##vector-length
                                                      _g301221_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g301222_ 2)))
                                              (error "Context expects 2 values"
                                                     _g301222_)))
                                        (let ((_target293792293841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301221_ 0)))
                                              (_tl293794293844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g301221_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293794293844_))
                                              (letrec ((_loop293795293847_
                                                        (lambda (_hd293793293851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol293799293854_
                         _method293800293856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd293793293851_))
                      (let ((_e293796293859_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd293793293851_))))
                        (let ((_lp-hd293797293863_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293796293859_)))
                              (_lp-tl293798293866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293796293859_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd293797293863_))
                              (let ((_e293805293869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd293797293863_))))
                                (let ((_hd293804293873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293805293869_)))
                                      (_tl293803293876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293805293869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl293803293876_))
                                      (let ((_e293808293879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl293803293876_))))
                                        (let ((_hd293807293883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e293808293879_)))
                                              (_tl293806293886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e293808293879_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl293806293886_))
                                              (_loop293795293847_
                                               _lp-tl293798293866_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293807293883_
                                                       _symbol293799293854_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd293804293873_
                                                       _method293800293856_)))
                                              (_g293781293814_
                                               _g293782293818_))))
                                      (_g293781293814_ _g293782293818_))))
                              (_g293781293814_ _g293782293818_))))
                      (let ((_symbol293801293889_
                             (reverse _symbol293799293854_))
                            (_method293802293892_
                             (reverse _method293800293856_)))
                        ((lambda (_L293895_ _L293897_ _L293898_)
                           (let ((__tmp301230
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp301223
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L293895_
                                       _L293897_))
                                    (let ((__tmp301224
                                           (lambda (_g293916293920_
                                                    _g293917293923_
                                                    _g293918293925_)
                                             (let ((__tmp301225
                                                    (let ((__tmp301229
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp301226
                                                           (let ((__tmp301227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301228
                                 (let ()
                                   (declare (not safe))
                                   (cons _g293916293920_ '()))))
                            (declare (not safe))
                            (cons _g293917293923_ __tmp301228))))
                     (declare (not safe))
                     (cons _L293898_ __tmp301227))))
              (declare (not safe))
              (cons __tmp301229 __tmp301226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301225
                                                     _g293918293925_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp301224
                                              '()
                                              _L293895_
                                              _L293897_)))))
                             (declare (not safe))
                             (cons __tmp301230 __tmp301223)))
                         _symbol293801293889_
                         _method293802293892_
                         _hd293790293835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop293795293847_
                                                 _target293792293841_
                                                 '()
                                                 '()))
                                              (_g293781293814_
                                               _g293782293818_)))))
                                    (_g293781293814_ _g293782293818_))))
                            (_g293781293814_ _g293782293818_))))
                    (_g293781293814_ _g293782293818_)))))
        (_g293780293928_ _$stx293777_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx293933_)
      (let* ((_g293937293951_
              (lambda (_g293938293947_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g293938293947_))))
             (_g293936293992_
              (lambda (_g293938293955_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g293938293955_))
                    (let ((_e293942293958_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g293938293955_))))
                      (let ((_hd293941293962_
                             (let ()
                               (declare (not safe))
                               (##car _e293942293958_)))
                            (_tl293940293965_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293942293958_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293940293965_))
                            (let ((_e293945293968_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl293940293965_))))
                              (let ((_hd293944293972_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293945293968_)))
                                    (_tl293943293975_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293945293968_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl293943293975_))
                                    ((lambda (_L293978_)
                                       (let ((__tmp301235
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp301231
                                              (let ((__tmp301232
                                                     (let ((__tmp301234
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301233
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L293978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301234 __tmp301233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301232 '()))))
                                         (declare (not safe))
                                         (cons __tmp301235 __tmp301231)))
                                     _hd293944293972_)
                                    (_g293937293951_ _g293938293955_))))
                            (_g293937293951_ _g293938293955_))))
                    (_g293937293951_ _g293938293955_)))))
        (_g293936293992_ _$stx293933_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx293996_)
      (let* ((_g294000294046_
              (lambda (_g294001294042_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294001294042_))))
             (_g293999294199_
              (lambda (_g294001294050_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294001294050_))
                    (let ((_e294013294053_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294001294050_))))
                      (let ((_hd294012294057_
                             (let ()
                               (declare (not safe))
                               (##car _e294013294053_)))
                            (_tl294011294060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294013294053_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294011294060_))
                            (let ((_e294016294063_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294011294060_))))
                              (let ((_hd294015294067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294016294063_)))
                                    (_tl294014294070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294016294063_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294014294070_))
                                    (let ((_e294019294073_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294014294070_))))
                                      (let ((_hd294018294077_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294019294073_)))
                                            (_tl294017294080_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294019294073_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294017294080_))
                                            (let ((_e294022294083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294017294080_))))
                                              (let ((_hd294021294087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294022294083_)))
                                                    (_tl294020294090_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294022294083_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294020294090_))
                                                    (let ((_e294025294093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294020294090_))))
                                                      (let ((_hd294024294097_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294025294093_)))
                    (_tl294023294100_
                     (let () (declare (not safe)) (##cdr _e294025294093_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl294023294100_))
                    (let ((_e294028294103_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl294023294100_))))
                      (let ((_hd294027294107_
                             (let ()
                               (declare (not safe))
                               (##car _e294028294103_)))
                            (_tl294026294110_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294028294103_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294026294110_))
                            (let ((_e294031294113_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294026294110_))))
                              (let ((_hd294030294117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294031294113_)))
                                    (_tl294029294120_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294031294113_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294029294120_))
                                    (let ((_e294034294123_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294029294120_))))
                                      (let ((_hd294033294127_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294034294123_)))
                                            (_tl294032294130_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294034294123_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294032294130_))
                                            (let ((_e294037294133_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294032294130_))))
                                              (let ((_hd294036294137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294037294133_)))
                                                    (_tl294035294140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294037294133_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294035294140_))
                                                    (let ((_e294040294143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294035294140_))))
                                                      (let ((_hd294039294147_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e294040294143_)))
                    (_tl294038294150_
                     (let () (declare (not safe)) (##cdr _e294040294143_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294038294150_))
                    ((lambda (_L294153_
                              _L294155_
                              _L294156_
                              _L294157_
                              _L294158_
                              _L294159_
                              _L294160_
                              _L294161_
                              _L294162_)
                       (let ((__tmp301272
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp301236
                              (let ((__tmp301269
                                     (let ((__tmp301271
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp301270
                                            (let ()
                                              (declare (not safe))
                                              (cons _L294162_ '()))))
                                       (declare (not safe))
                                       (cons __tmp301271 __tmp301270)))
                                    (__tmp301237
                                     (let ((__tmp301266
                                            (let ((__tmp301268
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp301267
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L294161_ '()))))
                                              (declare (not safe))
                                              (cons __tmp301268 __tmp301267)))
                                           (__tmp301238
                                            (let ((__tmp301263
                                                   (let ((__tmp301265
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp301264
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L294160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301265
                                                           __tmp301264)))
                                                  (__tmp301239
                                                   (let ((__tmp301260
                                                          (let ((__tmp301262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp301261
                         (let () (declare (not safe)) (cons _L294159_ '()))))
                    (declare (not safe))
                    (cons __tmp301262 __tmp301261)))
                 (__tmp301240
                  (let ((__tmp301257
                         (let ((__tmp301259
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp301258
                                (let ()
                                  (declare (not safe))
                                  (cons _L294158_ '()))))
                           (declare (not safe))
                           (cons __tmp301259 __tmp301258)))
                        (__tmp301241
                         (let ((__tmp301254
                                (let ((__tmp301256
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp301255
                                       (let ()
                                         (declare (not safe))
                                         (cons _L294157_ '()))))
                                  (declare (not safe))
                                  (cons __tmp301256 __tmp301255)))
                               (__tmp301242
                                (let ((__tmp301251
                                       (let ((__tmp301253
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp301252
                                              (let ()
                                                (declare (not safe))
                                                (cons _L294156_ '()))))
                                         (declare (not safe))
                                         (cons __tmp301253 __tmp301252)))
                                      (__tmp301243
                                       (let ((__tmp301248
                                              (let ((__tmp301250
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp301249
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L294155_ '()))))
                                                (declare (not safe))
                                                (cons __tmp301250
                                                      __tmp301249)))
                                             (__tmp301244
                                              (let ((__tmp301245
                                                     (let ((__tmp301247
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301246
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301247 __tmp301246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301245 '()))))
                                         (declare (not safe))
                                         (cons __tmp301248 __tmp301244))))
                                  (declare (not safe))
                                  (cons __tmp301251 __tmp301243))))
                           (declare (not safe))
                           (cons __tmp301254 __tmp301242))))
                    (declare (not safe))
                    (cons __tmp301257 __tmp301241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp301260
                                                           __tmp301240))))
                                              (declare (not safe))
                                              (cons __tmp301263 __tmp301239))))
                                       (declare (not safe))
                                       (cons __tmp301266 __tmp301238))))
                                (declare (not safe))
                                (cons __tmp301269 __tmp301237))))
                         (declare (not safe))
                         (cons __tmp301272 __tmp301236)))
                     _hd294039294147_
                     _hd294036294137_
                     _hd294033294127_
                     _hd294030294117_
                     _hd294027294107_
                     _hd294024294097_
                     _hd294021294087_
                     _hd294018294077_
                     _hd294015294067_)
                    (_g294000294046_ _g294001294050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294000294046_
                                                     _g294001294050_))))
                                            (_g294000294046_
                                             _g294001294050_))))
                                    (_g294000294046_ _g294001294050_))))
                            (_g294000294046_ _g294001294050_))))
                    (_g294000294046_ _g294001294050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g294000294046_
                                                     _g294001294050_))))
                                            (_g294000294046_
                                             _g294001294050_))))
                                    (_g294000294046_ _g294001294050_))))
                            (_g294000294046_ _g294001294050_))))
                    (_g294000294046_ _g294001294050_)))))
        (_g293999294199_ _$stx293996_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx294203_)
      (let* ((_g294207294221_
              (lambda (_g294208294217_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294208294217_))))
             (_g294206294262_
              (lambda (_g294208294225_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294208294225_))
                    (let ((_e294212294228_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294208294225_))))
                      (let ((_hd294211294232_
                             (let ()
                               (declare (not safe))
                               (##car _e294212294228_)))
                            (_tl294210294235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294212294228_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294210294235_))
                            (let ((_e294215294238_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294210294235_))))
                              (let ((_hd294214294242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294215294238_)))
                                    (_tl294213294245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294215294238_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294213294245_))
                                    ((lambda (_L294248_)
                                       (let ((__tmp301277
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp301273
                                              (let ((__tmp301274
                                                     (let ((__tmp301276
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301275
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301276 __tmp301275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301274 '()))))
                                         (declare (not safe))
                                         (cons __tmp301277 __tmp301273)))
                                     _hd294214294242_)
                                    (_g294207294221_ _g294208294225_))))
                            (_g294207294221_ _g294208294225_))))
                    (_g294207294221_ _g294208294225_)))))
        (_g294206294262_ _$stx294203_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx294266_)
      (let* ((_g294270294284_
              (lambda (_g294271294280_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294271294280_))))
             (_g294269294325_
              (lambda (_g294271294288_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294271294288_))
                    (let ((_e294275294291_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294271294288_))))
                      (let ((_hd294274294295_
                             (let ()
                               (declare (not safe))
                               (##car _e294275294291_)))
                            (_tl294273294298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294275294291_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294273294298_))
                            (let ((_e294278294301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294273294298_))))
                              (let ((_hd294277294305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294278294301_)))
                                    (_tl294276294308_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294278294301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294276294308_))
                                    ((lambda (_L294311_)
                                       (let ((__tmp301282
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp301278
                                              (let ((__tmp301279
                                                     (let ((__tmp301281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp301280
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L294311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp301281 __tmp301280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301279 '()))))
                                         (declare (not safe))
                                         (cons __tmp301282 __tmp301278)))
                                     _hd294277294305_)
                                    (_g294270294284_ _g294271294288_))))
                            (_g294270294284_ _g294271294288_))))
                    (_g294270294284_ _g294271294288_)))))
        (_g294269294325_ _$stx294266_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx294329_)
      (let* ((_g294333294355_
              (lambda (_g294334294351_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294334294351_))))
             (_g294332294424_
              (lambda (_g294334294359_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294334294359_))
                    (let ((_e294340294362_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294334294359_))))
                      (let ((_hd294339294366_
                             (let ()
                               (declare (not safe))
                               (##car _e294340294362_)))
                            (_tl294338294369_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294340294362_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294338294369_))
                            (let ((_e294343294372_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294338294369_))))
                              (let ((_hd294342294376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294343294372_)))
                                    (_tl294341294379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294343294372_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294341294379_))
                                    (let ((_e294346294382_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294341294379_))))
                                      (let ((_hd294345294386_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294346294382_)))
                                            (_tl294344294389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294346294382_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294344294389_))
                                            (let ((_e294349294392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294344294389_))))
                                              (let ((_hd294348294396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294349294392_)))
                                                    (_tl294347294399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294349294392_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294347294399_))
                                                    ((lambda (_L294402_
                                                              _L294404_
                                                              _L294405_)
                                                       (let ((__tmp301292
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp301283
                      (let ((__tmp301289
                             (let ((__tmp301291
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301290
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294405_ '()))))
                               (declare (not safe))
                               (cons __tmp301291 __tmp301290)))
                            (__tmp301284
                             (let ((__tmp301286
                                    (let ((__tmp301288
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301287
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294404_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301288 __tmp301287)))
                                   (__tmp301285
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294402_ '()))))
                               (declare (not safe))
                               (cons __tmp301286 __tmp301285))))
                        (declare (not safe))
                        (cons __tmp301289 __tmp301284))))
                 (declare (not safe))
                 (cons __tmp301292 __tmp301283)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294348294396_
                                                     _hd294345294386_
                                                     _hd294342294376_)
                                                    (_g294333294355_
                                                     _g294334294359_))))
                                            (_g294333294355_
                                             _g294334294359_))))
                                    (_g294333294355_ _g294334294359_))))
                            (_g294333294355_ _g294334294359_))))
                    (_g294333294355_ _g294334294359_)))))
        (_g294332294424_ _$stx294329_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx294428_)
      (let* ((_g294432294454_
              (lambda (_g294433294450_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g294433294450_))))
             (_g294431294523_
              (lambda (_g294433294458_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g294433294458_))
                    (let ((_e294439294461_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g294433294458_))))
                      (let ((_hd294438294465_
                             (let ()
                               (declare (not safe))
                               (##car _e294439294461_)))
                            (_tl294437294468_
                             (let ()
                               (declare (not safe))
                               (##cdr _e294439294461_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl294437294468_))
                            (let ((_e294442294471_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl294437294468_))))
                              (let ((_hd294441294475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e294442294471_)))
                                    (_tl294440294478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e294442294471_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl294440294478_))
                                    (let ((_e294445294481_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl294440294478_))))
                                      (let ((_hd294444294485_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294445294481_)))
                                            (_tl294443294488_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294445294481_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl294443294488_))
                                            (let ((_e294448294491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl294443294488_))))
                                              (let ((_hd294447294495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294448294491_)))
                                                    (_tl294446294498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294448294491_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294446294498_))
                                                    ((lambda (_L294501_
                                                              _L294503_
                                                              _L294504_)
                                                       (let ((__tmp301302
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp301293
                      (let ((__tmp301299
                             (let ((__tmp301301
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp301300
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294504_ '()))))
                               (declare (not safe))
                               (cons __tmp301301 __tmp301300)))
                            (__tmp301294
                             (let ((__tmp301296
                                    (let ((__tmp301298
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp301297
                                           (let ()
                                             (declare (not safe))
                                             (cons _L294503_ '()))))
                                      (declare (not safe))
                                      (cons __tmp301298 __tmp301297)))
                                   (__tmp301295
                                    (let ()
                                      (declare (not safe))
                                      (cons _L294501_ '()))))
                               (declare (not safe))
                               (cons __tmp301296 __tmp301295))))
                        (declare (not safe))
                        (cons __tmp301299 __tmp301294))))
                 (declare (not safe))
                 (cons __tmp301302 __tmp301293)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd294447294495_
                                                     _hd294444294485_
                                                     _hd294441294475_)
                                                    (_g294432294454_
                                                     _g294433294458_))))
                                            (_g294432294454_
                                             _g294433294458_))))
                                    (_g294432294454_ _g294433294458_))))
                            (_g294432294454_ _g294433294458_))))
                    (_g294432294454_ _g294433294458_)))))
        (_g294431294523_ _$stx294428_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx294527_)
      (let* ((___stx300810300811_ _$stx294527_)
             (_g294535294603_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300810300811_)))))
        (let ((___kont300813300814_
               (lambda (_L294881_ _L294883_)
                 (let ((__tmp301318
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301303
                        (let ((__tmp301314
                               (let ((__tmp301317
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301315
                                      (let ((__tmp301316
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301316 '()))))
                                 (declare (not safe))
                                 (cons __tmp301317 __tmp301315)))
                              (__tmp301304
                               (let ((__tmp301311
                                      (let ((__tmp301313
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301312
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294883_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301313 __tmp301312)))
                                     (__tmp301305
                                      (let ((__tmp301306
                                             (let ((__tmp301307
                                                    (let ((__tmp301308
                                                           (let ((__tmp301310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp301309
                          (let () (declare (not safe)) (cons _L294881_ '()))))
                     (declare (not safe))
                     (cons __tmp301310 __tmp301309))))
              (declare (not safe))
              (cons __tmp301308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L294881_ __tmp301307))))
                                        (declare (not safe))
                                        (cons '#f __tmp301306))))
                                 (declare (not safe))
                                 (cons __tmp301311 __tmp301305))))
                          (declare (not safe))
                          (cons __tmp301314 __tmp301304))))
                   (declare (not safe))
                   (cons __tmp301318 __tmp301303))))
              (___kont300815300816_
               (lambda (_L294812_ _L294814_)
                 (let ((__tmp301319
                        (let ((__tmp301320
                               (let ((__tmp301321
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L294812_ __tmp301321))))
                          (declare (not safe))
                          (cons 'primitive: __tmp301320))))
                   (declare (not safe))
                   (cons _L294814_ __tmp301319))))
              (___kont300817300818_
               (lambda (_L294751_ _L294753_)
                 (let ((__tmp301335
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp301322
                        (let ((__tmp301331
                               (let ((__tmp301334
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301332
                                      (let ((__tmp301333
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301333 '()))))
                                 (declare (not safe))
                                 (cons __tmp301334 __tmp301332)))
                              (__tmp301323
                               (let ((__tmp301328
                                      (let ((__tmp301330
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301329
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294753_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301330 __tmp301329)))
                                     (__tmp301324
                                      (let ((__tmp301325
                                             (let ((__tmp301327
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301326
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294751_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301327
                                                     __tmp301326))))
                                        (declare (not safe))
                                        (cons __tmp301325 '()))))
                                 (declare (not safe))
                                 (cons __tmp301328 __tmp301324))))
                          (declare (not safe))
                          (cons __tmp301331 __tmp301323))))
                   (declare (not safe))
                   (cons __tmp301335 __tmp301322))))
              (___kont300819300820_
               (lambda (_L294683_ _L294685_)
                 (let ((__tmp301349
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp301336
                        (let ((__tmp301345
                               (let ((__tmp301348
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301346
                                      (let ((__tmp301347
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp301347 '()))))
                                 (declare (not safe))
                                 (cons __tmp301348 __tmp301346)))
                              (__tmp301337
                               (let ((__tmp301342
                                      (let ((__tmp301344
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp301343
                                             (let ()
                                               (declare (not safe))
                                               (cons _L294685_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301344 __tmp301343)))
                                     (__tmp301338
                                      (let ((__tmp301339
                                             (let ((__tmp301341
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp301340
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L294683_ '()))))
                                               (declare (not safe))
                                               (cons __tmp301341
                                                     __tmp301340))))
                                        (declare (not safe))
                                        (cons __tmp301339 '()))))
                                 (declare (not safe))
                                 (cons __tmp301342 __tmp301338))))
                          (declare (not safe))
                          (cons __tmp301345 __tmp301337))))
                   (declare (not safe))
                   (cons __tmp301349 __tmp301336))))
              (___kont300821300822_
               (lambda (_L294630_ _L294632_)
                 (let ((__tmp301350
                        (let ((__tmp301351
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L294630_ __tmp301351))))
                   (declare (not safe))
                   (cons _L294632_ __tmp301350)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx300810300811_))
              (let ((_e294541294837_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx300810300811_))))
                (let ((_tl294539294844_
                       (let () (declare (not safe)) (##cdr _e294541294837_)))
                      (_hd294540294841_
                       (let () (declare (not safe)) (##car _e294541294837_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl294539294844_))
                      (let ((_e294544294847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294539294844_))))
                        (let ((_tl294542294854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294544294847_)))
                              (_hd294543294851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294544294847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl294542294854_))
                              (let ((_e294547294857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl294542294854_))))
                                (let ((_tl294545294864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e294547294857_)))
                                      (_hd294546294861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e294547294857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd294546294861_))
                                      (let ((_e294548294867_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd294546294861_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e294548294867_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl294545294864_))
                                                (let ((_e294551294871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl294545294864_))))
                                                  (let ((_tl294549294878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e294551294871_)))
                                                        (_hd294550294875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e294551294871_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294549294878_))
                                                        (___kont300813300814_
                                                         _hd294550294875_
                                                         _hd294543294851_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd294543294851_))
                                                            (let ((_e294560294798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd294543294851_))))
                      (declare (not safe))
                      (_g294535294603_))
                    (let () (declare (not safe)) (_g294535294603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd294543294851_))
                                                    (let ((_e294560294798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd294543294851_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e294560294798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294545294864_))
                      (___kont300815300816_ _hd294546294861_ _hd294540294841_)
                      (let () (declare (not safe)) (_g294535294603_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294545294864_))
                      (___kont300819300820_ _hd294546294861_ _hd294543294851_)
                      (let () (declare (not safe)) (_g294535294603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl294545294864_))
                                                        (___kont300819300820_
                                                         _hd294546294861_
                                                         _hd294543294851_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g294535294603_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd294543294851_))
                                                (let ((_e294560294798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd294543294851_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e294560294798_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl294545294864_))
                                                          (___kont300815300816_
                                                           _hd294546294861_
                                                           _hd294540294841_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl294545294864_))
                      (let ((_e294578294741_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl294545294864_))))
                        (let ((_tl294576294748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e294578294741_)))
                              (_hd294577294745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e294578294741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl294576294748_))
                              (___kont300817300818_
                               _hd294577294745_
                               _hd294546294861_)
                              (let ()
                                (declare (not safe))
                                (_g294535294603_)))))
                      (let () (declare (not safe)) (_g294535294603_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl294545294864_))
                  (___kont300819300820_ _hd294546294861_ _hd294543294851_)
                  (let () (declare (not safe)) (_g294535294603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294545294864_))
                                                    (___kont300819300820_
                                                     _hd294546294861_
                                                     _hd294543294851_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294535294603_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd294543294851_))
                                          (let ((_e294560294798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd294543294851_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e294560294798_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294545294864_))
                                                    (___kont300815300816_
                                                     _hd294546294861_
                                                     _hd294540294841_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl294545294864_))
                                                        (let ((_e294578294741_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl294545294864_))))
                  (let ((_tl294576294748_
                         (let () (declare (not safe)) (##cdr _e294578294741_)))
                        (_hd294577294745_
                         (let ()
                           (declare (not safe))
                           (##car _e294578294741_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl294576294748_))
                        (___kont300817300818_
                         _hd294577294745_
                         _hd294546294861_)
                        (let () (declare (not safe)) (_g294535294603_)))))
                (let () (declare (not safe)) (_g294535294603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl294545294864_))
                                                    (___kont300819300820_
                                                     _hd294546294861_
                                                     _hd294543294851_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294535294603_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl294545294864_))
                                              (___kont300819300820_
                                               _hd294546294861_
                                               _hd294543294851_)
                                              (let ()
                                                (declare (not safe))
                                                (_g294535294603_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd294543294851_))
                                  (let ((_e294560294798_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd294543294851_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl294542294854_))
                                        (___kont300821300822_
                                         _hd294543294851_
                                         _hd294540294841_)
                                        (let ()
                                          (declare (not safe))
                                          (_g294535294603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl294542294854_))
                                      (___kont300821300822_
                                       _hd294543294851_
                                       _hd294540294841_)
                                      (let ()
                                        (declare (not safe))
                                        (_g294535294603_)))))))
                      (let () (declare (not safe)) (_g294535294603_)))))
              (let () (declare (not safe)) (_g294535294603_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx294905_)
      (let* ((___stx300950300951_ _$stx294905_)
             (_g294910294965_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx300950300951_)))))
        (let ((___kont300953300954_
               (lambda (_L295150_ _L295152_)
                 (let ((__tmp301367
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp301352
                        (let ((__tmp301363
                               (let ((__tmp301366
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301364
                                      (let ((__tmp301365
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301365 '()))))
                                 (declare (not safe))
                                 (cons __tmp301366 __tmp301364)))
                              (__tmp301353
                               (let ((__tmp301354
                                      (let ((__tmp301362
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301355
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295150_
                                                  _L295152_))
                                               (let ((__tmp301356
                                                      (lambda (_g295169295173_
                                                               _g295170295176_
                                                               _g295171295178_)
                                                        (let ((__tmp301357
                                                               (let ((__tmp301361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301358
                              (let ((__tmp301359
                                     (let ((__tmp301360
                                            (let ()
                                              (declare (not safe))
                                              (cons _g295169295173_ '()))))
                                       (declare (not safe))
                                       (cons _g295170295176_ __tmp301360))))
                                (declare (not safe))
                                (cons 'primitive: __tmp301359))))
                         (declare (not safe))
                         (cons __tmp301361 __tmp301358))))
                  (declare (not safe))
                  (cons __tmp301357 _g295171295178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301356
                                                         '()
                                                         _L295150_
                                                         _L295152_)))))
                                        (declare (not safe))
                                        (cons __tmp301362 __tmp301355))))
                                 (declare (not safe))
                                 (cons __tmp301354 '()))))
                          (declare (not safe))
                          (cons __tmp301363 __tmp301353))))
                   (declare (not safe))
                   (cons __tmp301367 __tmp301352))))
              (___kont300957300958_
               (lambda (_L295036_ _L295038_)
                 (let ((__tmp301382
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp301368
                        (let ((__tmp301378
                               (let ((__tmp301381
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp301379
                                      (let ((__tmp301380
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp301380 '()))))
                                 (declare (not safe))
                                 (cons __tmp301381 __tmp301379)))
                              (__tmp301369
                               (let ((__tmp301370
                                      (let ((__tmp301377
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp301371
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L295036_
                                                  _L295038_))
                                               (let ((__tmp301372
                                                      (lambda (_g295053295057_
                                                               _g295054295060_
                                                               _g295055295062_)
                                                        (let ((__tmp301373
                                                               (let ((__tmp301376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp301374
                              (let ((__tmp301375
                                     (let ()
                                       (declare (not safe))
                                       (cons _g295053295057_ '()))))
                                (declare (not safe))
                                (cons _g295054295060_ __tmp301375))))
                         (declare (not safe))
                         (cons __tmp301376 __tmp301374))))
                  (declare (not safe))
                  (cons __tmp301373 _g295055295062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp301372
                                                         '()
                                                         _L295036_
                                                         _L295038_)))))
                                        (declare (not safe))
                                        (cons __tmp301377 __tmp301371))))
                                 (declare (not safe))
                                 (cons __tmp301370 '()))))
                          (declare (not safe))
                          (cons __tmp301378 __tmp301369))))
                   (declare (not safe))
                   (cons __tmp301382 __tmp301368)))))
          (let* ((___match301001301002_
                  (lambda (_e294942294972_
                           _hd294941294976_
                           _tl294940294979_
                           ___splice300959300960_
                           _target294943294982_
                           _tl294945294985_)
                    (letrec ((_loop294946294988_
                              (lambda (_hd294944294992_
                                       _dispatch294950294995_
                                       _arity294951294997_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd294944294992_))
                                    (let ((_e294947295000_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd294944294992_))))
                                      (let ((_lp-tl294949295007_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294947295000_)))
                                            (_lp-hd294948295004_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294947295000_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd294948295004_))
                                            (let ((_e294956295010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd294948295004_))))
                                              (let ((_tl294954295017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294956295010_)))
                                                    (_hd294955295014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294956295010_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294954295017_))
                                                    (let ((_e294959295020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294954295017_))))
                                                      (let ((_tl294957295027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e294959295020_)))
                    (_hd294958295024_
                     (let () (declare (not safe)) (##car _e294959295020_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294957295027_))
                    (_loop294946294988_
                     _lp-tl294949295007_
                     (let ()
                       (declare (not safe))
                       (cons _hd294958295024_ _dispatch294950294995_))
                     (let ()
                       (declare (not safe))
                       (cons _hd294955295014_ _arity294951294997_)))
                    (let () (declare (not safe)) (_g294910294965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g294910294965_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g294910294965_)))))
                                    (let ((_arity294953295033_
                                           (reverse _arity294951294997_))
                                          (_dispatch294952295030_
                                           (reverse _dispatch294950294995_)))
                                      (___kont300957300958_
                                       _dispatch294952295030_
                                       _arity294953295033_))))))
                      (_loop294946294988_ _target294943294982_ '() '()))))
                 (___match300993300994_
                  (lambda (_e294942294972_ _hd294941294976_ _tl294940294979_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl294940294979_))
                        (let ((___splice300959300960_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl294940294979_
                                  '0))))
                          (let ((_tl294945294985_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice300959300960_ '1)))
                                (_target294943294982_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice300959300960_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl294945294985_))
                                (___match301001301002_
                                 _e294942294972_
                                 _hd294941294976_
                                 _tl294940294979_
                                 ___splice300959300960_
                                 _target294943294982_
                                 _tl294945294985_)
                                (let ()
                                  (declare (not safe))
                                  (_g294910294965_)))))
                        (let () (declare (not safe)) (_g294910294965_)))))
                 (___match300987300988_
                  (lambda (_e294916295072_
                           _hd294915295076_
                           _tl294914295079_
                           _e294919295082_
                           _hd294918295086_
                           _tl294917295089_
                           _e294920295092_
                           ___splice300955300956_
                           _target294921295096_
                           _tl294923295099_)
                    (letrec ((_loop294924295102_
                              (lambda (_hd294922295106_
                                       _dispatch294928295109_
                                       _arity294929295111_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd294922295106_))
                                    (let ((_e294925295114_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd294922295106_))))
                                      (let ((_lp-tl294927295121_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e294925295114_)))
                                            (_lp-hd294926295118_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e294925295114_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd294926295118_))
                                            (let ((_e294934295124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd294926295118_))))
                                              (let ((_tl294932295131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e294934295124_)))
                                                    (_hd294933295128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e294934295124_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl294932295131_))
                                                    (let ((_e294937295134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl294932295131_))))
                                                      (let ((_tl294935295141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e294937295134_)))
                    (_hd294936295138_
                     (let () (declare (not safe)) (##car _e294937295134_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl294935295141_))
                    (_loop294924295102_
                     _lp-tl294927295121_
                     (let ()
                       (declare (not safe))
                       (cons _hd294936295138_ _dispatch294928295109_))
                     (let ()
                       (declare (not safe))
                       (cons _hd294933295128_ _arity294929295111_)))
                    (___match300993300994_
                     _e294916295072_
                     _hd294915295076_
                     _tl294914295079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match300993300994_
                                                     _e294916295072_
                                                     _hd294915295076_
                                                     _tl294914295079_))))
                                            (___match300993300994_
                                             _e294916295072_
                                             _hd294915295076_
                                             _tl294914295079_))))
                                    (let ((_arity294931295147_
                                           (reverse _arity294929295111_))
                                          (_dispatch294930295144_
                                           (reverse _dispatch294928295109_)))
                                      (___kont300953300954_
                                       _dispatch294930295144_
                                       _arity294931295147_))))))
                      (_loop294924295102_ _target294921295096_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx300950300951_))
                (let ((_e294916295072_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx300950300951_))))
                  (let ((_tl294914295079_
                         (let () (declare (not safe)) (##cdr _e294916295072_)))
                        (_hd294915295076_
                         (let ()
                           (declare (not safe))
                           (##car _e294916295072_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl294914295079_))
                        (let ((_e294919295082_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl294914295079_))))
                          (let ((_tl294917295089_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e294919295082_)))
                                (_hd294918295086_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e294919295082_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd294918295086_))
                                (let ((_e294920295092_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd294918295086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e294920295092_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl294917295089_))
                                          (let ((___splice300955300956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl294917295089_
                                                    '0))))
                                            (let ((_tl294923295099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300955300956_
                                                      '1)))
                                                  (_target294921295096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300955300956_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl294923295099_))
                                                  (___match300987300988_
                                                   _e294916295072_
                                                   _hd294915295076_
                                                   _tl294914295079_
                                                   _e294919295082_
                                                   _hd294918295086_
                                                   _tl294917295089_
                                                   _e294920295092_
                                                   ___splice300955300956_
                                                   _target294921295096_
                                                   _tl294923295099_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl294914295079_))
                                                      (let ((___splice300959300960_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl294914295079_ '0))))
                (let ((_tl294945294985_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300959300960_ '1)))
                      (_target294943294982_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice300959300960_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl294945294985_))
                      (___match301001301002_
                       _e294916295072_
                       _hd294915295076_
                       _tl294914295079_
                       ___splice300959300960_
                       _target294943294982_
                       _tl294945294985_)
                      (let () (declare (not safe)) (_g294910294965_)))))
              (let () (declare (not safe)) (_g294910294965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl294914295079_))
                                              (let ((___splice300959300960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl294914295079_
                                                        '0))))
                                                (let ((_tl294945294985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice300959300960_
                                                          '1)))
                                                      (_target294943294982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice300959300960_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl294945294985_))
                                                      (___match301001301002_
                                                       _e294916295072_
                                                       _hd294915295076_
                                                       _tl294914295079_
                                                       ___splice300959300960_
                                                       _target294943294982_
                                                       _tl294945294985_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g294910294965_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g294910294965_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl294914295079_))
                                          (let ((___splice300959300960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl294914295079_
                                                    '0))))
                                            (let ((_tl294945294985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300959300960_
                                                      '1)))
                                                  (_target294943294982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice300959300960_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl294945294985_))
                                                  (___match301001301002_
                                                   _e294916295072_
                                                   _hd294915295076_
                                                   _tl294914295079_
                                                   ___splice300959300960_
                                                   _target294943294982_
                                                   _tl294945294985_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g294910294965_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g294910294965_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl294914295079_))
                                    (let ((___splice300959300960_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl294914295079_
                                              '0))))
                                      (let ((_tl294945294985_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300959300960_
                                                '1)))
                                            (_target294943294982_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice300959300960_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl294945294985_))
                                            (___match301001301002_
                                             _e294916295072_
                                             _hd294915295076_
                                             _tl294914295079_
                                             ___splice300959300960_
                                             _target294943294982_
                                             _tl294945294985_)
                                            (let ()
                                              (declare (not safe))
                                              (_g294910294965_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g294910294965_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl294914295079_))
                            (let ((___splice300959300960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl294914295079_
                                      '0))))
                              (let ((_tl294945294985_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice300959300960_
                                        '1)))
                                    (_target294943294982_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice300959300960_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl294945294985_))
                                    (___match301001301002_
                                     _e294916295072_
                                     _hd294915295076_
                                     _tl294914295079_
                                     ___splice300959300960_
                                     _target294943294982_
                                     _tl294945294985_)
                                    (let ()
                                      (declare (not safe))
                                      (_g294910294965_)))))
                            (let () (declare (not safe)) (_g294910294965_))))))
                (let () (declare (not safe)) (_g294910294965_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx295187_)
      (let* ((_g295191295209_
              (lambda (_g295192295205_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295192295205_))))
             (_g295190295264_
              (lambda (_g295192295213_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295192295213_))
                    (let ((_e295197295216_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295192295213_))))
                      (let ((_hd295196295220_
                             (let ()
                               (declare (not safe))
                               (##car _e295197295216_)))
                            (_tl295195295223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295197295216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295195295223_))
                            (let ((_e295200295226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295195295223_))))
                              (let ((_hd295199295230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295200295226_)))
                                    (_tl295198295233_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295200295226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295198295233_))
                                    (let ((_e295203295236_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295198295233_))))
                                      (let ((_hd295202295240_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295203295236_)))
                                            (_tl295201295243_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295203295236_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295201295243_))
                                            ((lambda (_L295246_ _L295248_)
                                               (let ((__tmp301396
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp301383
                                                      (let ((__tmp301392
                                                             (let ((__tmp301395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301393
                            (let ((__tmp301394
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp301394 '()))))
                       (declare (not safe))
                       (cons __tmp301395 __tmp301393)))
                    (__tmp301384
                     (let ((__tmp301389
                            (let ((__tmp301391
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301390
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295248_ '()))))
                              (declare (not safe))
                              (cons __tmp301391 __tmp301390)))
                           (__tmp301385
                            (let ((__tmp301386
                                   (let ((__tmp301388
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301387
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295246_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301388 __tmp301387))))
                              (declare (not safe))
                              (cons __tmp301386 '()))))
                       (declare (not safe))
                       (cons __tmp301389 __tmp301385))))
                (declare (not safe))
                (cons __tmp301392 __tmp301384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301396
                                                       __tmp301383)))
                                             _hd295202295240_
                                             _hd295199295230_)
                                            (_g295191295209_
                                             _g295192295213_))))
                                    (_g295191295209_ _g295192295213_))))
                            (_g295191295209_ _g295192295213_))))
                    (_g295191295209_ _g295192295213_)))))
        (_g295190295264_ _$stx295187_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx295268_)
      (let* ((_g295272295290_
              (lambda (_g295273295286_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295273295286_))))
             (_g295271295345_
              (lambda (_g295273295294_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295273295294_))
                    (let ((_e295278295297_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295273295294_))))
                      (let ((_hd295277295301_
                             (let ()
                               (declare (not safe))
                               (##car _e295278295297_)))
                            (_tl295276295304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295278295297_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl295276295304_))
                            (let ((_e295281295307_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl295276295304_))))
                              (let ((_hd295280295311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e295281295307_)))
                                    (_tl295279295314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e295281295307_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl295279295314_))
                                    (let ((_e295284295317_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl295279295314_))))
                                      (let ((_hd295283295321_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295284295317_)))
                                            (_tl295282295324_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295284295317_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295282295324_))
                                            ((lambda (_L295327_ _L295329_)
                                               (let ((__tmp301410
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp301397
                                                      (let ((__tmp301406
                                                             (let ((__tmp301409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp301407
                            (let ((__tmp301408
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp301408 '()))))
                       (declare (not safe))
                       (cons __tmp301409 __tmp301407)))
                    (__tmp301398
                     (let ((__tmp301403
                            (let ((__tmp301405
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp301404
                                   (let ()
                                     (declare (not safe))
                                     (cons _L295329_ '()))))
                              (declare (not safe))
                              (cons __tmp301405 __tmp301404)))
                           (__tmp301399
                            (let ((__tmp301400
                                   (let ((__tmp301402
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp301401
                                          (let ()
                                            (declare (not safe))
                                            (cons _L295327_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301402 __tmp301401))))
                              (declare (not safe))
                              (cons __tmp301400 '()))))
                       (declare (not safe))
                       (cons __tmp301403 __tmp301399))))
                (declare (not safe))
                (cons __tmp301406 __tmp301398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301410
                                                       __tmp301397)))
                                             _hd295283295321_
                                             _hd295280295311_)
                                            (_g295272295290_
                                             _g295273295294_))))
                                    (_g295272295290_ _g295273295294_))))
                            (_g295272295290_ _g295273295294_))))
                    (_g295272295290_ _g295273295294_)))))
        (_g295271295345_ _$stx295268_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx295349_)
      (let* ((___stx301004301005_ _$stx295349_)
             (_g295356295427_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301004301005_)))))
        (let ((___kont301007301008_
               (lambda (_L295718_ _L295720_)
                 (let ((__tmp301416
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301411
                        (let ((__tmp301412
                               (let ((__tmp301413
                                      (let ((__tmp301415
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301414
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295718_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301415 __tmp301414))))
                                 (declare (not safe))
                                 (cons __tmp301413 '()))))
                          (declare (not safe))
                          (cons _L295720_ __tmp301412))))
                   (declare (not safe))
                   (cons __tmp301416 __tmp301411))))
              (___kont301009301010_
               (lambda (_L295637_ _L295639_)
                 (let ((__tmp301425
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301417
                        (let ((__tmp301418
                               (let ((__tmp301419
                                      (let ((__tmp301424
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301420
                                             (let ((__tmp301421
                                                    (lambda (_g295658295661_
                                                             _g295659295664_)
                                                      (let ((__tmp301422
                                                             (let ((__tmp301423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295658295661_ __tmp301423))))
                (declare (not safe))
                (cons __tmp301422 _g295659295664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301421
                                                       '()
                                                       _L295637_))))
                                        (declare (not safe))
                                        (cons __tmp301424 __tmp301420))))
                                 (declare (not safe))
                                 (cons __tmp301419 '()))))
                          (declare (not safe))
                          (cons _L295639_ __tmp301418))))
                   (declare (not safe))
                   (cons __tmp301425 __tmp301417))))
              (___kont301013301014_
               (lambda (_L295549_ _L295551_)
                 (let ((__tmp301432
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301426
                        (let ((__tmp301427
                               (let ((__tmp301428
                                      (let ((__tmp301431
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301429
                                             (let ((__tmp301430
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L295549_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301430))))
                                        (declare (not safe))
                                        (cons __tmp301431 __tmp301429))))
                                 (declare (not safe))
                                 (cons __tmp301428 '()))))
                          (declare (not safe))
                          (cons _L295551_ __tmp301427))))
                   (declare (not safe))
                   (cons __tmp301432 __tmp301426))))
              (___kont301015301016_
               (lambda (_L295484_ _L295486_)
                 (let ((__tmp301442
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301433
                        (let ((__tmp301434
                               (let ((__tmp301435
                                      (let ((__tmp301441
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301436
                                             (let ((__tmp301437
                                                    (let ((__tmp301438
                                                           (lambda (_g295503295506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g295504295509_)
                     (let ((__tmp301439
                            (let ((__tmp301440
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g295503295506_ __tmp301440))))
                       (declare (not safe))
                       (cons __tmp301439 _g295504295509_)))))
              (declare (not safe))
              (foldr1 __tmp301438 '() _L295484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp301437))))
                                        (declare (not safe))
                                        (cons __tmp301441 __tmp301436))))
                                 (declare (not safe))
                                 (cons __tmp301435 '()))))
                          (declare (not safe))
                          (cons _L295486_ __tmp301434))))
                   (declare (not safe))
                   (cons __tmp301442 __tmp301433)))))
          (let* ((___match301123301124_
                  (lambda (_e295409295434_
                           _hd295408295438_
                           _tl295407295441_
                           _e295412295444_
                           _hd295411295448_
                           _tl295410295451_
                           ___splice301017301018_
                           _target295413295454_
                           _tl295415295457_)
                    (letrec ((_loop295416295460_
                              (lambda (_hd295414295464_ _arity295420295467_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295414295464_))
                                    (let ((_e295417295470_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295414295464_))))
                                      (let ((_lp-tl295419295477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295417295470_)))
                                            (_lp-hd295418295474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295417295470_))))
                                        (_loop295416295460_
                                         _lp-tl295419295477_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295418295474_
                                                 _arity295420295467_)))))
                                    (let ((_arity295421295480_
                                           (reverse _arity295420295467_)))
                                      (___kont301015301016_
                                       _arity295421295480_
                                       _hd295411295448_))))))
                      (_loop295416295460_ _target295413295454_ '()))))
                 (___match301083301084_
                  (lambda (_e295377295573_
                           _hd295376295577_
                           _tl295375295580_
                           _e295380295583_
                           _hd295379295587_
                           _tl295378295590_
                           _e295383295593_
                           _hd295382295597_
                           _tl295381295600_
                           _e295384295603_
                           ___splice301011301012_
                           _target295385295607_
                           _tl295387295610_)
                    (letrec ((_loop295388295613_
                              (lambda (_hd295386295617_ _arity295392295620_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd295386295617_))
                                    (let ((_e295389295623_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd295386295617_))))
                                      (let ((_lp-tl295391295630_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e295389295623_)))
                                            (_lp-hd295390295627_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e295389295623_))))
                                        (_loop295388295613_
                                         _lp-tl295391295630_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd295390295627_
                                                 _arity295392295620_)))))
                                    (let ((_arity295393295633_
                                           (reverse _arity295392295620_)))
                                      (___kont301009301010_
                                       _arity295393295633_
                                       _hd295379295587_))))))
                      (_loop295388295613_ _target295385295607_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301004301005_))
                (let ((_e295362295674_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301004301005_))))
                  (let ((_tl295360295681_
                         (let () (declare (not safe)) (##cdr _e295362295674_)))
                        (_hd295361295678_
                         (let ()
                           (declare (not safe))
                           (##car _e295362295674_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295360295681_))
                        (let ((_e295365295684_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295360295681_))))
                          (let ((_tl295363295691_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295365295684_)))
                                (_hd295364295688_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295365295684_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295363295691_))
                                (let ((_e295368295694_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295363295691_))))
                                  (let ((_tl295366295701_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295368295694_)))
                                        (_hd295367295698_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295368295694_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd295367295698_))
                                        (let ((_e295369295704_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd295367295698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e295369295704_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl295366295701_))
                                                  (let ((_e295372295708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl295366295701_))))
                                                    (let ((_tl295370295715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e295372295708_)))
                                                          (_hd295371295712_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e295372295708_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl295370295715_))
                                                          (___kont301007301008_
                                                           _hd295371295712_
                                                           _hd295364295688_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl295366295701_))
                      (let ((___splice301011301012_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295366295701_ '0))))
                        (let ((_tl295387295610_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301011301012_ '1)))
                              (_target295385295607_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301011301012_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295387295610_))
                              (___match301083301084_
                               _e295362295674_
                               _hd295361295678_
                               _tl295360295681_
                               _e295365295684_
                               _hd295364295688_
                               _tl295363295691_
                               _e295368295694_
                               _hd295367295698_
                               _tl295366295701_
                               _e295369295704_
                               ___splice301011301012_
                               _target295385295607_
                               _tl295387295610_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl295363295691_))
                                  (let ((___splice301017301018_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl295363295691_
                                            '0))))
                                    (let ((_tl295415295457_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301017301018_
                                              '1)))
                                          (_target295413295454_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice301017301018_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl295415295457_))
                                          (___match301123301124_
                                           _e295362295674_
                                           _hd295361295678_
                                           _tl295360295681_
                                           _e295365295684_
                                           _hd295364295688_
                                           _tl295363295691_
                                           ___splice301017301018_
                                           _target295413295454_
                                           _tl295415295457_)
                                          (let ()
                                            (declare (not safe))
                                            (_g295356295427_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g295356295427_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl295363295691_))
                          (let ((___splice301017301018_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl295363295691_
                                    '0))))
                            (let ((_tl295415295457_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice301017301018_ '1)))
                                  (_target295413295454_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice301017301018_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl295415295457_))
                                  (___match301123301124_
                                   _e295362295674_
                                   _hd295361295678_
                                   _tl295360295681_
                                   _e295365295684_
                                   _hd295364295688_
                                   _tl295363295691_
                                   ___splice301017301018_
                                   _target295413295454_
                                   _tl295415295457_)
                                  (let ()
                                    (declare (not safe))
                                    (_g295356295427_)))))
                          (let () (declare (not safe)) (_g295356295427_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295366295701_))
                                                      (let ((___splice301011301012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295366295701_ '0))))
                (let ((_tl295387295610_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301011301012_ '1)))
                      (_target295385295607_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301011301012_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295387295610_))
                      (___match301083301084_
                       _e295362295674_
                       _hd295361295678_
                       _tl295360295681_
                       _e295365295684_
                       _hd295364295688_
                       _tl295363295691_
                       _e295368295694_
                       _hd295367295698_
                       _tl295366295701_
                       _e295369295704_
                       ___splice301011301012_
                       _target295385295607_
                       _tl295387295610_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl295366295701_))
                          (___kont301013301014_
                           _hd295367295698_
                           _hd295364295688_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295363295691_))
                              (let ((___splice301017301018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295363295691_
                                        '0))))
                                (let ((_tl295415295457_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301017301018_
                                          '1)))
                                      (_target295413295454_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice301017301018_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295415295457_))
                                      (___match301123301124_
                                       _e295362295674_
                                       _hd295361295678_
                                       _tl295360295681_
                                       _e295365295684_
                                       _hd295364295688_
                                       _tl295363295691_
                                       ___splice301017301018_
                                       _target295413295454_
                                       _tl295415295457_)
                                      (let ()
                                        (declare (not safe))
                                        (_g295356295427_)))))
                              (let ()
                                (declare (not safe))
                                (_g295356295427_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl295366295701_))
                  (___kont301013301014_ _hd295367295698_ _hd295364295688_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl295363295691_))
                      (let ((___splice301017301018_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl295363295691_ '0))))
                        (let ((_tl295415295457_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301017301018_ '1)))
                              (_target295413295454_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice301017301018_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl295415295457_))
                              (___match301123301124_
                               _e295362295674_
                               _hd295361295678_
                               _tl295360295681_
                               _e295365295684_
                               _hd295364295688_
                               _tl295363295691_
                               ___splice301017301018_
                               _target295413295454_
                               _tl295415295457_)
                              (let ()
                                (declare (not safe))
                                (_g295356295427_)))))
                      (let () (declare (not safe)) (_g295356295427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl295366295701_))
                                                  (___kont301013301014_
                                                   _hd295367295698_
                                                   _hd295364295688_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl295363295691_))
                                                      (let ((___splice301017301018_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl295363295691_ '0))))
                (let ((_tl295415295457_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301017301018_ '1)))
                      (_target295413295454_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice301017301018_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl295415295457_))
                      (___match301123301124_
                       _e295362295674_
                       _hd295361295678_
                       _tl295360295681_
                       _e295365295684_
                       _hd295364295688_
                       _tl295363295691_
                       ___splice301017301018_
                       _target295413295454_
                       _tl295415295457_)
                      (let () (declare (not safe)) (_g295356295427_)))))
              (let () (declare (not safe)) (_g295356295427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295366295701_))
                                            (___kont301013301014_
                                             _hd295367295698_
                                             _hd295364295688_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl295363295691_))
                                                (let ((___splice301017301018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl295363295691_
                                                          '0))))
                                                  (let ((_tl295415295457_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301017301018_
                                                            '1)))
                                                        (_target295413295454_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice301017301018_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl295415295457_))
                                                        (___match301123301124_
                                                         _e295362295674_
                                                         _hd295361295678_
                                                         _tl295360295681_
                                                         _e295365295684_
                                                         _hd295364295688_
                                                         _tl295363295691_
                                                         ___splice301017301018_
                                                         _target295413295454_
                                                         _tl295415295457_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g295356295427_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g295356295427_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295363295691_))
                                    (let ((___splice301017301018_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295363295691_
                                              '0))))
                                      (let ((_tl295415295457_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301017301018_
                                                '1)))
                                            (_target295413295454_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301017301018_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295415295457_))
                                            (___match301123301124_
                                             _e295362295674_
                                             _hd295361295678_
                                             _tl295360295681_
                                             _e295365295684_
                                             _hd295364295688_
                                             _tl295363295691_
                                             ___splice301017301018_
                                             _target295413295454_
                                             _tl295415295457_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295356295427_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295356295427_))))))
                        (let () (declare (not safe)) (_g295356295427_)))))
                (let () (declare (not safe)) (_g295356295427_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx295744_)
      (let* ((___stx301126301127_ _$stx295744_)
             (_g295749295784_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx301126301127_)))))
        (let ((___kont301129301130_
               (lambda (_L295906_ _L295908_)
                 (let ((__tmp301448
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301443
                        (let ((__tmp301444
                               (let ((__tmp301445
                                      (let ((__tmp301447
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp301446
                                             (let ()
                                               (declare (not safe))
                                               (cons _L295906_ '()))))
                                        (declare (not safe))
                                        (cons __tmp301447 __tmp301446))))
                                 (declare (not safe))
                                 (cons __tmp301445 '()))))
                          (declare (not safe))
                          (cons _L295908_ __tmp301444))))
                   (declare (not safe))
                   (cons __tmp301448 __tmp301443))))
              (___kont301131301132_
               (lambda (_L295841_ _L295843_)
                 (let ((__tmp301457
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp301449
                        (let ((__tmp301450
                               (let ((__tmp301451
                                      (let ((__tmp301456
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp301452
                                             (let ((__tmp301453
                                                    (lambda (_g295860295863_
                                                             _g295861295866_)
                                                      (let ((__tmp301454
                                                             (let ((__tmp301455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g295860295863_ __tmp301455))))
                (declare (not safe))
                (cons __tmp301454 _g295861295866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp301453
                                                       '()
                                                       _L295841_))))
                                        (declare (not safe))
                                        (cons __tmp301456 __tmp301452))))
                                 (declare (not safe))
                                 (cons __tmp301451 '()))))
                          (declare (not safe))
                          (cons _L295843_ __tmp301450))))
                   (declare (not safe))
                   (cons __tmp301457 __tmp301449)))))
          (let ((___match301175301176_
                 (lambda (_e295766295791_
                          _hd295765295795_
                          _tl295764295798_
                          _e295769295801_
                          _hd295768295805_
                          _tl295767295808_
                          ___splice301133301134_
                          _target295770295811_
                          _tl295772295814_)
                   (letrec ((_loop295773295817_
                             (lambda (_hd295771295821_ _arity295777295824_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd295771295821_))
                                   (let ((_e295774295827_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd295771295821_))))
                                     (let ((_lp-tl295776295834_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e295774295827_)))
                                           (_lp-hd295775295831_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e295774295827_))))
                                       (_loop295773295817_
                                        _lp-tl295776295834_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd295775295831_
                                                _arity295777295824_)))))
                                   (let ((_arity295778295837_
                                          (reverse _arity295777295824_)))
                                     (___kont301131301132_
                                      _arity295778295837_
                                      _hd295768295805_))))))
                     (_loop295773295817_ _target295770295811_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx301126301127_))
                (let ((_e295755295876_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx301126301127_))))
                  (let ((_tl295753295883_
                         (let () (declare (not safe)) (##cdr _e295755295876_)))
                        (_hd295754295880_
                         (let ()
                           (declare (not safe))
                           (##car _e295755295876_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl295753295883_))
                        (let ((_e295758295886_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl295753295883_))))
                          (let ((_tl295756295893_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e295758295886_)))
                                (_hd295757295890_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e295758295886_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl295756295893_))
                                (let ((_e295761295896_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl295756295893_))))
                                  (let ((_tl295759295903_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e295761295896_)))
                                        (_hd295760295900_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e295761295896_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295759295903_))
                                        (___kont301129301130_
                                         _hd295760295900_
                                         _hd295757295890_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl295756295893_))
                                            (let ((___splice301133301134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl295756295893_
                                                      '0))))
                                              (let ((_tl295772295814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301133301134_
                                                        '1)))
                                                    (_target295770295811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice301133301134_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl295772295814_))
                                                    (___match301175301176_
                                                     _e295755295876_
                                                     _hd295754295880_
                                                     _tl295753295883_
                                                     _e295758295886_
                                                     _hd295757295890_
                                                     _tl295756295893_
                                                     ___splice301133301134_
                                                     _target295770295811_
                                                     _tl295772295814_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g295749295784_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g295749295784_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl295756295893_))
                                    (let ((___splice301133301134_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl295756295893_
                                              '0))))
                                      (let ((_tl295772295814_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301133301134_
                                                '1)))
                                            (_target295770295811_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice301133301134_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl295772295814_))
                                            (___match301175301176_
                                             _e295755295876_
                                             _hd295754295880_
                                             _tl295753295883_
                                             _e295758295886_
                                             _hd295757295890_
                                             _tl295756295893_
                                             ___splice301133301134_
                                             _target295770295811_
                                             _tl295772295814_)
                                            (let ()
                                              (declare (not safe))
                                              (_g295749295784_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g295749295784_))))))
                        (let () (declare (not safe)) (_g295749295784_)))))
                (let () (declare (not safe)) (_g295749295784_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx295928_)
      (let* ((_g295932295967_
              (lambda (_g295933295963_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g295933295963_))))
             (_g295931296095_
              (lambda (_g295933295971_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g295933295971_))
                    (let ((_e295938295974_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g295933295971_))))
                      (let ((_hd295937295978_
                             (let ()
                               (declare (not safe))
                               (##car _e295938295974_)))
                            (_tl295936295981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e295938295974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl295936295981_))
                            (let ((_g301458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl295936295981_
                                      '0))))
                              (begin
                                (let ((_g301459_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301458_)
                                             (##vector-length _g301458_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301459_ 2)))
                                      (error "Context expects 2 values"
                                             _g301459_)))
                                (let ((_target295939295984_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301458_ 0)))
                                      (_tl295941295987_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301458_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl295941295987_))
                                      (letrec ((_loop295942295990_
                                                (lambda (_hd295940295994_
                                                         _arity295946295997_
                                                         _prim295947295999_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd295940295994_))
                                                      (let ((_e295943296002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd295940295994_))))
                (let ((_lp-hd295944296006_
                       (let () (declare (not safe)) (##car _e295943296002_)))
                      (_lp-tl295945296009_
                       (let () (declare (not safe)) (##cdr _e295943296002_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd295944296006_))
                      (let ((_e295952296012_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd295944296006_))))
                        (let ((_hd295951296016_
                               (let ()
                                 (declare (not safe))
                                 (##car _e295952296012_)))
                              (_tl295950296019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e295952296012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl295950296019_))
                              (let ((_g301468_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl295950296019_
                                        '0))))
                                (begin
                                  (let ((_g301469_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301468_)
                                               (##vector-length _g301468_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301469_ 2)))
                                        (error "Context expects 2 values"
                                               _g301469_)))
                                  (let ((_target295953296022_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301468_ 0)))
                                        (_tl295955296025_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301468_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl295955296025_))
                                        (letrec ((_loop295956296028_
                                                  (lambda (_hd295954296032_
                                                           _arity295960296035_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd295954296032_))
                                                        (let ((_e295957296038_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd295954296032_))))
                  (let ((_lp-hd295958296042_
                         (let () (declare (not safe)) (##car _e295957296038_)))
                        (_lp-tl295959296045_
                         (let ()
                           (declare (not safe))
                           (##cdr _e295957296038_))))
                    (_loop295956296028_
                     _lp-tl295959296045_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd295958296042_ _arity295960296035_)))))
                (let ((_arity295961296048_ (reverse _arity295960296035_)))
                  (_loop295942295990_
                   _lp-tl295945296009_
                   (let ()
                     (declare (not safe))
                     (cons _arity295961296048_ _arity295946295997_))
                   (let ()
                     (declare (not safe))
                     (cons _hd295951296016_ _prim295947295999_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop295956296028_
                                           _target295953296022_
                                           '()))
                                        (_g295932295967_ _g295933295971_)))))
                              (_g295932295967_ _g295933295971_))))
                      (_g295932295967_ _g295933295971_))))
              (let ((_arity295948296052_ (reverse _arity295946295997_))
                    (_prim295949296055_ (reverse _prim295947295999_)))
                ((lambda (_L296058_ _L296060_)
                   (let ((__tmp301467
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301460
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296058_
                               _L296060_))
                            (let ((__tmp301461
                                   (lambda (_g296075296081_
                                            _g296076296084_
                                            _g296077296086_)
                                     (let ((__tmp301462
                                            (let ((__tmp301466
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp301463
                                                   (let ((__tmp301464
                                                          (let ((__tmp301465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296078296089_ _g296079296092_)
                           (let ()
                             (declare (not safe))
                             (cons _g296078296089_ _g296079296092_)))))
                    (declare (not safe))
                    (foldr1 __tmp301465 '() _g296075296081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296076296084_
                                                           __tmp301464))))
                                              (declare (not safe))
                                              (cons __tmp301466 __tmp301463))))
                                       (declare (not safe))
                                       (cons __tmp301462 _g296077296086_)))))
                              (declare (not safe))
                              (foldr2 __tmp301461 '() _L296058_ _L296060_)))))
                     (declare (not safe))
                     (cons __tmp301467 __tmp301460)))
                 _arity295948296052_
                 _prim295949296055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop295942295990_
                                         _target295939295984_
                                         '()
                                         '()))
                                      (_g295932295967_ _g295933295971_)))))
                            (_g295932295967_ _g295933295971_))))
                    (_g295932295967_ _g295933295971_)))))
        (_g295931296095_ _$stx295928_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx296101_)
      (let* ((_g296105296140_
              (lambda (_g296106296136_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296106296136_))))
             (_g296104296268_
              (lambda (_g296106296144_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296106296144_))
                    (let ((_e296111296147_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296106296144_))))
                      (let ((_hd296110296151_
                             (let ()
                               (declare (not safe))
                               (##car _e296111296147_)))
                            (_tl296109296154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296111296147_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296109296154_))
                            (let ((_g301470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296109296154_
                                      '0))))
                              (begin
                                (let ((_g301471_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g301470_)
                                             (##vector-length _g301470_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g301471_ 2)))
                                      (error "Context expects 2 values"
                                             _g301471_)))
                                (let ((_target296112296157_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301470_ 0)))
                                      (_tl296114296160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g301470_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296114296160_))
                                      (letrec ((_loop296115296163_
                                                (lambda (_hd296113296167_
                                                         _arity296119296170_
                                                         _prim296120296172_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296113296167_))
                                                      (let ((_e296116296175_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296113296167_))))
                (let ((_lp-hd296117296179_
                       (let () (declare (not safe)) (##car _e296116296175_)))
                      (_lp-tl296118296182_
                       (let () (declare (not safe)) (##cdr _e296116296175_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296117296179_))
                      (let ((_e296125296185_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296117296179_))))
                        (let ((_hd296124296189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296125296185_)))
                              (_tl296123296192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296125296185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl296123296192_))
                              (let ((_g301480_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl296123296192_
                                        '0))))
                                (begin
                                  (let ((_g301481_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g301480_)
                                               (##vector-length _g301480_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g301481_ 2)))
                                        (error "Context expects 2 values"
                                               _g301481_)))
                                  (let ((_target296126296195_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301480_ 0)))
                                        (_tl296128296198_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g301480_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl296128296198_))
                                        (letrec ((_loop296129296201_
                                                  (lambda (_hd296127296205_
                                                           _arity296133296208_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd296127296205_))
                                                        (let ((_e296130296211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd296127296205_))))
                  (let ((_lp-hd296131296215_
                         (let () (declare (not safe)) (##car _e296130296211_)))
                        (_lp-tl296132296218_
                         (let ()
                           (declare (not safe))
                           (##cdr _e296130296211_))))
                    (_loop296129296201_
                     _lp-tl296132296218_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd296131296215_ _arity296133296208_)))))
                (let ((_arity296134296221_ (reverse _arity296133296208_)))
                  (_loop296115296163_
                   _lp-tl296118296182_
                   (let ()
                     (declare (not safe))
                     (cons _arity296134296221_ _arity296119296170_))
                   (let ()
                     (declare (not safe))
                     (cons _hd296124296189_ _prim296120296172_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop296129296201_
                                           _target296126296195_
                                           '()))
                                        (_g296105296140_ _g296106296144_)))))
                              (_g296105296140_ _g296106296144_))))
                      (_g296105296140_ _g296106296144_))))
              (let ((_arity296121296225_ (reverse _arity296119296170_))
                    (_prim296122296228_ (reverse _prim296120296172_)))
                ((lambda (_L296231_ _L296233_)
                   (let ((__tmp301479
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp301472
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L296231_
                               _L296233_))
                            (let ((__tmp301473
                                   (lambda (_g296248296254_
                                            _g296249296257_
                                            _g296250296259_)
                                     (let ((__tmp301474
                                            (let ((__tmp301478
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp301475
                                                   (let ((__tmp301476
                                                          (let ((__tmp301477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g296251296262_ _g296252296265_)
                           (let ()
                             (declare (not safe))
                             (cons _g296251296262_ _g296252296265_)))))
                    (declare (not safe))
                    (foldr1 __tmp301477 '() _g296248296254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g296249296257_
                                                           __tmp301476))))
                                              (declare (not safe))
                                              (cons __tmp301478 __tmp301475))))
                                       (declare (not safe))
                                       (cons __tmp301474 _g296250296259_)))))
                              (declare (not safe))
                              (foldr2 __tmp301473 '() _L296231_ _L296233_)))))
                     (declare (not safe))
                     (cons __tmp301479 __tmp301472)))
                 _arity296121296225_
                 _prim296122296228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296115296163_
                                         _target296112296157_
                                         '()
                                         '()))
                                      (_g296105296140_ _g296106296144_)))))
                            (_g296105296140_ _g296106296144_))))
                    (_g296105296140_ _g296106296144_)))))
        (_g296104296268_ _$stx296101_)))))
