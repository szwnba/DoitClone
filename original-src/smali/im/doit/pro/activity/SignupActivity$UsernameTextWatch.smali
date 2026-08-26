.class Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsernameTextWatch"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SignupActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SignupActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SignupActivity;Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;-><init>(Lim/doit/pro/activity/SignupActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 165
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SignupActivity;->access$0(Lim/doit/pro/activity/SignupActivity;)V

    .line 166
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 155
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/activity/SignupActivity;->access$1(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->usernameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "usernameAfterFilter":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/activity/SignupActivity;->access$1(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/activity/SignupActivity;->access$1(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public usernameFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v2, "[^a-zA-z_0-9]"

    .line 177
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 178
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 179
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
