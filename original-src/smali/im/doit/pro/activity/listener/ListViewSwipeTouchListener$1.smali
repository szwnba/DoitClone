.class Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;
.super Ljava/lang/Object;
.source "ListViewSwipeTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v0, 0x1

    .line 84
    iget-object v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    if-eq p2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    invoke-static {v0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->access$0(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    invoke-static {v0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->access$1(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

    move-result-object v0

    invoke-interface {v0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;->onListScrolled()V

    .line 88
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
