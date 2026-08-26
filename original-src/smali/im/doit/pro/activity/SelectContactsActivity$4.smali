.class Lim/doit/pro/activity/SelectContactsActivity$4;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$4;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$4;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v0, p2}, Lim/doit/pro/activity/SelectContactsActivity;->access$4(Lim/doit/pro/activity/SelectContactsActivity;Z)V

    .line 328
    return-void
.end method
