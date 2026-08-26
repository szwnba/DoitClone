.class Lim/doit/pro/activity/listview/EvernoteListViewAdapter$3;
.super Ljava/lang/Object;
.source "EvernoteListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/EvernoteListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$3;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$3;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    invoke-static {v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter;->access$2(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;)V

    .line 153
    return-void
.end method
