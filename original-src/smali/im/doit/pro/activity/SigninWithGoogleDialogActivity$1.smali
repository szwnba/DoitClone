.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;
.super Ljava/lang/Object;
.source "SigninWithGoogleDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 72
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$3(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$2(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 74
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$4(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    .line 75
    return-void
.end method
