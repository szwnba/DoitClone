.class Lim/doit/pro/activity/ContactDetailActivity$5;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactDetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$5;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 154
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 155
    return-void
.end method
