.class public Lim/doit/pro/ui/component/LabelTextView;
.super Landroid/widget/RelativeLayout;
.source "LabelTextView.java"


# instance fields
.field private contentView:Landroid/widget/TextView;

.field private labelView:Landroid/widget/TextView;

.field private mClickListener:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private mContentText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLabelText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelTextView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelTextView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelTextView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelTextView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelTextView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/LabelTextView;)Lim/doit/pro/activity/listener/OnLayoutClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->mClickListener:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelTextView;->mContext:Landroid/content/Context;

    .line 89
    iget-object v1, p0, Lim/doit/pro/ui/component/LabelTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    const v2, 0x7f03007c

    .line 89
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 92
    const/4 v1, -0x1

    .line 93
    const/4 v2, -0x2

    .line 91
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const v1, 0x7f09004b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setMinimumHeight(I)V

    .line 96
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setDescendantFocusability(I)V

    .line 98
    const v1, 0x7f020178

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setBackgroundResource(I)V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelTextView;->initView()V

    .line 100
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelTextView;->setViewContent()V

    .line 101
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelTextView;->registerListner()V

    .line 102
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LabelTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    sget-object v2, Lim/doit/pro/v4/R$styleable;->TextViewWithLabel:[I

    .line 74
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/LabelTextView;->mLabelText:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    iput-object v1, p0, Lim/doit/pro/ui/component/LabelTextView;->mContentText:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->labelView:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    .line 107
    return-void
.end method

.method private registerListner()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->setClickable(Z)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->setFocusable(Z)V

    .line 117
    new-instance v0, Lim/doit/pro/ui/component/LabelTextView$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/LabelTextView$1;-><init>(Lim/doit/pro/ui/component/LabelTextView;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelTextView;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelTextView;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelTextView;->mClickListener:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 60
    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public setTextColorsResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelTextView;->contentView:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColors(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 56
    return-void
.end method
