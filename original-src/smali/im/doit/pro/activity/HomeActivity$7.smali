.class Lim/doit/pro/activity/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->showGuide(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/HomeActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$7;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity$7;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/HomeActivity;->access$11(Lim/doit/pro/activity/HomeActivity;)V

    .line 733
    return-void
.end method
