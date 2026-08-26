.class public Lim/doit/pro/ui/component/LinearLayoutForListView;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutForListView.java"


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 26
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 32
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    return-void
.end method


# virtual methods
.method public bindLinearLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    iget-object v3, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 17
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 22
    return-void

    .line 18
    :cond_0
    iget-object v3, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v1, v4, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 19
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0, v2, v1}, Lim/doit/pro/ui/component/LinearLayoutForListView;->addView(Landroid/view/View;I)V

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAdpater()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getOnclickListner()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adpater"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 44
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LinearLayoutForListView;->bindLinearLayout()V

    .line 45
    return-void
.end method

.method public setOnItemClickLinstener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/ui/component/LinearLayoutForListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method
