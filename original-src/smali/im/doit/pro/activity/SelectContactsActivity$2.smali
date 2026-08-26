.class Lim/doit/pro/activity/SelectContactsActivity$2;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SelectContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SelectContactsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$2;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$2;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/SelectContactsActivity;->finish()V

    .line 296
    return-void
.end method
