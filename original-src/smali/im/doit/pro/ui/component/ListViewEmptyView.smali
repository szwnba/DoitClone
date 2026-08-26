.class public Lim/doit/pro/ui/component/ListViewEmptyView;
.super Landroid/widget/LinearLayout;
.source "ListViewEmptyView.java"


# instance fields
.field private mBodyText:Ljava/lang/String;

.field private mBodyView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mTitleText:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/ListViewEmptyView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/ListViewEmptyView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/ListViewEmptyView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/ListViewEmptyView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/ListViewEmptyView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iput-object p1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mContext:Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030081

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 65
    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 66
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setOrientation(I)V

    .line 68
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->initView()V

    .line 69
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setViewContent()V

    .line 70
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lim/doit/pro/v4/R$styleable;->ListViewEmptyView:[I

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleText:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyText:Ljava/lang/String;

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ListViewEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleView:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/ListViewEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyView:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method private setBodyViewContent()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyText:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitleViewContent()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleText:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViewContent()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setTitleViewContent()V

    .line 79
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setBodyViewContent()V

    .line 80
    return-void
.end method


# virtual methods
.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mBodyText:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setBodyViewContent()V

    .line 46
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/ListViewEmptyView;->mTitleText:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setTitleViewContent()V

    .line 41
    return-void
.end method
