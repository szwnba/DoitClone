.class Lim/doit/pro/activity/BaseViewPagerActivity$4;
.super Ljava/lang/Object;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;


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
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$4;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadData()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$4;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/BaseViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 212
    return-void
.end method
