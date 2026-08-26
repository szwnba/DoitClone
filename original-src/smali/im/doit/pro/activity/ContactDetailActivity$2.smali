.class Lim/doit/pro/activity/ContactDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$2;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$2;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity;->access$0(Lim/doit/pro/activity/ContactDetailActivity;)Lim/doit/pro/model/Contact;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Contact;->setName(Ljava/lang/String;)V

    .line 134
    return-void
.end method
