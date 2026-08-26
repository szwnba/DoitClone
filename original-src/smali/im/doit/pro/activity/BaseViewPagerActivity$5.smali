.class Lim/doit/pro/activity/BaseViewPagerActivity$5;
.super Ljava/lang/Object;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/BaseViewPagerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseViewPagerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$5;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateGroupbyStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isFold"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$5;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/BaseViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$5;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/BaseViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->updateGroupFoldStatus(Ljava/lang/String;Z)V

    goto :goto_0
.end method
