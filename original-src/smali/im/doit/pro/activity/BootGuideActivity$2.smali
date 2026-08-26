.class Lim/doit/pro/activity/BootGuideActivity$2;
.super Ljava/lang/Object;
.source "BootGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/BootGuideActivity;->initViewContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BootGuideActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/BootGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/BootGuideActivity$2;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$2;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$1(Lim/doit/pro/activity/BootGuideActivity;)I

    move-result v0

    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity$2;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v1}, Lim/doit/pro/activity/BootGuideActivity;->access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity$2;->this$0:Lim/doit/pro/activity/BootGuideActivity;

    invoke-static {v0}, Lim/doit/pro/activity/BootGuideActivity;->access$3(Lim/doit/pro/activity/BootGuideActivity;)V

    .line 82
    :cond_0
    return-void
.end method
