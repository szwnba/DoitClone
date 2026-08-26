.class Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;
.super Landroid/widget/LinearLayout;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public createdView:Landroid/widget/TextView;

.field public notebookNameView:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter;

    .line 599
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 600
    const v0, 0x7f030082

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 601
    const v0, 0x7f0b0177

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 602
    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->createdView:Landroid/widget/TextView;

    .line 603
    const v0, 0x7f0b017a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$ListAdapter$ViewHolder;->notebookNameView:Landroid/widget/TextView;

    .line 604
    return-void
.end method
