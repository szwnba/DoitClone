.class public Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;
.super Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;
.source "DefaultHeaderTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;
    }
.end annotation


# static fields
.field public static final PROGRESS_BAR_STYLE_INSIDE:I = 0x0

.field public static final PROGRESS_BAR_STYLE_OUTSIDE:I = 0x1


# instance fields
.field private mAnimationDuration:J

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressBarHeight:I

.field private mProgressBarStyle:I

.field private mProgressDrawableColor:I

.field private mPullRefreshLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;-><init>()V

    .line 62
    const/4 v1, -0x2

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 64
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getMinimumApiLevel()I

    move-result v0

    .line 68
    .local v0, "min":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This HeaderTransformer is designed to run on SDK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string v3, "+. If using ActionBarSherlock or ActionBarCompat you should use the appropriate provided extra."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    return-void
.end method

.method private applyProgressBarSettings()V
    .locals 6

    .prologue
    .line 365
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 367
    const v4, 0x7f090067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 369
    .local v2, "strokeWidth":I
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    .line 370
    new-instance v4, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v5}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    invoke-virtual {v4, v5}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->color(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v4

    .line 372
    invoke-virtual {v4, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->width(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v4

    .line 373
    invoke-virtual {v4}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->build()Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    move-result-object v4

    .line 369
    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 376
    .local v1, "shape":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 377
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 380
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v3, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    .end local v0    # "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v1    # "shape":Landroid/graphics/drawable/ShapeDrawable;
    .end local v2    # "strokeWidth":I
    :cond_0
    return-void
.end method

.method private applyProgressBarStyle()V
    .locals 4

    .prologue
    const v3, 0x7f0b01a1

    .line 349
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 350
    const/4 v1, -0x1

    iget v2, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 349
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarStyle:I

    packed-switch v1, :pswitch_data_0

    .line 361
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void

    .line 354
    :pswitch_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 357
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAttr"    # I
    .param p2, "styleAttrs"    # [I

    .prologue
    .line 440
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 441
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 442
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 445
    .local v1, "styleResId":I
    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    return-object v2
.end method

.method private setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "headerView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 286
    .line 287
    const v5, 0x7f0100aa

    sget-object v6, Lim/doit/pro/v4/R$styleable;->PullToRefreshHeader:[I

    .line 286
    invoke-static {p1, v5, v6}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 290
    .local v3, "styleAttrs":Landroid/content/res/TypedArray;
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getActionBarSize(Landroid/content/Context;)I

    move-result v5

    .line 291
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 293
    .local v2, "height":I
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 298
    .end local v2    # "height":I
    :cond_0
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 299
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 301
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_1

    .line 302
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 306
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 311
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, "abContext":Landroid/content/Context;
    const/4 v5, 0x2

    .line 314
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getActionBarTitleStyle(Landroid/content/Context;)I

    move-result v6

    .line 313
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 315
    .local v4, "titleTextStyle":I
    if-eqz v4, :cond_2

    .line 316
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 320
    :cond_2
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 321
    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 326
    :cond_3
    const/4 v5, 0x4

    .line 325
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarStyle:I

    .line 328
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 329
    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 334
    :cond_4
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 337
    :cond_5
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 339
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 338
    iput-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 341
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 342
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 345
    :cond_7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    return-void

    .line 300
    .end local v0    # "abContext":Landroid/content/Context;
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v4    # "titleTextStyle":I
    :cond_8
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 385
    const/4 v2, 0x1

    new-array v1, v2, [I

    const v2, 0x10100d4

    aput v2, v1, v3

    .line 388
    .local v1, "android_styleable_ActionBar":[I
    const v2, 0x10102ce

    invoke-static {p1, v2, v1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 392
    .local v0, "abStyle":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 394
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    return-object v2

    .line 393
    :catchall_0
    move-exception v2

    .line 394
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 395
    throw v2
.end method

.method protected getActionBarSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 399
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x10102eb

    aput v2, v0, v3

    .line 400
    .local v0, "attrs":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 402
    .local v1, "values":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 404
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    return v2

    .line 403
    :catchall_0
    move-exception v2

    .line 404
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    throw v2
.end method

.method protected getActionBarTitleStyle(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 409
    const/4 v2, 0x1

    new-array v1, v2, [I

    const v2, 0x10102f8

    aput v2, v1, v3

    .line 412
    .local v1, "android_styleable_ActionBar":[I
    const v2, 0x10102ce

    invoke-static {p1, v2, v1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->obtainStyledAttrsFromThemeAttr(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 416
    .local v0, "abStyle":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 418
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    return v2

    .line 417
    :catchall_0
    move-exception v2

    .line 418
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 419
    throw v2
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method protected getMinimumApiLevel()I
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0xe

    return v0
.end method

.method public hideHeaderView()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 196
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_1

    move v2, v5

    .line 198
    .local v2, "changeVis":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 200
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    .line 202
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 203
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v7, "translationY"

    new-array v8, v10, [F

    .line 204
    const/4 v9, 0x0

    aput v9, v8, v6

    iget-object v9, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v5

    .line 203
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 205
    .local v3, "transAnim":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    move-object v4, v1

    .line 206
    check-cast v4, Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v3, v7, v6

    aput-object v0, v7, v5

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 211
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "transAnim":Landroid/animation/ObjectAnimator;
    :goto_1
    iget-wide v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mAnimationDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 212
    new-instance v4, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;

    invoke-direct {v4, p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;-><init>(Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 216
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_0
    return v2

    .end local v2    # "changeVis":Z
    :cond_1
    move v2, v6

    .line 196
    goto :goto_0

    .line 209
    .restart local v2    # "changeVis":Z
    :cond_2
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 205
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 209
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public onPulled(F)V
    .locals 3
    .param p1, "percentagePulled"    # F

    .prologue
    .line 136
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 139
    .local v0, "progress":F
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setProgress(I)V

    .line 141
    .end local v0    # "progress":F
    :cond_0
    return-void
.end method

.method public onRefreshMinimized()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 170
    :cond_0
    return-void

    .line 168
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onRefreshStarted()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setIndeterminate(Z)V

    .line 152
    :cond_1
    return-void
.end method

.method public onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setProgress(I)V

    .line 162
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setProgress(I)V

    .line 118
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setIndeterminate(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/Compat;->setAlpha(Landroid/view/View;F)V

    .line 132
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "headerView"    # Landroid/view/View;

    .prologue
    .line 77
    iput-object p2, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    .line 80
    const v0, 0x7f0b01a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderProgressBar:Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;

    .line 81
    const v0, 0x7f0b01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0b01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    .line 85
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 86
    const v0, 0x7f0c0248

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 87
    const v0, 0x7f0c0247

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 89
    iput-wide v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mAnimationDuration:J

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 92
    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 96
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->setupViewsFromStyles(Landroid/app/Activity;Landroid/view/View;)V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 101
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->applyProgressBarSettings()V

    .line 104
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->onReset()V

    .line 105
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 228
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    if-eq p1, v0, :cond_0

    .line 229
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressDrawableColor:I

    .line 230
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->applyProgressBarSettings()V

    .line 232
    :cond_0
    return-void
.end method

.method public setProgressBarHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 249
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    if-eq v0, p1, :cond_0

    .line 250
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarHeight:I

    .line 251
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 253
    :cond_0
    return-void
.end method

.method public setProgressBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 239
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarStyle:I

    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mProgressBarStyle:I

    .line 241
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->applyProgressBarStyle()V

    .line 243
    :cond_0
    return-void
.end method

.method public setPullText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pullText"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mPullRefreshLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public setRefreshingText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 274
    return-void
.end method

.method public setReleaseText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseText"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 283
    return-void
.end method

.method public showHeaderView()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 180
    .local v2, "changeVis":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 181
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 182
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 183
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    const-string v7, "translationY"

    new-array v8, v10, [F

    .line 184
    iget-object v9, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v5

    const/4 v9, 0x0

    aput v9, v8, v4

    .line 183
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 185
    .local v3, "transAnim":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mHeaderView:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 186
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    iget-wide v4, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->mAnimationDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 188
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 191
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "animSet":Landroid/animation/AnimatorSet;
    .end local v3    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return v2

    .end local v2    # "changeVis":Z
    :cond_1
    move v2, v5

    .line 178
    goto :goto_0

    .line 185
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
