.class public final Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
.super Ljava/lang/Object;
.source "ActionBarPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupWizard"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

.field private mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

.field private mViewDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroupToInsertInto:Landroid/view/ViewGroup;

.field private refreshableViewIds:[I

.field private refreshableViews:[Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mActivity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private static insertLayoutIntoViewGroup(Landroid/view/ViewGroup;Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "pullToRefreshLayout"    # Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 130
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 124
    invoke-virtual {p1, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public allChildrenArePullable()Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 54
    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 55
    return-object p0
.end method

.method public insertLayoutInto(Landroid/view/ViewGroup;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    .line 85
    return-object p0
.end method

.method public listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    .prologue
    .line 79
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    .line 80
    return-object p0
.end method

.method public options(Lim/doit/pro/ui/component/pullrefresh/Options;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "options"    # Lim/doit/pro/ui/component/pullrefresh/Options;

    .prologue
    .line 48
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    .line 49
    return-object p0
.end method

.method public setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V
    .locals 6
    .param p1, "pullToRefreshLayout"    # Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .prologue
    .line 89
    .line 90
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mOptions:Lim/doit/pro/ui/component/pullrefresh/Options;

    .line 89
    invoke-virtual {p1, v3, v4}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->createPullToRefreshAttacher(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/Options;)Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    move-result-object v0

    .line 91
    .local v0, "attacher":Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setOnRefreshListener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)V

    .line 93
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->insertLayoutIntoViewGroup(Landroid/view/ViewGroup;Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 97
    :cond_0
    invoke-virtual {p1, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setPullToRefreshAttacher(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V

    .line 100
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    invoke-virtual {p1, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addChildrenAsPullable([I)V

    .line 109
    :goto_0
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 111
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 115
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;>;>;"
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    invoke-virtual {p1, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addChildrenAsPullable([Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addAllChildrenAsPullable()V

    goto :goto_0

    .line 111
    .restart local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;>;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    invoke-virtual {v0, v3, v4}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->useViewDelegate(Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;)V

    goto :goto_1
.end method

.method public varargs theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p1, "viewIds"    # [I

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 61
    return-object p0
.end method

.method public varargs theseChildrenArePullable([Landroid/view/View;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 67
    return-object p0
.end method

.method public useViewDelegate(Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p2, "delegate"    # Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;",
            ")",
            "Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    .line 74
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0
.end method
