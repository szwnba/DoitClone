.class Lim/doit/pro/activity/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SearchActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SearchActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$7;->this$0:Lim/doit/pro/activity/SearchActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reloadData()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$7;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$9(Lim/doit/pro/activity/SearchActivity;)V

    .line 181
    return-void
.end method
