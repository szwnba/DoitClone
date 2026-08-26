.class Lim/doit/pro/activity/listview/ListViewAdapter$17;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->showSelectTaskContextDialog()V
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$17;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 1378
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$17;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setSelectedItemsTaskContext(Ljava/lang/String;)V

    .line 1379
    return-void
.end method
