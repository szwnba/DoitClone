.class public Lim/doit/pro/ui/component/DRoundedAvatarView;
.super Landroid/widget/FrameLayout;
.source "DRoundedAvatarView.java"


# instance fields
.field private borderColor:I

.field private borderView:Lim/doit/pro/ui/component/DRoundedImageView;

.field private mAvatarTextSize:F

.field private mContext:Landroid/content/Context;

.field private mMask:Z

.field private nameColor:I

.field private senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

.field private senderNameTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f080049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    .line 30
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DRoundedAvatarView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f080049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    .line 35
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DRoundedAvatarView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const v0, 0x7f080049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    .line 41
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DRoundedAvatarView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mContext:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mContext:Landroid/content/Context;

    const v1, 0x7f030099

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->initView()V

    .line 123
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    sget-object v2, Lim/doit/pro/v4/R$styleable;->DAvatar:[I

    .line 97
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const v1, 0x7f090044

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    .line 101
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 100
    iput v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mAvatarTextSize:F

    .line 106
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const v1, 0x7f08004a

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 107
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderColor:I

    .line 111
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const v1, 0x7f080049

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 112
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    .line 115
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    .line 127
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameColor()V

    .line 129
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameTextSize()V

    .line 130
    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedImageView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderView:Lim/doit/pro/ui/component/DRoundedImageView;

    .line 131
    return-void
.end method

.method private setNameColor()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    iget v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_0
    return-void
.end method

.method private setNameTextSize()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mAvatarTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 136
    iget v2, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mAvatarTextSize:F

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "avatar"    # Landroid/graphics/Bitmap;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 52
    if-eqz p1, :cond_1

    .line 53
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderNameTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "resColor"    # I

    .prologue
    .line 68
    iput p1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderColor:I

    .line 69
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderView:Lim/doit/pro/ui/component/DRoundedImageView;

    iget v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderColor:I

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DRoundedImageView;->setBorderColor(I)V

    .line 70
    return-void
.end method

.method public setMask(Z)V
    .locals 2
    .param p1, "mask"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    .line 47
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->senderAvatarIV:Lim/doit/pro/ui/component/DRoundedBitmapImageView;

    iget-boolean v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->setMask(Z)V

    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->borderView:Lim/doit/pro/ui/component/DRoundedImageView;

    iget-boolean v1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mMask:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DRoundedImageView;->setMask(Z)V

    .line 49
    return-void
.end method

.method public setNameColor(I)V
    .locals 0
    .param p1, "resColor"    # I

    .prologue
    .line 73
    iput p1, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->nameColor:I

    .line 74
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameColor()V

    .line 75
    return-void
.end method

.method public setNameTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    int-to-float v0, p1

    iput v0, p0, Lim/doit/pro/ui/component/DRoundedAvatarView;->mAvatarTextSize:F

    .line 92
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameTextSize()V

    .line 93
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 84
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 88
    return-void
.end method
