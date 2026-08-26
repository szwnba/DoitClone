.class Lim/doit/pro/activity/listview/TagFilterViewHolder$1;
.super Ljava/lang/Object;
.source "TagFilterViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/TagFilterViewHolder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/TagFilterViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/TagFilterViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TagFilterViewHolder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TagFilterViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->access$0(Lim/doit/pro/activity/listview/TagFilterViewHolder;)Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/listview/TagFilterViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TagFilterViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/listview/TagFilterViewHolder;->access$0(Lim/doit/pro/activity/listview/TagFilterViewHolder;)Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/TagFilterViewHolder$OnDeleteClickListener;->deleteTagFitler()V

    .line 39
    :cond_0
    return-void
.end method
