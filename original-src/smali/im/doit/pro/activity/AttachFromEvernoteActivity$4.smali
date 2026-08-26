.class Lim/doit/pro/activity/AttachFromEvernoteActivity$4;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$4;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$4;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0, p3}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$16(Lim/doit/pro/activity/AttachFromEvernoteActivity;I)V

    .line 390
    return-void
.end method
