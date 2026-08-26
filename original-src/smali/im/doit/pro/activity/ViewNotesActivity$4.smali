.class Lim/doit/pro/activity/ViewNotesActivity$4;
.super Ljava/lang/Object;
.source "ViewNotesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ViewNotesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ViewNotesActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ViewNotesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ViewNotesActivity$4;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity$4;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ViewNotesActivity;->access$3(Lim/doit/pro/activity/ViewNotesActivity;)Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/ViewNotesActivity$4;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ViewNotesActivity;->access$0(Lim/doit/pro/activity/ViewNotesActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 128
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/ViewNoteFragment;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Lim/doit/pro/activity/ViewNoteFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lim/doit/pro/activity/ViewNoteFragment;->reload()V

    .line 131
    :cond_0
    return-void
.end method
