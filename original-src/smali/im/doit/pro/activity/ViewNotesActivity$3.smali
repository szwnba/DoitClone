.class Lim/doit/pro/activity/ViewNotesActivity$3;
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
    iput-object p1, p0, Lim/doit/pro/activity/ViewNotesActivity$3;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity$3;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ViewNotesActivity;->access$0(Lim/doit/pro/activity/ViewNotesActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/ViewNotesActivity;->access$1(Lim/doit/pro/activity/ViewNotesActivity;I)V

    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity$3;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ViewNotesActivity;->access$2(Lim/doit/pro/activity/ViewNotesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity$3;->this$0:Lim/doit/pro/activity/ViewNotesActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ViewNotesActivity;->access$0(Lim/doit/pro/activity/ViewNotesActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 120
    return-void
.end method
