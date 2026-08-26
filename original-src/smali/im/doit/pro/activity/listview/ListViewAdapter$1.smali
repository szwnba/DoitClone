.class Lim/doit/pro/activity/listview/ListViewAdapter$1;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$1;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 235
    return-void
.end method
