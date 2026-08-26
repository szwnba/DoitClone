.class public Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColors:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 240
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0800b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mColors:[I

    .line 241
    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 242
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 244
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 245
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeWidth:I

    .line 246
    return-void
.end method


# virtual methods
.method public build()Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;
    .locals 10

    .prologue
    .line 232
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSectionsCount:I

    iget v3, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mColors:[I

    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeWidth:I

    iget v6, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSpeed:F

    iget-boolean v7, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mReversed:Z

    iget-boolean v8, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IIFZZLim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)V

    .line 233
    .local v0, "ret":Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;
    return-object v0
.end method

.method public color(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mColors:[I

    .line 270
    return-object p0
.end method

.method public colors([I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 274
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mColors:[I

    .line 277
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    return-object p0
.end method

.method public mirrorMode(Z)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 299
    return-object p0
.end method

.method public reversed(Z)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 294
    return-object p0
.end method

.method public sectionsCount(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 256
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 258
    return-object p0
.end method

.method public separatorLength(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 262
    if-gez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 265
    return-object p0
.end method

.method public speed(F)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 287
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 289
    return-object p0
.end method

.method public width(I)Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 281
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;->mStrokeWidth:I

    .line 283
    return-object p0
.end method
