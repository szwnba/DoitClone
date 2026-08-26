.class public Lim/doit/pro/ui/component/LabelArrowButton;
.super Landroid/widget/RelativeLayout;
.source "LabelArrowButton.java"


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
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelArrowButton;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelArrowButton;->initAttrs(Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelArrowButton;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelArrowButton;->initAttrs(Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelArrowButton;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/LabelArrowButton;)Lim/doit/pro/activity/listener/OnLayoutClickListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mClickListener:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    const v2, 0x7f03007a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    const/4 v1, -0x1

    .line 85
    const/4 v2, -0x2

    .line 83
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 87
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const v1, 0x7f09004b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimensionPixelSize(I)I

    move-result v1

    .line 86
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setMinimumHeight(I)V

    .line 88
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setDescendantFocusability(I)V

    .line 90
    const v1, 0x7f020178

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setBackgroundResource(I)V

    .line 91
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelArrowButton;->initView()V

    .line 92
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelArrowButton;->setViewContent()V

    .line 93
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelArrowButton;->registerListner()V

    .line 94
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LabelArrowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    sget-object v2, Lim/doit/pro/v4/R$styleable;->TextViewWithLabel:[I

    .line 66
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mLabelText:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    iput-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mContentText:Ljava/lang/String;

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->labelView:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->contentView:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method private registerListner()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->setFocusable(Z)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->setClickable(Z)V

    .line 109
    new-instance v0, Lim/doit/pro/ui/component/LabelArrowButton$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/LabelArrowButton$1;-><init>(Lim/doit/pro/ui/component/LabelArrowButton;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->contentView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method


# virtual methods
.method public setLabel(I)V
    .locals 1
    .param p1, "label"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelArrowButton;->mClickListener:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->contentView:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    return-void
.end method

.method public setTextColorsResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelArrowButton;->contentView:Landroid/widget/TextView;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColors(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 58
    return-void
.end method
