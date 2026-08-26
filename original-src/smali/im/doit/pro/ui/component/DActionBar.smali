.class public Lim/doit/pro/ui/component/DActionBar;
.super Landroid/widget/LinearLayout;
.source "DActionBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lim/doit/pro/ui/component/DActionBar;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lim/doit/pro/ui/component/DActionBar;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lim/doit/pro/ui/component/DActionBar;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lim/doit/pro/ui/component/DActionBar;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lim/doit/pro/ui/component/DActionBar;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lim/doit/pro/ui/component/DActionBar;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 37
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mInfoView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    if-lez p1, :cond_0

    .line 47
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DActionBar;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
