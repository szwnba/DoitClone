.class Lim/doit/pro/activity/BaseViewPagerActivity$2;
.super Ljava/lang/Object;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$2;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTagFilter()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$2;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/BaseViewPagerActivity;->access$0(Lim/doit/pro/activity/BaseViewPagerActivity;Lim/doit/pro/ui/model/TagFilter;)V

    .line 197
    return-void
.end method
