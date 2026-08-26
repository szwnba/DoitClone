.class Lim/doit/pro/activity/AddContactActivity$1;
.super Ljava/lang/Object;
.source "AddContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AddContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AddContactActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AddContactActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AddContactActivity$1;->this$0:Lim/doit/pro/activity/AddContactActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity$1;->this$0:Lim/doit/pro/activity/AddContactActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/AddContactActivity;->finish()V

    .line 81
    return-void
.end method
