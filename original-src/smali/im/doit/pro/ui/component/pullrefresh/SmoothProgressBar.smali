.class public Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const v0, 0x7f0100e2

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 37
    .local v13, "res":Landroid/content/res/Resources;
    sget-object v19, Lim/doit/pro/v4/R$styleable;->SmoothProgressBar:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 40
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x1

    const v20, 0x7f0800b1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 41
    .local v7, "color":I
    const/16 v19, 0x4

    const v20, 0x7f0a0002

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 42
    .local v15, "sectionsCount":I
    const/16 v19, 0x3

    const v20, 0x7f09002d

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 43
    .local v16, "separatorLength":I
    const/16 v19, 0x2

    const v20, 0x7f09002e

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 44
    .local v18, "width":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 45
    .local v17, "strSpeed":Ljava/lang/String;
    const/16 v19, 0x6

    const v20, 0x7f0a0003

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 46
    .local v10, "iInterpolator":I
    const/16 v19, 0x7

    const v20, 0x7f070008

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 47
    .local v14, "reversed":Z
    const/16 v19, 0x8

    const v20, 0x7f070009

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 48
    .local v12, "mirrorMode":Z
    const/16 v19, 0x9

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 49
    .local v9, "colorsId":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    packed-switch v10, :pswitch_data_0

    .line 65
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 68
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    const/4 v8, 0x0

    .line 70
    .local v8, "colors":[I
    if-eqz v9, :cond_0

    .line 71
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 74
    :cond_0
    new-instance v19, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v19

    .line 76
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->sectionsCount(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v19

    .line 77
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->separatorLength(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v19

    .line 78
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->width(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v19

    .line 79
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->reversed(Z)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v19

    .line 80
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mirrorMode(Z)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    move-result-object v6

    .line 82
    .local v6, "builder":Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    if-eqz v17, :cond_1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->speed(F)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    .line 83
    :cond_1
    if-eqz v8, :cond_2

    array-length v0, v8

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 84
    invoke-virtual {v6, v8}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->colors([I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    .line 88
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->build()Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 55
    .end local v6    # "builder":Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .end local v8    # "colors":[I
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_0
    new-instance v11, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 56
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 58
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 59
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 61
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 62
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 86
    .restart local v6    # "builder":Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .restart local v8    # "colors":[I
    :cond_2
    invoke-virtual {v6, v7}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->color(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
